import 'package:flutter/foundation.dart';
import 'package:mobile_wallet/model/wallet.dart';
import 'package:mobile_wallet/service/ffi_wallet_service.dart';
import 'package:mobile_wallet/service/grpc_service.dart';
import 'package:mobile_wallet/service/secured_storage_service.dart';
import 'package:mobile_wallet/service/shared_preference_service.dart';

class WalletService {
  final SharedPreferenceService _sharedPreferenceService;
  final SecuredStorageService _securedStorageService;
  final GrpcService _grpcService;

  WalletService(this._sharedPreferenceService, this._securedStorageService,
      this._grpcService);

  Future<int> getWalletCount() async {
    return await _sharedPreferenceService.getIntValue("wallet-count") ?? 0;
  }

  Future<int> getCurrentWalletNumber() async {
    return await _sharedPreferenceService
            .getIntValue("current-wallet-number") ??
        1;
  }

  Future<void> setCurrentWalletNumber(int newIndex) async {
    if (await getWalletCount() < newIndex) {
      newIndex = 1;
    }
    return await _sharedPreferenceService.setIntValue(
        "current-wallet-number", newIndex);
  }

  Future<Wallet> getWallet(int walletNumber,
      {bool getHexSeed = false,
      bool getXmsspk = false,
      bool internal = false}) async {
    String? name = await _securedStorageService.getValue("name$walletNumber");
    String? address =
        await _securedStorageService.getValue("address$walletNumber");
    String? hexSeed = getHexSeed
        ? await _securedStorageService.getValue("hexSeed$walletNumber")
        : "";
    String? xmsspk = getXmsspk
        ? await _securedStorageService.getValue("xmsspk$walletNumber")
        : "";
    String? height =
        await _securedStorageService.getValue("height$walletNumber");
    if (name == null ||
        address == null ||
        hexSeed == null ||
        xmsspk == null ||
        height == null) {
      if (!internal) {
        await deleteWallet(walletNumber, internal: true);
        throw Exception("Wallet data corrupt, cleared wallet data");
      }
    }
    return Wallet(walletNumber, name ?? "", address ?? "", hexSeed ?? "",
        xmsspk ?? "", height != null ? int.parse(height) : 0);
  }

  Future<List<Wallet>> getWallets(
      {bool getHexSeed = false,
      bool getXmsspk = false,
      bool internal = false}) async {
    int walletCount =
        (await _sharedPreferenceService.getIntValue("wallet-count") ?? 1);
    List<Wallet> wallets = <Wallet>[];
    for (int i = 0; i < walletCount; i++) {
      wallets.add(await getWallet(i + 1,
          getHexSeed: getHexSeed, getXmsspk: getXmsspk, internal: internal));
    }
    return wallets;
  }

  Future<void> deleteWallet(int walletNumber, {bool internal = false}) async {
    List<Wallet> wallets =
        await getWallets(getHexSeed: true, getXmsspk: true, internal: internal);
    wallets.removeAt(walletNumber - 1);
    var totalWalletCount = wallets.length;
    for (int i = 0; i < totalWalletCount; i++) {
      Wallet wallet = wallets[i];
      int walletCount = i + 1;
      saveWalletValues(walletCount, wallet.name, wallet.hexSeed, wallet.address,
          wallet.xmsspk, wallet.height);
    }
    int danglingCounter = totalWalletCount + 1;
    _securedStorageService.deleteValue("name$danglingCounter");
    _securedStorageService.deleteValue("hexSeed$danglingCounter");
    _securedStorageService.deleteValue("address$danglingCounter");
    _securedStorageService.deleteValue("xmsspk$danglingCounter");
    _securedStorageService.deleteValue("height$danglingCounter");
    _sharedPreferenceService.setIntValue("wallet-count", totalWalletCount);
  }

  Future<Wallet> createWallet(String name,
      {int? treeHeight,
      int? hashFunction,
      String? hexSeed,
      String? mnemonic}) async {
    String? createdWalletResult;
    if (treeHeight != null && hashFunction != null) {
      createdWalletResult = await compute<List<int>, String>(
          ffiCreateWalletFromParams, [treeHeight, hashFunction]);
    } else if (hexSeed != null) {
      createdWalletResult =
          await compute<String, String>(ffiOpenWalletWithHexSeed, hexSeed);
    } else if (mnemonic != null) {
      createdWalletResult =
          await compute<String, String>(ffiOpenWalletWithMnemonic, mnemonic);
    }
    if (createdWalletResult == null) {
      throw Exception("Unknown error during creation of wallet");
    }
    return _saveWallet(name, createdWalletResult);
  }

  Future<Wallet> _saveWallet(String name, String createdWalletResult) async {
    int walletNumber =
        (await _sharedPreferenceService.getIntValue("wallet-count") ?? 0) + 1;
    List<String> splitted = createdWalletResult.split("||");
    String hexSeed = splitted[0];
    String address = splitted[1];
    String xmsspk = splitted[2];
    int height = int.parse(splitted[3]);
    saveWalletValues(walletNumber, name, hexSeed, address, xmsspk, height);
    _sharedPreferenceService.setIntValue("wallet-count", walletNumber);
    return Wallet(walletNumber, name, address, hexSeed, xmsspk, height);
  }

  void saveWalletValues(int walletNumber, String name, String hexSeed,
      String address, String xmsspk, int height) {
    _securedStorageService.setValue("name$walletNumber", name);
    _securedStorageService.setValue("hexSeed$walletNumber", hexSeed);
    _securedStorageService.setValue("address$walletNumber", address);
    _securedStorageService.setValue("xmsspk$walletNumber", xmsspk);
    _securedStorageService.setValue("height$walletNumber", height.toString());
  }

  Future<String> getMnemonic(String hexSeed) async {
    return await compute<String, String>(ffiGetMnemonic, hexSeed);
  }

  Future<bool> isAddressValid(String address) async {
    return await compute<String, bool>(
        ffiIsAddressValid,
        address.startsWith("Q")
            ? address.substring(1, address.length)
            : address);
  }

  Future<void> sendTransaction(int walletNumber, int amount,
      String receiverWalletAddress, int otsIndex, int fee) async {
    Wallet wallet =
        await getWallet(walletNumber, getHexSeed: true, getXmsspk: true);
    receiverWalletAddress = receiverWalletAddress.startsWith("Q")
        ? receiverWalletAddress.substring(1, receiverWalletAddress.length)
        : receiverWalletAddress;
    String transactionData = await compute<List<Object>, String>(
        ffiCreateTransaction,
        [wallet.hexSeed, amount, receiverWalletAddress, otsIndex, fee]);
    await _grpcService.sendTransaction(wallet.address, wallet.xmsspk, amount,
        receiverWalletAddress, otsIndex, fee, transactionData);
  }

  updateWalletName(int walletNumber, String name) {
    _securedStorageService.setValue("name$walletNumber", name);
  }
}
