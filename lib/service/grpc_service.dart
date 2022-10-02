import 'package:fixnum/fixnum.dart';
import 'package:grpc/grpc.dart';
import 'package:mobile_wallet/model/app_settings.dart';
import 'package:mobile_wallet/model/extended_wallet_data.dart';
import 'package:mobile_wallet/service/settings_service.dart';
import 'package:mobile_wallet/ui/util/string_util.dart';

import 'proto/qrl.pbgrpc.dart';

class GrpcService {
  final SettingsService _settingsService;

  GrpcService(this._settingsService);

  Future<ExtendedWalletData> getExtendedWalletData(String walletAddress) async {
    List<int> addressBytes = StringUtil.toBytes(walletAddress);
    ClientChannel clientChannel = await getClientChannel();
    try {
      PublicAPIClient publicAPIClient = PublicAPIClient(clientChannel);
      GetAddressStateResp getAddressStateResp = await publicAPIClient
          .getAddressState(GetAddressStateReq(address: addressBytes));
      var state = getAddressStateResp.state;
      List<TransactionData> transactions =
          await _getTransactions(walletAddress, state, publicAPIClient);
      int unconfirmedSendCounter = 0;
      for (TransactionData transactionData in transactions) {
        if (transactionData.unconfirmed) {
          if (!transactionData.incoming) {
            unconfirmedSendCounter = unconfirmedSendCounter + 1;
          }
        } else {
          break;
        }
      }
      return ExtendedWalletData(state.balance.toInt(), transactions,
          _getOtsIndex(state) + unconfirmedSendCounter);
    } finally {
      clientChannel.shutdown();
    }
  }

  int _getOtsIndex(AddressState state) {
    List<List<int>> otsBitfield = state.otsBitfield;
    for (int i = 0; i < otsBitfield.length; i++) {
      int bitfieldByte = otsBitfield[i][0];
      if (bitfieldByte != -1) {
        String bitfieldString = bitfieldByte.toRadixString(2).padLeft(8, "0");
        String reversedBitfieldString = StringUtil.reverse(bitfieldString);
        for (int j = 0; j < reversedBitfieldString.length; j++) {
          if (reversedBitfieldString[j] == "0") {
            return (8 * i) + j;
          }
        }
      }
    }
    return -1;
  }

  Future<List<TransactionData>> _getTransactions(String walletAddress,
      AddressState state, PublicAPIClient publicAPIClient) async {
    List<TransactionData> transactions = <TransactionData>[];
    await _addUnconfirmedTransactions(
        publicAPIClient, walletAddress, transactions);
    await _addTransactions(state, publicAPIClient, walletAddress, transactions);
    return transactions;
  }

  Future<void> _addUnconfirmedTransactions(PublicAPIClient publicAPIClient,
      String walletAddress, List<TransactionData> transactions,
      {int offset = 0}) async {
    int batchQuantity = 5;
    GetLatestDataResp getLatestDataResp = await publicAPIClient.getLatestData(
        GetLatestDataReq(
            filter: GetLatestDataReq_Filter.TRANSACTIONS_UNCONFIRMED,
            quantity: batchQuantity,
            offset: offset));
    int quantityFound = getLatestDataResp.transactionsUnconfirmed.length;
    if (getLatestDataResp.transactionsUnconfirmed.isNotEmpty) {
      for (TransactionExtended transactionExtended
          in getLatestDataResp.transactionsUnconfirmed) {
        String senderAddress = transactionExtended.addrFrom
            .map((e) => e.toRadixString(16).padLeft(2, '0'))
            .join();
        bool incoming = senderAddress != walletAddress;
        Transaction tx = transactionExtended.tx;
        Transaction_Transfer transfer = tx.transfer;
        for (int i = 0; i < transfer.addrsTo.length; i++) {
          String receiverAddress = transfer.addrsTo[i]
              .map((e) => e.toRadixString(16).padLeft(2, '0'))
              .join();
          if (!incoming || receiverAddress == walletAddress) {
            transactions.add(TransactionData(
                tx.transactionHash
                    .map((e) => e.toRadixString(16).padLeft(2, '0'))
                    .join(),
                senderAddress,
                receiverAddress,
                transfer.amounts[i].toInt(),
                DateTime.fromMillisecondsSinceEpoch(
                    transactionExtended.timestampSeconds.toInt() * 1000),
                incoming,
                true));
          }
        }
      }
      if (quantityFound == batchQuantity) {
        await _addUnconfirmedTransactions(
            publicAPIClient, walletAddress, transactions,
            offset: offset + batchQuantity);
      }
    }
  }

  Future<void> _addTransactions(
      AddressState state,
      PublicAPIClient publicAPIClient,
      String walletAddress,
      List<TransactionData> transactions) async {
    List<List<int>> transactionsHashes = state.transactionHashes;
    int totalTransactions = transactionsHashes.length;
    int lastTransactionToGet = 0;
    if (totalTransactions > 10) {
      lastTransactionToGet = totalTransactions - 10;
    }
    for (int i = totalTransactions - 1; i >= lastTransactionToGet; i--) {
      GetObjectResp getObjectResp = await publicAPIClient
          .getObject(GetObjectReq(query: transactionsHashes[i]));
      TransactionExtended transaction = getObjectResp.transaction;
      Transaction tx = transaction.tx;
      if ("transfer" == tx.whichTransactionType().name.toLowerCase()) {
        String transactionHash = tx.transactionHash
            .map((e) => e.toRadixString(16).padLeft(2, '0'))
            .join();
        String senderAddress = transaction.addrFrom
            .map((e) => e.toRadixString(16).padLeft(2, '0'))
            .join();
        bool incoming = senderAddress != walletAddress;
        DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(
            transaction.timestampSeconds.toInt() * 1000);
        for (int j = 0; j < tx.transfer.addrsTo.length; j++) {
          String receiverAddress = tx.transfer.addrsTo[j]
              .map((e) => e.toRadixString(16).padLeft(2, '0'))
              .join();
          if (!incoming || receiverAddress == walletAddress) {
            transactions.add(TransactionData(
                transactionHash,
                senderAddress,
                receiverAddress,
                tx.transfer.amounts[j].toInt(),
                dateTime,
                incoming,
                false));
          }
        }
      }
    }
  }

  Future<void> sendTransaction(
      String senderWalletAddress,
      String xmssPk,
      int amount,
      String receiverWalletAddress,
      int otsIndex,
      int fee,
      String transactionData) async {
    List<int> receiverWalletBytes = StringUtil.toBytes(receiverWalletAddress);
    Int64 int64Amount = Int64(amount);
    Int64 int64Fee = Int64(fee);
    String signature =
        transactionData.substring(0, (transactionData.length - 64));
    List<int> txSignature = StringUtil.toBytes(signature);
    String hash = transactionData.substring(
        (transactionData.length - 64), transactionData.length);
    List<int> txHash = StringUtil.toBytes(hash);
    ClientChannel clientChannel = await getClientChannel();
    try {
      PublicAPIClient publicAPIClient = PublicAPIClient(clientChannel);
      var transferCoinsReq = TransferCoinsReq(
          addressesTo: [receiverWalletBytes],
          amounts: [int64Amount],
          fee: int64Fee,
          xmssPk: StringUtil.toBytes(xmssPk));
      TransferCoinsResp transferCoinsResp =
          await publicAPIClient.transferCoins(transferCoinsReq);
      await publicAPIClient.pushTransaction(PushTransactionReq(
          transactionSigned: Transaction(
              transfer: Transaction_Transfer(
                  addrsTo: [receiverWalletBytes], amounts: [int64Amount]),
              signature: txSignature,
              transactionHash: txHash,
              fee: int64Fee,
              publicKey:
                  transferCoinsResp.extendedTransactionUnsigned.tx.publicKey,
              nonce: Int64(12))));
    } finally {
      clientChannel.shutdown();
    }
  }

  Future<ClientChannel> getClientChannel() async {
    AppSettings appSettings = await _settingsService.getAppSettings();
    ClientChannel clientChannel = ClientChannel(
      appSettings.nodeUrl,
      port: appSettings.port,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );
    return clientChannel;
  }
}
