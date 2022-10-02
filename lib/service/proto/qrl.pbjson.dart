///
//  Generated code. Do not modify.
//  source: qrl.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use emptyDescriptor instead')
const Empty$json = const {
  '1': 'Empty',
};

/// Descriptor for `Empty`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyDescriptor = $convert.base64Decode('CgVFbXB0eQ==');
@$core.Deprecated('Use getNodeStateReqDescriptor instead')
const GetNodeStateReq$json = const {
  '1': 'GetNodeStateReq',
};

/// Descriptor for `GetNodeStateReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getNodeStateReqDescriptor = $convert.base64Decode('Cg9HZXROb2RlU3RhdGVSZXE=');
@$core.Deprecated('Use getNodeStateRespDescriptor instead')
const GetNodeStateResp$json = const {
  '1': 'GetNodeStateResp',
  '2': const [
    const {'1': 'info', '3': 1, '4': 1, '5': 11, '6': '.qrl.NodeInfo', '10': 'info'},
  ],
};

/// Descriptor for `GetNodeStateResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getNodeStateRespDescriptor = $convert.base64Decode('ChBHZXROb2RlU3RhdGVSZXNwEiEKBGluZm8YASABKAsyDS5xcmwuTm9kZUluZm9SBGluZm8=');
@$core.Deprecated('Use getKnownPeersReqDescriptor instead')
const GetKnownPeersReq$json = const {
  '1': 'GetKnownPeersReq',
};

/// Descriptor for `GetKnownPeersReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getKnownPeersReqDescriptor = $convert.base64Decode('ChBHZXRLbm93blBlZXJzUmVx');
@$core.Deprecated('Use getKnownPeersRespDescriptor instead')
const GetKnownPeersResp$json = const {
  '1': 'GetKnownPeersResp',
  '2': const [
    const {'1': 'node_info', '3': 1, '4': 1, '5': 11, '6': '.qrl.NodeInfo', '10': 'nodeInfo'},
    const {'1': 'known_peers', '3': 2, '4': 3, '5': 11, '6': '.qrl.Peer', '10': 'knownPeers'},
  ],
};

/// Descriptor for `GetKnownPeersResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getKnownPeersRespDescriptor = $convert.base64Decode('ChFHZXRLbm93blBlZXJzUmVzcBIqCglub2RlX2luZm8YASABKAsyDS5xcmwuTm9kZUluZm9SCG5vZGVJbmZvEioKC2tub3duX3BlZXJzGAIgAygLMgkucXJsLlBlZXJSCmtub3duUGVlcnM=');
@$core.Deprecated('Use getPeersStatReqDescriptor instead')
const GetPeersStatReq$json = const {
  '1': 'GetPeersStatReq',
};

/// Descriptor for `GetPeersStatReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPeersStatReqDescriptor = $convert.base64Decode('Cg9HZXRQZWVyc1N0YXRSZXE=');
@$core.Deprecated('Use getPeersStatRespDescriptor instead')
const GetPeersStatResp$json = const {
  '1': 'GetPeersStatResp',
  '2': const [
    const {'1': 'peers_stat', '3': 1, '4': 3, '5': 11, '6': '.qrl.PeerStat', '10': 'peersStat'},
  ],
};

/// Descriptor for `GetPeersStatResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPeersStatRespDescriptor = $convert.base64Decode('ChBHZXRQZWVyc1N0YXRSZXNwEiwKCnBlZXJzX3N0YXQYASADKAsyDS5xcmwuUGVlclN0YXRSCXBlZXJzU3RhdA==');
@$core.Deprecated('Use getBlockReqDescriptor instead')
const GetBlockReq$json = const {
  '1': 'GetBlockReq',
  '2': const [
    const {'1': 'index', '3': 1, '4': 1, '5': 4, '9': 0, '10': 'index'},
    const {'1': 'after_hash', '3': 2, '4': 1, '5': 12, '9': 0, '10': 'afterHash'},
  ],
  '8': const [
    const {'1': 'query'},
  ],
};

/// Descriptor for `GetBlockReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBlockReqDescriptor = $convert.base64Decode('CgtHZXRCbG9ja1JlcRIWCgVpbmRleBgBIAEoBEgAUgVpbmRleBIfCgphZnRlcl9oYXNoGAIgASgMSABSCWFmdGVySGFzaEIHCgVxdWVyeQ==');
@$core.Deprecated('Use getBlockRespDescriptor instead')
const GetBlockResp$json = const {
  '1': 'GetBlockResp',
  '2': const [
    const {'1': 'node_info', '3': 1, '4': 1, '5': 11, '6': '.qrl.NodeInfo', '10': 'nodeInfo'},
    const {'1': 'block', '3': 2, '4': 1, '5': 11, '6': '.qrl.Block', '10': 'block'},
  ],
};

/// Descriptor for `GetBlockResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBlockRespDescriptor = $convert.base64Decode('CgxHZXRCbG9ja1Jlc3ASKgoJbm9kZV9pbmZvGAEgASgLMg0ucXJsLk5vZGVJbmZvUghub2RlSW5mbxIgCgVibG9jaxgCIAEoCzIKLnFybC5CbG9ja1IFYmxvY2s=');
@$core.Deprecated('Use getStatsReqDescriptor instead')
const GetStatsReq$json = const {
  '1': 'GetStatsReq',
  '2': const [
    const {'1': 'include_timeseries', '3': 1, '4': 1, '5': 8, '10': 'includeTimeseries'},
  ],
};

/// Descriptor for `GetStatsReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getStatsReqDescriptor = $convert.base64Decode('CgtHZXRTdGF0c1JlcRItChJpbmNsdWRlX3RpbWVzZXJpZXMYASABKAhSEWluY2x1ZGVUaW1lc2VyaWVz');
@$core.Deprecated('Use getStatsRespDescriptor instead')
const GetStatsResp$json = const {
  '1': 'GetStatsResp',
  '2': const [
    const {'1': 'node_info', '3': 1, '4': 1, '5': 11, '6': '.qrl.NodeInfo', '10': 'nodeInfo'},
    const {'1': 'epoch', '3': 2, '4': 1, '5': 4, '10': 'epoch'},
    const {'1': 'uptime_network', '3': 3, '4': 1, '5': 4, '10': 'uptimeNetwork'},
    const {'1': 'block_last_reward', '3': 4, '4': 1, '5': 4, '10': 'blockLastReward'},
    const {'1': 'block_time_mean', '3': 5, '4': 1, '5': 4, '10': 'blockTimeMean'},
    const {'1': 'block_time_sd', '3': 6, '4': 1, '5': 4, '10': 'blockTimeSd'},
    const {'1': 'coins_total_supply', '3': 7, '4': 1, '5': 4, '10': 'coinsTotalSupply'},
    const {'1': 'coins_emitted', '3': 8, '4': 1, '5': 4, '10': 'coinsEmitted'},
    const {'1': 'block_timeseries', '3': 9, '4': 3, '5': 11, '6': '.qrl.BlockDataPoint', '10': 'blockTimeseries'},
  ],
};

/// Descriptor for `GetStatsResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getStatsRespDescriptor = $convert.base64Decode('CgxHZXRTdGF0c1Jlc3ASKgoJbm9kZV9pbmZvGAEgASgLMg0ucXJsLk5vZGVJbmZvUghub2RlSW5mbxIUCgVlcG9jaBgCIAEoBFIFZXBvY2gSJQoOdXB0aW1lX25ldHdvcmsYAyABKARSDXVwdGltZU5ldHdvcmsSKgoRYmxvY2tfbGFzdF9yZXdhcmQYBCABKARSD2Jsb2NrTGFzdFJld2FyZBImCg9ibG9ja190aW1lX21lYW4YBSABKARSDWJsb2NrVGltZU1lYW4SIgoNYmxvY2tfdGltZV9zZBgGIAEoBFILYmxvY2tUaW1lU2QSLAoSY29pbnNfdG90YWxfc3VwcGx5GAcgASgEUhBjb2luc1RvdGFsU3VwcGx5EiMKDWNvaW5zX2VtaXR0ZWQYCCABKARSDGNvaW5zRW1pdHRlZBI+ChBibG9ja190aW1lc2VyaWVzGAkgAygLMhMucXJsLkJsb2NrRGF0YVBvaW50Ug9ibG9ja1RpbWVzZXJpZXM=');
@$core.Deprecated('Use getAddressFromPKReqDescriptor instead')
const GetAddressFromPKReq$json = const {
  '1': 'GetAddressFromPKReq',
  '2': const [
    const {'1': 'pk', '3': 1, '4': 1, '5': 12, '10': 'pk'},
  ],
};

/// Descriptor for `GetAddressFromPKReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAddressFromPKReqDescriptor = $convert.base64Decode('ChNHZXRBZGRyZXNzRnJvbVBLUmVxEg4KAnBrGAEgASgMUgJwaw==');
@$core.Deprecated('Use getAddressFromPKRespDescriptor instead')
const GetAddressFromPKResp$json = const {
  '1': 'GetAddressFromPKResp',
  '2': const [
    const {'1': 'address', '3': 1, '4': 1, '5': 12, '10': 'address'},
  ],
};

/// Descriptor for `GetAddressFromPKResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAddressFromPKRespDescriptor = $convert.base64Decode('ChRHZXRBZGRyZXNzRnJvbVBLUmVzcBIYCgdhZGRyZXNzGAEgASgMUgdhZGRyZXNz');
@$core.Deprecated('Use blockDataPointDescriptor instead')
const BlockDataPoint$json = const {
  '1': 'BlockDataPoint',
  '2': const [
    const {'1': 'number', '3': 1, '4': 1, '5': 4, '10': 'number'},
    const {'1': 'difficulty', '3': 2, '4': 1, '5': 9, '10': 'difficulty'},
    const {'1': 'timestamp', '3': 3, '4': 1, '5': 4, '10': 'timestamp'},
    const {'1': 'time_last', '3': 4, '4': 1, '5': 4, '10': 'timeLast'},
    const {'1': 'time_movavg', '3': 5, '4': 1, '5': 4, '10': 'timeMovavg'},
    const {'1': 'hash_power', '3': 6, '4': 1, '5': 2, '10': 'hashPower'},
    const {'1': 'header_hash', '3': 7, '4': 1, '5': 12, '10': 'headerHash'},
    const {'1': 'header_hash_prev', '3': 8, '4': 1, '5': 12, '10': 'headerHashPrev'},
  ],
};

/// Descriptor for `BlockDataPoint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List blockDataPointDescriptor = $convert.base64Decode('Cg5CbG9ja0RhdGFQb2ludBIWCgZudW1iZXIYASABKARSBm51bWJlchIeCgpkaWZmaWN1bHR5GAIgASgJUgpkaWZmaWN1bHR5EhwKCXRpbWVzdGFtcBgDIAEoBFIJdGltZXN0YW1wEhsKCXRpbWVfbGFzdBgEIAEoBFIIdGltZUxhc3QSHwoLdGltZV9tb3ZhdmcYBSABKARSCnRpbWVNb3ZhdmcSHQoKaGFzaF9wb3dlchgGIAEoAlIJaGFzaFBvd2VyEh8KC2hlYWRlcl9oYXNoGAcgASgMUgpoZWFkZXJIYXNoEigKEGhlYWRlcl9oYXNoX3ByZXYYCCABKAxSDmhlYWRlckhhc2hQcmV2');
@$core.Deprecated('Use getAddressStateReqDescriptor instead')
const GetAddressStateReq$json = const {
  '1': 'GetAddressStateReq',
  '2': const [
    const {'1': 'address', '3': 1, '4': 1, '5': 12, '10': 'address'},
  ],
};

/// Descriptor for `GetAddressStateReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAddressStateReqDescriptor = $convert.base64Decode('ChJHZXRBZGRyZXNzU3RhdGVSZXESGAoHYWRkcmVzcxgBIAEoDFIHYWRkcmVzcw==');
@$core.Deprecated('Use getAddressStateRespDescriptor instead')
const GetAddressStateResp$json = const {
  '1': 'GetAddressStateResp',
  '2': const [
    const {'1': 'state', '3': 1, '4': 1, '5': 11, '6': '.qrl.AddressState', '10': 'state'},
  ],
};

/// Descriptor for `GetAddressStateResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAddressStateRespDescriptor = $convert.base64Decode('ChNHZXRBZGRyZXNzU3RhdGVSZXNwEicKBXN0YXRlGAEgASgLMhEucXJsLkFkZHJlc3NTdGF0ZVIFc3RhdGU=');
@$core.Deprecated('Use getObjectReqDescriptor instead')
const GetObjectReq$json = const {
  '1': 'GetObjectReq',
  '2': const [
    const {'1': 'query', '3': 1, '4': 1, '5': 12, '10': 'query'},
  ],
};

/// Descriptor for `GetObjectReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getObjectReqDescriptor = $convert.base64Decode('CgxHZXRPYmplY3RSZXESFAoFcXVlcnkYASABKAxSBXF1ZXJ5');
@$core.Deprecated('Use getObjectRespDescriptor instead')
const GetObjectResp$json = const {
  '1': 'GetObjectResp',
  '2': const [
    const {'1': 'found', '3': 1, '4': 1, '5': 8, '10': 'found'},
    const {'1': 'address_state', '3': 2, '4': 1, '5': 11, '6': '.qrl.AddressState', '9': 0, '10': 'addressState'},
    const {'1': 'transaction', '3': 3, '4': 1, '5': 11, '6': '.qrl.TransactionExtended', '9': 0, '10': 'transaction'},
    const {'1': 'block_extended', '3': 4, '4': 1, '5': 11, '6': '.qrl.BlockExtended', '9': 0, '10': 'blockExtended'},
  ],
  '8': const [
    const {'1': 'result'},
  ],
};

/// Descriptor for `GetObjectResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getObjectRespDescriptor = $convert.base64Decode('Cg1HZXRPYmplY3RSZXNwEhQKBWZvdW5kGAEgASgIUgVmb3VuZBI4Cg1hZGRyZXNzX3N0YXRlGAIgASgLMhEucXJsLkFkZHJlc3NTdGF0ZUgAUgxhZGRyZXNzU3RhdGUSPAoLdHJhbnNhY3Rpb24YAyABKAsyGC5xcmwuVHJhbnNhY3Rpb25FeHRlbmRlZEgAUgt0cmFuc2FjdGlvbhI7Cg5ibG9ja19leHRlbmRlZBgEIAEoCzISLnFybC5CbG9ja0V4dGVuZGVkSABSDWJsb2NrRXh0ZW5kZWRCCAoGcmVzdWx0');
@$core.Deprecated('Use getLatestDataReqDescriptor instead')
const GetLatestDataReq$json = const {
  '1': 'GetLatestDataReq',
  '2': const [
    const {'1': 'filter', '3': 1, '4': 1, '5': 14, '6': '.qrl.GetLatestDataReq.Filter', '10': 'filter'},
    const {'1': 'offset', '3': 2, '4': 1, '5': 13, '10': 'offset'},
    const {'1': 'quantity', '3': 3, '4': 1, '5': 13, '10': 'quantity'},
  ],
  '4': const [GetLatestDataReq_Filter$json],
};

@$core.Deprecated('Use getLatestDataReqDescriptor instead')
const GetLatestDataReq_Filter$json = const {
  '1': 'Filter',
  '2': const [
    const {'1': 'ALL', '2': 0},
    const {'1': 'BLOCKHEADERS', '2': 1},
    const {'1': 'TRANSACTIONS', '2': 2},
    const {'1': 'TRANSACTIONS_UNCONFIRMED', '2': 3},
  ],
};

/// Descriptor for `GetLatestDataReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getLatestDataReqDescriptor = $convert.base64Decode('ChBHZXRMYXRlc3REYXRhUmVxEjQKBmZpbHRlchgBIAEoDjIcLnFybC5HZXRMYXRlc3REYXRhUmVxLkZpbHRlclIGZmlsdGVyEhYKBm9mZnNldBgCIAEoDVIGb2Zmc2V0EhoKCHF1YW50aXR5GAMgASgNUghxdWFudGl0eSJTCgZGaWx0ZXISBwoDQUxMEAASEAoMQkxPQ0tIRUFERVJTEAESEAoMVFJBTlNBQ1RJT05TEAISHAoYVFJBTlNBQ1RJT05TX1VOQ09ORklSTUVEEAM=');
@$core.Deprecated('Use getLatestDataRespDescriptor instead')
const GetLatestDataResp$json = const {
  '1': 'GetLatestDataResp',
  '2': const [
    const {'1': 'blockheaders', '3': 1, '4': 3, '5': 11, '6': '.qrl.BlockHeaderExtended', '10': 'blockheaders'},
    const {'1': 'transactions', '3': 2, '4': 3, '5': 11, '6': '.qrl.TransactionExtended', '10': 'transactions'},
    const {'1': 'transactions_unconfirmed', '3': 3, '4': 3, '5': 11, '6': '.qrl.TransactionExtended', '10': 'transactionsUnconfirmed'},
  ],
};

/// Descriptor for `GetLatestDataResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getLatestDataRespDescriptor = $convert.base64Decode('ChFHZXRMYXRlc3REYXRhUmVzcBI8CgxibG9ja2hlYWRlcnMYASADKAsyGC5xcmwuQmxvY2tIZWFkZXJFeHRlbmRlZFIMYmxvY2toZWFkZXJzEjwKDHRyYW5zYWN0aW9ucxgCIAMoCzIYLnFybC5UcmFuc2FjdGlvbkV4dGVuZGVkUgx0cmFuc2FjdGlvbnMSUwoYdHJhbnNhY3Rpb25zX3VuY29uZmlybWVkGAMgAygLMhgucXJsLlRyYW5zYWN0aW9uRXh0ZW5kZWRSF3RyYW5zYWN0aW9uc1VuY29uZmlybWVk');
@$core.Deprecated('Use transferCoinsReqDescriptor instead')
const TransferCoinsReq$json = const {
  '1': 'TransferCoinsReq',
  '2': const [
    const {'1': 'master_addr', '3': 1, '4': 1, '5': 12, '10': 'masterAddr'},
    const {'1': 'addresses_to', '3': 2, '4': 3, '5': 12, '10': 'addressesTo'},
    const {'1': 'amounts', '3': 3, '4': 3, '5': 4, '10': 'amounts'},
    const {'1': 'message_data', '3': 4, '4': 1, '5': 12, '10': 'messageData'},
    const {'1': 'fee', '3': 5, '4': 1, '5': 4, '10': 'fee'},
    const {'1': 'xmss_pk', '3': 6, '4': 1, '5': 12, '10': 'xmssPk'},
  ],
};

/// Descriptor for `TransferCoinsReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transferCoinsReqDescriptor = $convert.base64Decode('ChBUcmFuc2ZlckNvaW5zUmVxEh8KC21hc3Rlcl9hZGRyGAEgASgMUgptYXN0ZXJBZGRyEiEKDGFkZHJlc3Nlc190bxgCIAMoDFILYWRkcmVzc2VzVG8SGAoHYW1vdW50cxgDIAMoBFIHYW1vdW50cxIhCgxtZXNzYWdlX2RhdGEYBCABKAxSC21lc3NhZ2VEYXRhEhAKA2ZlZRgFIAEoBFIDZmVlEhcKB3htc3NfcGsYBiABKAxSBnhtc3NQaw==');
@$core.Deprecated('Use transferCoinsRespDescriptor instead')
const TransferCoinsResp$json = const {
  '1': 'TransferCoinsResp',
  '2': const [
    const {'1': 'extended_transaction_unsigned', '3': 1, '4': 1, '5': 11, '6': '.qrl.TransactionExtended', '10': 'extendedTransactionUnsigned'},
  ],
};

/// Descriptor for `TransferCoinsResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transferCoinsRespDescriptor = $convert.base64Decode('ChFUcmFuc2ZlckNvaW5zUmVzcBJcCh1leHRlbmRlZF90cmFuc2FjdGlvbl91bnNpZ25lZBgBIAEoCzIYLnFybC5UcmFuc2FjdGlvbkV4dGVuZGVkUhtleHRlbmRlZFRyYW5zYWN0aW9uVW5zaWduZWQ=');
@$core.Deprecated('Use pushTransactionReqDescriptor instead')
const PushTransactionReq$json = const {
  '1': 'PushTransactionReq',
  '2': const [
    const {'1': 'transaction_signed', '3': 1, '4': 1, '5': 11, '6': '.qrl.Transaction', '10': 'transactionSigned'},
  ],
};

/// Descriptor for `PushTransactionReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pushTransactionReqDescriptor = $convert.base64Decode('ChJQdXNoVHJhbnNhY3Rpb25SZXESPwoSdHJhbnNhY3Rpb25fc2lnbmVkGAEgASgLMhAucXJsLlRyYW5zYWN0aW9uUhF0cmFuc2FjdGlvblNpZ25lZA==');
@$core.Deprecated('Use pushTransactionRespDescriptor instead')
const PushTransactionResp$json = const {
  '1': 'PushTransactionResp',
  '2': const [
    const {'1': 'error_code', '3': 1, '4': 1, '5': 14, '6': '.qrl.PushTransactionResp.ResponseCode', '10': 'errorCode'},
    const {'1': 'error_description', '3': 2, '4': 1, '5': 9, '10': 'errorDescription'},
    const {'1': 'tx_hash', '3': 3, '4': 1, '5': 12, '10': 'txHash'},
  ],
  '4': const [PushTransactionResp_ResponseCode$json],
};

@$core.Deprecated('Use pushTransactionRespDescriptor instead')
const PushTransactionResp_ResponseCode$json = const {
  '1': 'ResponseCode',
  '2': const [
    const {'1': 'UNKNOWN', '2': 0},
    const {'1': 'ERROR', '2': 1},
    const {'1': 'VALIDATION_FAILED', '2': 2},
    const {'1': 'SUBMITTED', '2': 3},
  ],
};

/// Descriptor for `PushTransactionResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pushTransactionRespDescriptor = $convert.base64Decode('ChNQdXNoVHJhbnNhY3Rpb25SZXNwEkQKCmVycm9yX2NvZGUYASABKA4yJS5xcmwuUHVzaFRyYW5zYWN0aW9uUmVzcC5SZXNwb25zZUNvZGVSCWVycm9yQ29kZRIrChFlcnJvcl9kZXNjcmlwdGlvbhgCIAEoCVIQZXJyb3JEZXNjcmlwdGlvbhIXCgd0eF9oYXNoGAMgASgMUgZ0eEhhc2giTAoMUmVzcG9uc2VDb2RlEgsKB1VOS05PV04QABIJCgVFUlJPUhABEhUKEVZBTElEQVRJT05fRkFJTEVEEAISDQoJU1VCTUlUVEVEEAM=');
@$core.Deprecated('Use messageTxnReqDescriptor instead')
const MessageTxnReq$json = const {
  '1': 'MessageTxnReq',
  '2': const [
    const {'1': 'master_addr', '3': 1, '4': 1, '5': 12, '10': 'masterAddr'},
    const {'1': 'message', '3': 2, '4': 1, '5': 12, '10': 'message'},
    const {'1': 'fee', '3': 3, '4': 1, '5': 4, '10': 'fee'},
    const {'1': 'xmss_pk', '3': 4, '4': 1, '5': 12, '10': 'xmssPk'},
  ],
};

/// Descriptor for `MessageTxnReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageTxnReqDescriptor = $convert.base64Decode('Cg1NZXNzYWdlVHhuUmVxEh8KC21hc3Rlcl9hZGRyGAEgASgMUgptYXN0ZXJBZGRyEhgKB21lc3NhZ2UYAiABKAxSB21lc3NhZ2USEAoDZmVlGAMgASgEUgNmZWUSFwoHeG1zc19waxgEIAEoDFIGeG1zc1Br');
@$core.Deprecated('Use tokenTxnReqDescriptor instead')
const TokenTxnReq$json = const {
  '1': 'TokenTxnReq',
  '2': const [
    const {'1': 'master_addr', '3': 1, '4': 1, '5': 12, '10': 'masterAddr'},
    const {'1': 'symbol', '3': 2, '4': 1, '5': 12, '10': 'symbol'},
    const {'1': 'name', '3': 3, '4': 1, '5': 12, '10': 'name'},
    const {'1': 'owner', '3': 4, '4': 1, '5': 12, '10': 'owner'},
    const {'1': 'decimals', '3': 5, '4': 1, '5': 4, '10': 'decimals'},
    const {'1': 'initial_balances', '3': 6, '4': 3, '5': 11, '6': '.qrl.AddressAmount', '10': 'initialBalances'},
    const {'1': 'fee', '3': 7, '4': 1, '5': 4, '10': 'fee'},
    const {'1': 'xmss_pk', '3': 8, '4': 1, '5': 12, '10': 'xmssPk'},
  ],
};

/// Descriptor for `TokenTxnReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tokenTxnReqDescriptor = $convert.base64Decode('CgtUb2tlblR4blJlcRIfCgttYXN0ZXJfYWRkchgBIAEoDFIKbWFzdGVyQWRkchIWCgZzeW1ib2wYAiABKAxSBnN5bWJvbBISCgRuYW1lGAMgASgMUgRuYW1lEhQKBW93bmVyGAQgASgMUgVvd25lchIaCghkZWNpbWFscxgFIAEoBFIIZGVjaW1hbHMSPQoQaW5pdGlhbF9iYWxhbmNlcxgGIAMoCzISLnFybC5BZGRyZXNzQW1vdW50Ug9pbml0aWFsQmFsYW5jZXMSEAoDZmVlGAcgASgEUgNmZWUSFwoHeG1zc19waxgIIAEoDFIGeG1zc1Br');
@$core.Deprecated('Use transferTokenTxnReqDescriptor instead')
const TransferTokenTxnReq$json = const {
  '1': 'TransferTokenTxnReq',
  '2': const [
    const {'1': 'master_addr', '3': 1, '4': 1, '5': 12, '10': 'masterAddr'},
    const {'1': 'addresses_to', '3': 2, '4': 3, '5': 12, '10': 'addressesTo'},
    const {'1': 'token_txhash', '3': 3, '4': 1, '5': 12, '10': 'tokenTxhash'},
    const {'1': 'amounts', '3': 4, '4': 3, '5': 4, '10': 'amounts'},
    const {'1': 'fee', '3': 5, '4': 1, '5': 4, '10': 'fee'},
    const {'1': 'xmss_pk', '3': 6, '4': 1, '5': 12, '10': 'xmssPk'},
  ],
};

/// Descriptor for `TransferTokenTxnReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transferTokenTxnReqDescriptor = $convert.base64Decode('ChNUcmFuc2ZlclRva2VuVHhuUmVxEh8KC21hc3Rlcl9hZGRyGAEgASgMUgptYXN0ZXJBZGRyEiEKDGFkZHJlc3Nlc190bxgCIAMoDFILYWRkcmVzc2VzVG8SIQoMdG9rZW5fdHhoYXNoGAMgASgMUgt0b2tlblR4aGFzaBIYCgdhbW91bnRzGAQgAygEUgdhbW91bnRzEhAKA2ZlZRgFIAEoBFIDZmVlEhcKB3htc3NfcGsYBiABKAxSBnhtc3NQaw==');
@$core.Deprecated('Use slaveTxnReqDescriptor instead')
const SlaveTxnReq$json = const {
  '1': 'SlaveTxnReq',
  '2': const [
    const {'1': 'master_addr', '3': 1, '4': 1, '5': 12, '10': 'masterAddr'},
    const {'1': 'slave_pks', '3': 2, '4': 3, '5': 12, '10': 'slavePks'},
    const {'1': 'access_types', '3': 3, '4': 3, '5': 13, '10': 'accessTypes'},
    const {'1': 'fee', '3': 4, '4': 1, '5': 4, '10': 'fee'},
    const {'1': 'xmss_pk', '3': 5, '4': 1, '5': 12, '10': 'xmssPk'},
  ],
};

/// Descriptor for `SlaveTxnReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List slaveTxnReqDescriptor = $convert.base64Decode('CgtTbGF2ZVR4blJlcRIfCgttYXN0ZXJfYWRkchgBIAEoDFIKbWFzdGVyQWRkchIbCglzbGF2ZV9wa3MYAiADKAxSCHNsYXZlUGtzEiEKDGFjY2Vzc190eXBlcxgDIAMoDVILYWNjZXNzVHlwZXMSEAoDZmVlGAQgASgEUgNmZWUSFwoHeG1zc19waxgFIAEoDFIGeG1zc1Br');
@$core.Deprecated('Use getLocalAddressesReqDescriptor instead')
const GetLocalAddressesReq$json = const {
  '1': 'GetLocalAddressesReq',
};

/// Descriptor for `GetLocalAddressesReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getLocalAddressesReqDescriptor = $convert.base64Decode('ChRHZXRMb2NhbEFkZHJlc3Nlc1JlcQ==');
@$core.Deprecated('Use getLocalAddressesRespDescriptor instead')
const GetLocalAddressesResp$json = const {
  '1': 'GetLocalAddressesResp',
  '2': const [
    const {'1': 'addresses', '3': 1, '4': 3, '5': 12, '10': 'addresses'},
  ],
};

/// Descriptor for `GetLocalAddressesResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getLocalAddressesRespDescriptor = $convert.base64Decode('ChVHZXRMb2NhbEFkZHJlc3Nlc1Jlc3ASHAoJYWRkcmVzc2VzGAEgAygMUglhZGRyZXNzZXM=');
@$core.Deprecated('Use nodeInfoDescriptor instead')
const NodeInfo$json = const {
  '1': 'NodeInfo',
  '2': const [
    const {'1': 'version', '3': 1, '4': 1, '5': 9, '10': 'version'},
    const {'1': 'state', '3': 2, '4': 1, '5': 14, '6': '.qrl.NodeInfo.State', '10': 'state'},
    const {'1': 'num_connections', '3': 3, '4': 1, '5': 13, '10': 'numConnections'},
    const {'1': 'num_known_peers', '3': 4, '4': 1, '5': 13, '10': 'numKnownPeers'},
    const {'1': 'uptime', '3': 5, '4': 1, '5': 4, '10': 'uptime'},
    const {'1': 'block_height', '3': 6, '4': 1, '5': 4, '10': 'blockHeight'},
    const {'1': 'block_last_hash', '3': 7, '4': 1, '5': 12, '10': 'blockLastHash'},
    const {'1': 'network_id', '3': 8, '4': 1, '5': 9, '10': 'networkId'},
  ],
  '4': const [NodeInfo_State$json],
};

@$core.Deprecated('Use nodeInfoDescriptor instead')
const NodeInfo_State$json = const {
  '1': 'State',
  '2': const [
    const {'1': 'UNKNOWN', '2': 0},
    const {'1': 'UNSYNCED', '2': 1},
    const {'1': 'SYNCING', '2': 2},
    const {'1': 'SYNCED', '2': 3},
    const {'1': 'FORKED', '2': 4},
  ],
};

/// Descriptor for `NodeInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodeInfoDescriptor = $convert.base64Decode('CghOb2RlSW5mbxIYCgd2ZXJzaW9uGAEgASgJUgd2ZXJzaW9uEikKBXN0YXRlGAIgASgOMhMucXJsLk5vZGVJbmZvLlN0YXRlUgVzdGF0ZRInCg9udW1fY29ubmVjdGlvbnMYAyABKA1SDm51bUNvbm5lY3Rpb25zEiYKD251bV9rbm93bl9wZWVycxgEIAEoDVINbnVtS25vd25QZWVycxIWCgZ1cHRpbWUYBSABKARSBnVwdGltZRIhCgxibG9ja19oZWlnaHQYBiABKARSC2Jsb2NrSGVpZ2h0EiYKD2Jsb2NrX2xhc3RfaGFzaBgHIAEoDFINYmxvY2tMYXN0SGFzaBIdCgpuZXR3b3JrX2lkGAggASgJUgluZXR3b3JrSWQiRwoFU3RhdGUSCwoHVU5LTk9XThAAEgwKCFVOU1lOQ0VEEAESCwoHU1lOQ0lORxACEgoKBlNZTkNFRBADEgoKBkZPUktFRBAE');
@$core.Deprecated('Use storedPeersDescriptor instead')
const StoredPeers$json = const {
  '1': 'StoredPeers',
  '2': const [
    const {'1': 'peers', '3': 1, '4': 3, '5': 11, '6': '.qrl.Peer', '10': 'peers'},
  ],
};

/// Descriptor for `StoredPeers`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List storedPeersDescriptor = $convert.base64Decode('CgtTdG9yZWRQZWVycxIfCgVwZWVycxgBIAMoCzIJLnFybC5QZWVyUgVwZWVycw==');
@$core.Deprecated('Use peerDescriptor instead')
const Peer$json = const {
  '1': 'Peer',
  '2': const [
    const {'1': 'ip', '3': 1, '4': 1, '5': 9, '10': 'ip'},
  ],
};

/// Descriptor for `Peer`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List peerDescriptor = $convert.base64Decode('CgRQZWVyEg4KAmlwGAEgASgJUgJpcA==');
@$core.Deprecated('Use addressStateDescriptor instead')
const AddressState$json = const {
  '1': 'AddressState',
  '2': const [
    const {'1': 'address', '3': 1, '4': 1, '5': 12, '10': 'address'},
    const {'1': 'balance', '3': 2, '4': 1, '5': 4, '10': 'balance'},
    const {'1': 'nonce', '3': 3, '4': 1, '5': 4, '10': 'nonce'},
    const {'1': 'ots_bitfield', '3': 4, '4': 3, '5': 12, '10': 'otsBitfield'},
    const {'1': 'transaction_hashes', '3': 5, '4': 3, '5': 12, '10': 'transactionHashes'},
    const {'1': 'tokens', '3': 6, '4': 3, '5': 11, '6': '.qrl.AddressState.TokensEntry', '10': 'tokens'},
    const {'1': 'latticePK_list', '3': 7, '4': 3, '5': 11, '6': '.qrl.LatticePK', '10': 'latticePKList'},
    const {'1': 'slave_pks_access_type', '3': 8, '4': 3, '5': 11, '6': '.qrl.AddressState.SlavePksAccessTypeEntry', '10': 'slavePksAccessType'},
    const {'1': 'ots_counter', '3': 9, '4': 1, '5': 4, '10': 'otsCounter'},
  ],
  '3': const [AddressState_TokensEntry$json, AddressState_SlavePksAccessTypeEntry$json],
};

@$core.Deprecated('Use addressStateDescriptor instead')
const AddressState_TokensEntry$json = const {
  '1': 'TokensEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 4, '10': 'value'},
  ],
  '7': const {'7': true},
};

@$core.Deprecated('Use addressStateDescriptor instead')
const AddressState_SlavePksAccessTypeEntry$json = const {
  '1': 'SlavePksAccessTypeEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 13, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `AddressState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addressStateDescriptor = $convert.base64Decode('CgxBZGRyZXNzU3RhdGUSGAoHYWRkcmVzcxgBIAEoDFIHYWRkcmVzcxIYCgdiYWxhbmNlGAIgASgEUgdiYWxhbmNlEhQKBW5vbmNlGAMgASgEUgVub25jZRIhCgxvdHNfYml0ZmllbGQYBCADKAxSC290c0JpdGZpZWxkEi0KEnRyYW5zYWN0aW9uX2hhc2hlcxgFIAMoDFIRdHJhbnNhY3Rpb25IYXNoZXMSNQoGdG9rZW5zGAYgAygLMh0ucXJsLkFkZHJlc3NTdGF0ZS5Ub2tlbnNFbnRyeVIGdG9rZW5zEjUKDmxhdHRpY2VQS19saXN0GAcgAygLMg4ucXJsLkxhdHRpY2VQS1INbGF0dGljZVBLTGlzdBJcChVzbGF2ZV9wa3NfYWNjZXNzX3R5cGUYCCADKAsyKS5xcmwuQWRkcmVzc1N0YXRlLlNsYXZlUGtzQWNjZXNzVHlwZUVudHJ5UhJzbGF2ZVBrc0FjY2Vzc1R5cGUSHwoLb3RzX2NvdW50ZXIYCSABKARSCm90c0NvdW50ZXIaOQoLVG9rZW5zRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKARSBXZhbHVlOgI4ARpFChdTbGF2ZVBrc0FjY2Vzc1R5cGVFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoDVIFdmFsdWU6AjgB');
@$core.Deprecated('Use latticePKDescriptor instead')
const LatticePK$json = const {
  '1': 'LatticePK',
  '2': const [
    const {'1': 'txhash', '3': 1, '4': 1, '5': 12, '10': 'txhash'},
    const {'1': 'dilithium_pk', '3': 2, '4': 1, '5': 12, '10': 'dilithiumPk'},
    const {'1': 'kyber_pk', '3': 3, '4': 1, '5': 12, '10': 'kyberPk'},
  ],
};

/// Descriptor for `LatticePK`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List latticePKDescriptor = $convert.base64Decode('CglMYXR0aWNlUEsSFgoGdHhoYXNoGAEgASgMUgZ0eGhhc2gSIQoMZGlsaXRoaXVtX3BrGAIgASgMUgtkaWxpdGhpdW1QaxIZCghreWJlcl9waxgDIAEoDFIHa3liZXJQaw==');
@$core.Deprecated('Use addressAmountDescriptor instead')
const AddressAmount$json = const {
  '1': 'AddressAmount',
  '2': const [
    const {'1': 'address', '3': 1, '4': 1, '5': 12, '10': 'address'},
    const {'1': 'amount', '3': 2, '4': 1, '5': 4, '10': 'amount'},
  ],
};

/// Descriptor for `AddressAmount`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addressAmountDescriptor = $convert.base64Decode('Cg1BZGRyZXNzQW1vdW50EhgKB2FkZHJlc3MYASABKAxSB2FkZHJlc3MSFgoGYW1vdW50GAIgASgEUgZhbW91bnQ=');
@$core.Deprecated('Use blockHeaderDescriptor instead')
const BlockHeader$json = const {
  '1': 'BlockHeader',
  '2': const [
    const {'1': 'hash_header', '3': 1, '4': 1, '5': 12, '10': 'hashHeader'},
    const {'1': 'block_number', '3': 2, '4': 1, '5': 4, '10': 'blockNumber'},
    const {'1': 'timestamp_seconds', '3': 3, '4': 1, '5': 4, '10': 'timestampSeconds'},
    const {'1': 'hash_header_prev', '3': 4, '4': 1, '5': 12, '10': 'hashHeaderPrev'},
    const {'1': 'reward_block', '3': 5, '4': 1, '5': 4, '10': 'rewardBlock'},
    const {'1': 'reward_fee', '3': 6, '4': 1, '5': 4, '10': 'rewardFee'},
    const {'1': 'merkle_root', '3': 7, '4': 1, '5': 12, '10': 'merkleRoot'},
    const {'1': 'mining_nonce', '3': 8, '4': 1, '5': 13, '10': 'miningNonce'},
    const {'1': 'extra_nonce', '3': 9, '4': 1, '5': 4, '10': 'extraNonce'},
  ],
};

/// Descriptor for `BlockHeader`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List blockHeaderDescriptor = $convert.base64Decode('CgtCbG9ja0hlYWRlchIfCgtoYXNoX2hlYWRlchgBIAEoDFIKaGFzaEhlYWRlchIhCgxibG9ja19udW1iZXIYAiABKARSC2Jsb2NrTnVtYmVyEisKEXRpbWVzdGFtcF9zZWNvbmRzGAMgASgEUhB0aW1lc3RhbXBTZWNvbmRzEigKEGhhc2hfaGVhZGVyX3ByZXYYBCABKAxSDmhhc2hIZWFkZXJQcmV2EiEKDHJld2FyZF9ibG9jaxgFIAEoBFILcmV3YXJkQmxvY2sSHQoKcmV3YXJkX2ZlZRgGIAEoBFIJcmV3YXJkRmVlEh8KC21lcmtsZV9yb290GAcgASgMUgptZXJrbGVSb290EiEKDG1pbmluZ19ub25jZRgIIAEoDVILbWluaW5nTm9uY2USHwoLZXh0cmFfbm9uY2UYCSABKARSCmV4dHJhTm9uY2U=');
@$core.Deprecated('Use blockHeaderExtendedDescriptor instead')
const BlockHeaderExtended$json = const {
  '1': 'BlockHeaderExtended',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.qrl.BlockHeader', '10': 'header'},
    const {'1': 'transaction_count', '3': 2, '4': 1, '5': 11, '6': '.qrl.TransactionCount', '10': 'transactionCount'},
  ],
};

/// Descriptor for `BlockHeaderExtended`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List blockHeaderExtendedDescriptor = $convert.base64Decode('ChNCbG9ja0hlYWRlckV4dGVuZGVkEigKBmhlYWRlchgBIAEoCzIQLnFybC5CbG9ja0hlYWRlclIGaGVhZGVyEkIKEXRyYW5zYWN0aW9uX2NvdW50GAIgASgLMhUucXJsLlRyYW5zYWN0aW9uQ291bnRSEHRyYW5zYWN0aW9uQ291bnQ=');
@$core.Deprecated('Use transactionCountDescriptor instead')
const TransactionCount$json = const {
  '1': 'TransactionCount',
  '2': const [
    const {'1': 'count', '3': 1, '4': 3, '5': 11, '6': '.qrl.TransactionCount.CountEntry', '10': 'count'},
  ],
  '3': const [TransactionCount_CountEntry$json],
};

@$core.Deprecated('Use transactionCountDescriptor instead')
const TransactionCount_CountEntry$json = const {
  '1': 'CountEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 13, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 13, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `TransactionCount`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transactionCountDescriptor = $convert.base64Decode('ChBUcmFuc2FjdGlvbkNvdW50EjYKBWNvdW50GAEgAygLMiAucXJsLlRyYW5zYWN0aW9uQ291bnQuQ291bnRFbnRyeVIFY291bnQaOAoKQ291bnRFbnRyeRIQCgNrZXkYASABKA1SA2tleRIUCgV2YWx1ZRgCIAEoDVIFdmFsdWU6AjgB');
@$core.Deprecated('Use transactionExtendedDescriptor instead')
const TransactionExtended$json = const {
  '1': 'TransactionExtended',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.qrl.BlockHeader', '10': 'header'},
    const {'1': 'tx', '3': 2, '4': 1, '5': 11, '6': '.qrl.Transaction', '10': 'tx'},
    const {'1': 'addr_from', '3': 3, '4': 1, '5': 12, '10': 'addrFrom'},
    const {'1': 'size', '3': 4, '4': 1, '5': 4, '10': 'size'},
    const {'1': 'timestamp_seconds', '3': 5, '4': 1, '5': 4, '10': 'timestampSeconds'},
  ],
};

/// Descriptor for `TransactionExtended`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transactionExtendedDescriptor = $convert.base64Decode('ChNUcmFuc2FjdGlvbkV4dGVuZGVkEigKBmhlYWRlchgBIAEoCzIQLnFybC5CbG9ja0hlYWRlclIGaGVhZGVyEiAKAnR4GAIgASgLMhAucXJsLlRyYW5zYWN0aW9uUgJ0eBIbCglhZGRyX2Zyb20YAyABKAxSCGFkZHJGcm9tEhIKBHNpemUYBCABKARSBHNpemUSKwoRdGltZXN0YW1wX3NlY29uZHMYBSABKARSEHRpbWVzdGFtcFNlY29uZHM=');
@$core.Deprecated('Use blockExtendedDescriptor instead')
const BlockExtended$json = const {
  '1': 'BlockExtended',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.qrl.BlockHeader', '10': 'header'},
    const {'1': 'extended_transactions', '3': 2, '4': 3, '5': 11, '6': '.qrl.TransactionExtended', '10': 'extendedTransactions'},
    const {'1': 'genesis_balance', '3': 3, '4': 3, '5': 11, '6': '.qrl.GenesisBalance', '10': 'genesisBalance'},
    const {'1': 'size', '3': 4, '4': 1, '5': 4, '10': 'size'},
  ],
};

/// Descriptor for `BlockExtended`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List blockExtendedDescriptor = $convert.base64Decode('Cg1CbG9ja0V4dGVuZGVkEigKBmhlYWRlchgBIAEoCzIQLnFybC5CbG9ja0hlYWRlclIGaGVhZGVyEk0KFWV4dGVuZGVkX3RyYW5zYWN0aW9ucxgCIAMoCzIYLnFybC5UcmFuc2FjdGlvbkV4dGVuZGVkUhRleHRlbmRlZFRyYW5zYWN0aW9ucxI8Cg9nZW5lc2lzX2JhbGFuY2UYAyADKAsyEy5xcmwuR2VuZXNpc0JhbGFuY2VSDmdlbmVzaXNCYWxhbmNlEhIKBHNpemUYBCABKARSBHNpemU=');
@$core.Deprecated('Use blockDescriptor instead')
const Block$json = const {
  '1': 'Block',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.qrl.BlockHeader', '10': 'header'},
    const {'1': 'transactions', '3': 2, '4': 3, '5': 11, '6': '.qrl.Transaction', '10': 'transactions'},
    const {'1': 'genesis_balance', '3': 3, '4': 3, '5': 11, '6': '.qrl.GenesisBalance', '10': 'genesisBalance'},
  ],
};

/// Descriptor for `Block`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List blockDescriptor = $convert.base64Decode('CgVCbG9jaxIoCgZoZWFkZXIYASABKAsyEC5xcmwuQmxvY2tIZWFkZXJSBmhlYWRlchI0Cgx0cmFuc2FjdGlvbnMYAiADKAsyEC5xcmwuVHJhbnNhY3Rpb25SDHRyYW5zYWN0aW9ucxI8Cg9nZW5lc2lzX2JhbGFuY2UYAyADKAsyEy5xcmwuR2VuZXNpc0JhbGFuY2VSDmdlbmVzaXNCYWxhbmNl');
@$core.Deprecated('Use genesisBalanceDescriptor instead')
const GenesisBalance$json = const {
  '1': 'GenesisBalance',
  '2': const [
    const {'1': 'address', '3': 1, '4': 1, '5': 12, '10': 'address'},
    const {'1': 'balance', '3': 2, '4': 1, '5': 4, '10': 'balance'},
  ],
};

/// Descriptor for `GenesisBalance`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List genesisBalanceDescriptor = $convert.base64Decode('Cg5HZW5lc2lzQmFsYW5jZRIYCgdhZGRyZXNzGAEgASgMUgdhZGRyZXNzEhgKB2JhbGFuY2UYAiABKARSB2JhbGFuY2U=');
@$core.Deprecated('Use blockMetaDataListDescriptor instead')
const BlockMetaDataList$json = const {
  '1': 'BlockMetaDataList',
  '2': const [
    const {'1': 'block_number_hashes', '3': 1, '4': 3, '5': 11, '6': '.qrl.BlockMetaData', '10': 'blockNumberHashes'},
  ],
};

/// Descriptor for `BlockMetaDataList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List blockMetaDataListDescriptor = $convert.base64Decode('ChFCbG9ja01ldGFEYXRhTGlzdBJCChNibG9ja19udW1iZXJfaGFzaGVzGAEgAygLMhIucXJsLkJsb2NrTWV0YURhdGFSEWJsb2NrTnVtYmVySGFzaGVz');
@$core.Deprecated('Use transactionDescriptor instead')
const Transaction$json = const {
  '1': 'Transaction',
  '2': const [
    const {'1': 'master_addr', '3': 1, '4': 1, '5': 12, '10': 'masterAddr'},
    const {'1': 'fee', '3': 2, '4': 1, '5': 4, '10': 'fee'},
    const {'1': 'public_key', '3': 3, '4': 1, '5': 12, '10': 'publicKey'},
    const {'1': 'signature', '3': 4, '4': 1, '5': 12, '10': 'signature'},
    const {'1': 'nonce', '3': 5, '4': 1, '5': 4, '10': 'nonce'},
    const {'1': 'transaction_hash', '3': 6, '4': 1, '5': 12, '10': 'transactionHash'},
    const {'1': 'transfer', '3': 7, '4': 1, '5': 11, '6': '.qrl.Transaction.Transfer', '9': 0, '10': 'transfer'},
    const {'1': 'coinbase', '3': 8, '4': 1, '5': 11, '6': '.qrl.Transaction.CoinBase', '9': 0, '10': 'coinbase'},
    const {'1': 'latticePK', '3': 9, '4': 1, '5': 11, '6': '.qrl.Transaction.LatticePublicKey', '9': 0, '10': 'latticePK'},
    const {'1': 'message', '3': 10, '4': 1, '5': 11, '6': '.qrl.Transaction.Message', '9': 0, '10': 'message'},
    const {'1': 'token', '3': 11, '4': 1, '5': 11, '6': '.qrl.Transaction.Token', '9': 0, '10': 'token'},
    const {'1': 'transfer_token', '3': 12, '4': 1, '5': 11, '6': '.qrl.Transaction.TransferToken', '9': 0, '10': 'transferToken'},
    const {'1': 'slave', '3': 13, '4': 1, '5': 11, '6': '.qrl.Transaction.Slave', '9': 0, '10': 'slave'},
  ],
  '3': const [Transaction_Transfer$json, Transaction_CoinBase$json, Transaction_LatticePublicKey$json, Transaction_Message$json, Transaction_Token$json, Transaction_TransferToken$json, Transaction_Slave$json],
  '8': const [
    const {'1': 'transactionType'},
  ],
};

@$core.Deprecated('Use transactionDescriptor instead')
const Transaction_Transfer$json = const {
  '1': 'Transfer',
  '2': const [
    const {'1': 'addrs_to', '3': 1, '4': 3, '5': 12, '10': 'addrsTo'},
    const {'1': 'amounts', '3': 2, '4': 3, '5': 4, '10': 'amounts'},
  ],
};

@$core.Deprecated('Use transactionDescriptor instead')
const Transaction_CoinBase$json = const {
  '1': 'CoinBase',
  '2': const [
    const {'1': 'addr_to', '3': 1, '4': 1, '5': 12, '10': 'addrTo'},
    const {'1': 'amount', '3': 2, '4': 1, '5': 4, '10': 'amount'},
  ],
};

@$core.Deprecated('Use transactionDescriptor instead')
const Transaction_LatticePublicKey$json = const {
  '1': 'LatticePublicKey',
  '2': const [
    const {'1': 'kyber_pk', '3': 1, '4': 1, '5': 12, '10': 'kyberPk'},
    const {'1': 'dilithium_pk', '3': 2, '4': 1, '5': 12, '10': 'dilithiumPk'},
  ],
};

@$core.Deprecated('Use transactionDescriptor instead')
const Transaction_Message$json = const {
  '1': 'Message',
  '2': const [
    const {'1': 'message_hash', '3': 1, '4': 1, '5': 12, '10': 'messageHash'},
  ],
};

@$core.Deprecated('Use transactionDescriptor instead')
const Transaction_Token$json = const {
  '1': 'Token',
  '2': const [
    const {'1': 'symbol', '3': 1, '4': 1, '5': 12, '10': 'symbol'},
    const {'1': 'name', '3': 2, '4': 1, '5': 12, '10': 'name'},
    const {'1': 'owner', '3': 3, '4': 1, '5': 12, '10': 'owner'},
    const {'1': 'decimals', '3': 4, '4': 1, '5': 4, '10': 'decimals'},
    const {'1': 'initial_balances', '3': 5, '4': 3, '5': 11, '6': '.qrl.AddressAmount', '10': 'initialBalances'},
  ],
};

@$core.Deprecated('Use transactionDescriptor instead')
const Transaction_TransferToken$json = const {
  '1': 'TransferToken',
  '2': const [
    const {'1': 'token_txhash', '3': 1, '4': 1, '5': 12, '10': 'tokenTxhash'},
    const {'1': 'addrs_to', '3': 2, '4': 3, '5': 12, '10': 'addrsTo'},
    const {'1': 'amounts', '3': 3, '4': 3, '5': 4, '10': 'amounts'},
  ],
};

@$core.Deprecated('Use transactionDescriptor instead')
const Transaction_Slave$json = const {
  '1': 'Slave',
  '2': const [
    const {'1': 'slave_pks', '3': 1, '4': 3, '5': 12, '10': 'slavePks'},
    const {'1': 'access_types', '3': 2, '4': 3, '5': 13, '10': 'accessTypes'},
  ],
};

/// Descriptor for `Transaction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transactionDescriptor = $convert.base64Decode('CgtUcmFuc2FjdGlvbhIfCgttYXN0ZXJfYWRkchgBIAEoDFIKbWFzdGVyQWRkchIQCgNmZWUYAiABKARSA2ZlZRIdCgpwdWJsaWNfa2V5GAMgASgMUglwdWJsaWNLZXkSHAoJc2lnbmF0dXJlGAQgASgMUglzaWduYXR1cmUSFAoFbm9uY2UYBSABKARSBW5vbmNlEikKEHRyYW5zYWN0aW9uX2hhc2gYBiABKAxSD3RyYW5zYWN0aW9uSGFzaBI3Cgh0cmFuc2ZlchgHIAEoCzIZLnFybC5UcmFuc2FjdGlvbi5UcmFuc2ZlckgAUgh0cmFuc2ZlchI3Cghjb2luYmFzZRgIIAEoCzIZLnFybC5UcmFuc2FjdGlvbi5Db2luQmFzZUgAUghjb2luYmFzZRJBCglsYXR0aWNlUEsYCSABKAsyIS5xcmwuVHJhbnNhY3Rpb24uTGF0dGljZVB1YmxpY0tleUgAUglsYXR0aWNlUEsSNAoHbWVzc2FnZRgKIAEoCzIYLnFybC5UcmFuc2FjdGlvbi5NZXNzYWdlSABSB21lc3NhZ2USLgoFdG9rZW4YCyABKAsyFi5xcmwuVHJhbnNhY3Rpb24uVG9rZW5IAFIFdG9rZW4SRwoOdHJhbnNmZXJfdG9rZW4YDCABKAsyHi5xcmwuVHJhbnNhY3Rpb24uVHJhbnNmZXJUb2tlbkgAUg10cmFuc2ZlclRva2VuEi4KBXNsYXZlGA0gASgLMhYucXJsLlRyYW5zYWN0aW9uLlNsYXZlSABSBXNsYXZlGj8KCFRyYW5zZmVyEhkKCGFkZHJzX3RvGAEgAygMUgdhZGRyc1RvEhgKB2Ftb3VudHMYAiADKARSB2Ftb3VudHMaOwoIQ29pbkJhc2USFwoHYWRkcl90bxgBIAEoDFIGYWRkclRvEhYKBmFtb3VudBgCIAEoBFIGYW1vdW50GlAKEExhdHRpY2VQdWJsaWNLZXkSGQoIa3liZXJfcGsYASABKAxSB2t5YmVyUGsSIQoMZGlsaXRoaXVtX3BrGAIgASgMUgtkaWxpdGhpdW1QaxosCgdNZXNzYWdlEiEKDG1lc3NhZ2VfaGFzaBgBIAEoDFILbWVzc2FnZUhhc2gapAEKBVRva2VuEhYKBnN5bWJvbBgBIAEoDFIGc3ltYm9sEhIKBG5hbWUYAiABKAxSBG5hbWUSFAoFb3duZXIYAyABKAxSBW93bmVyEhoKCGRlY2ltYWxzGAQgASgEUghkZWNpbWFscxI9ChBpbml0aWFsX2JhbGFuY2VzGAUgAygLMhIucXJsLkFkZHJlc3NBbW91bnRSD2luaXRpYWxCYWxhbmNlcxpnCg1UcmFuc2ZlclRva2VuEiEKDHRva2VuX3R4aGFzaBgBIAEoDFILdG9rZW5UeGhhc2gSGQoIYWRkcnNfdG8YAiADKAxSB2FkZHJzVG8SGAoHYW1vdW50cxgDIAMoBFIHYW1vdW50cxpHCgVTbGF2ZRIbCglzbGF2ZV9wa3MYASADKAxSCHNsYXZlUGtzEiEKDGFjY2Vzc190eXBlcxgCIAMoDVILYWNjZXNzVHlwZXNCEQoPdHJhbnNhY3Rpb25UeXBl');
@$core.Deprecated('Use tokenListDescriptor instead')
const TokenList$json = const {
  '1': 'TokenList',
  '2': const [
    const {'1': 'token_txhash', '3': 1, '4': 3, '5': 12, '10': 'tokenTxhash'},
  ],
};

/// Descriptor for `TokenList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tokenListDescriptor = $convert.base64Decode('CglUb2tlbkxpc3QSIQoMdG9rZW5fdHhoYXNoGAEgAygMUgt0b2tlblR4aGFzaA==');
@$core.Deprecated('Use tokenMetadataDescriptor instead')
const TokenMetadata$json = const {
  '1': 'TokenMetadata',
  '2': const [
    const {'1': 'token_txhash', '3': 1, '4': 1, '5': 12, '10': 'tokenTxhash'},
    const {'1': 'transfer_token_tx_hashes', '3': 2, '4': 3, '5': 12, '10': 'transferTokenTxHashes'},
  ],
};

/// Descriptor for `TokenMetadata`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tokenMetadataDescriptor = $convert.base64Decode('Cg1Ub2tlbk1ldGFkYXRhEiEKDHRva2VuX3R4aGFzaBgBIAEoDFILdG9rZW5UeGhhc2gSNwoYdHJhbnNmZXJfdG9rZW5fdHhfaGFzaGVzGAIgAygMUhV0cmFuc2ZlclRva2VuVHhIYXNoZXM=');
@$core.Deprecated('Use encryptedEphemeralMessageDescriptor instead')
const EncryptedEphemeralMessage$json = const {
  '1': 'EncryptedEphemeralMessage',
  '2': const [
    const {'1': 'msg_id', '3': 1, '4': 1, '5': 12, '10': 'msgId'},
    const {'1': 'ttl', '3': 2, '4': 1, '5': 4, '10': 'ttl'},
    const {'1': 'ttr', '3': 3, '4': 1, '5': 4, '10': 'ttr'},
    const {'1': 'channel', '3': 5, '4': 1, '5': 11, '6': '.qrl.EncryptedEphemeralMessage.Channel', '10': 'channel'},
    const {'1': 'nonce', '3': 6, '4': 1, '5': 4, '10': 'nonce'},
    const {'1': 'payload', '3': 7, '4': 1, '5': 12, '10': 'payload'},
  ],
  '3': const [EncryptedEphemeralMessage_Channel$json],
};

@$core.Deprecated('Use encryptedEphemeralMessageDescriptor instead')
const EncryptedEphemeralMessage_Channel$json = const {
  '1': 'Channel',
  '2': const [
    const {'1': 'enc_aes256_symkey', '3': 4, '4': 1, '5': 12, '10': 'encAes256Symkey'},
  ],
};

/// Descriptor for `EncryptedEphemeralMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List encryptedEphemeralMessageDescriptor = $convert.base64Decode('ChlFbmNyeXB0ZWRFcGhlbWVyYWxNZXNzYWdlEhUKBm1zZ19pZBgBIAEoDFIFbXNnSWQSEAoDdHRsGAIgASgEUgN0dGwSEAoDdHRyGAMgASgEUgN0dHISQAoHY2hhbm5lbBgFIAEoCzImLnFybC5FbmNyeXB0ZWRFcGhlbWVyYWxNZXNzYWdlLkNoYW5uZWxSB2NoYW5uZWwSFAoFbm9uY2UYBiABKARSBW5vbmNlEhgKB3BheWxvYWQYByABKAxSB3BheWxvYWQaNQoHQ2hhbm5lbBIqChFlbmNfYWVzMjU2X3N5bWtleRgEIAEoDFIPZW5jQWVzMjU2U3lta2V5');
@$core.Deprecated('Use addressListDescriptor instead')
const AddressList$json = const {
  '1': 'AddressList',
  '2': const [
    const {'1': 'addresses', '3': 1, '4': 3, '5': 12, '10': 'addresses'},
  ],
};

/// Descriptor for `AddressList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addressListDescriptor = $convert.base64Decode('CgtBZGRyZXNzTGlzdBIcCglhZGRyZXNzZXMYASADKAxSCWFkZHJlc3Nlcw==');
@$core.Deprecated('Use blockHeightDataDescriptor instead')
const BlockHeightData$json = const {
  '1': 'BlockHeightData',
  '2': const [
    const {'1': 'block_number', '3': 1, '4': 1, '5': 4, '10': 'blockNumber'},
    const {'1': 'block_headerhash', '3': 2, '4': 1, '5': 12, '10': 'blockHeaderhash'},
    const {'1': 'cumulative_difficulty', '3': 3, '4': 1, '5': 12, '10': 'cumulativeDifficulty'},
  ],
};

/// Descriptor for `BlockHeightData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List blockHeightDataDescriptor = $convert.base64Decode('Cg9CbG9ja0hlaWdodERhdGESIQoMYmxvY2tfbnVtYmVyGAEgASgEUgtibG9ja051bWJlchIpChBibG9ja19oZWFkZXJoYXNoGAIgASgMUg9ibG9ja0hlYWRlcmhhc2gSMwoVY3VtdWxhdGl2ZV9kaWZmaWN1bHR5GAMgASgMUhRjdW11bGF0aXZlRGlmZmljdWx0eQ==');
@$core.Deprecated('Use blockMetaDataDescriptor instead')
const BlockMetaData$json = const {
  '1': 'BlockMetaData',
  '2': const [
    const {'1': 'block_difficulty', '3': 1, '4': 1, '5': 12, '10': 'blockDifficulty'},
    const {'1': 'cumulative_difficulty', '3': 2, '4': 1, '5': 12, '10': 'cumulativeDifficulty'},
    const {'1': 'child_headerhashes', '3': 3, '4': 3, '5': 12, '10': 'childHeaderhashes'},
    const {'1': 'last_N_headerhashes', '3': 4, '4': 3, '5': 12, '10': 'lastNHeaderhashes'},
  ],
};

/// Descriptor for `BlockMetaData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List blockMetaDataDescriptor = $convert.base64Decode('Cg1CbG9ja01ldGFEYXRhEikKEGJsb2NrX2RpZmZpY3VsdHkYASABKAxSD2Jsb2NrRGlmZmljdWx0eRIzChVjdW11bGF0aXZlX2RpZmZpY3VsdHkYAiABKAxSFGN1bXVsYXRpdmVEaWZmaWN1bHR5Ei0KEmNoaWxkX2hlYWRlcmhhc2hlcxgDIAMoDFIRY2hpbGRIZWFkZXJoYXNoZXMSLgoTbGFzdF9OX2hlYWRlcmhhc2hlcxgEIAMoDFIRbGFzdE5IZWFkZXJoYXNoZXM=');
@$core.Deprecated('Use blockNumberMappingDescriptor instead')
const BlockNumberMapping$json = const {
  '1': 'BlockNumberMapping',
  '2': const [
    const {'1': 'headerhash', '3': 1, '4': 1, '5': 12, '10': 'headerhash'},
    const {'1': 'prev_headerhash', '3': 2, '4': 1, '5': 12, '10': 'prevHeaderhash'},
  ],
};

/// Descriptor for `BlockNumberMapping`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List blockNumberMappingDescriptor = $convert.base64Decode('ChJCbG9ja051bWJlck1hcHBpbmcSHgoKaGVhZGVyaGFzaBgBIAEoDFIKaGVhZGVyaGFzaBInCg9wcmV2X2hlYWRlcmhhc2gYAiABKAxSDnByZXZIZWFkZXJoYXNo');
@$core.Deprecated('Use stateLoaderDescriptor instead')
const StateLoader$json = const {
  '1': 'StateLoader',
  '2': const [
    const {'1': 'addresses', '3': 1, '4': 3, '5': 12, '10': 'addresses'},
    const {'1': 'token_txhash', '3': 2, '4': 3, '5': 12, '10': 'tokenTxhash'},
    const {'1': 'txhash', '3': 3, '4': 3, '5': 12, '10': 'txhash'},
    const {'1': 'total_coin_supply', '3': 4, '4': 1, '5': 4, '10': 'totalCoinSupply'},
  ],
};

/// Descriptor for `StateLoader`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stateLoaderDescriptor = $convert.base64Decode('CgtTdGF0ZUxvYWRlchIcCglhZGRyZXNzZXMYASADKAxSCWFkZHJlc3NlcxIhCgx0b2tlbl90eGhhc2gYAiADKAxSC3Rva2VuVHhoYXNoEhYKBnR4aGFzaBgDIAMoDFIGdHhoYXNoEioKEXRvdGFsX2NvaW5fc3VwcGx5GAQgASgEUg90b3RhbENvaW5TdXBwbHk=');
@$core.Deprecated('Use stateObjectsDescriptor instead')
const StateObjects$json = const {
  '1': 'StateObjects',
  '2': const [
    const {'1': 'state_loaders', '3': 1, '4': 3, '5': 12, '10': 'stateLoaders'},
  ],
};

/// Descriptor for `StateObjects`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stateObjectsDescriptor = $convert.base64Decode('CgxTdGF0ZU9iamVjdHMSIwoNc3RhdGVfbG9hZGVycxgBIAMoDFIMc3RhdGVMb2FkZXJz');
@$core.Deprecated('Use lRUStateCacheDescriptor instead')
const LRUStateCache$json = const {
  '1': 'LRUStateCache',
};

/// Descriptor for `LRUStateCache`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List lRUStateCacheDescriptor = $convert.base64Decode('Cg1MUlVTdGF0ZUNhY2hl');
@$core.Deprecated('Use peerStatDescriptor instead')
const PeerStat$json = const {
  '1': 'PeerStat',
  '2': const [
    const {'1': 'peer_ip', '3': 1, '4': 1, '5': 12, '10': 'peerIp'},
    const {'1': 'port', '3': 2, '4': 1, '5': 13, '10': 'port'},
    const {'1': 'node_chain_state', '3': 3, '4': 1, '5': 11, '6': '.qrl.NodeChainState', '10': 'nodeChainState'},
  ],
};

/// Descriptor for `PeerStat`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List peerStatDescriptor = $convert.base64Decode('CghQZWVyU3RhdBIXCgdwZWVyX2lwGAEgASgMUgZwZWVySXASEgoEcG9ydBgCIAEoDVIEcG9ydBI9ChBub2RlX2NoYWluX3N0YXRlGAMgASgLMhMucXJsLk5vZGVDaGFpblN0YXRlUg5ub2RlQ2hhaW5TdGF0ZQ==');
@$core.Deprecated('Use nodeChainStateDescriptor instead')
const NodeChainState$json = const {
  '1': 'NodeChainState',
  '2': const [
    const {'1': 'block_number', '3': 1, '4': 1, '5': 4, '10': 'blockNumber'},
    const {'1': 'header_hash', '3': 2, '4': 1, '5': 12, '10': 'headerHash'},
    const {'1': 'cumulative_difficulty', '3': 3, '4': 1, '5': 12, '10': 'cumulativeDifficulty'},
    const {'1': 'version', '3': 4, '4': 1, '5': 9, '10': 'version'},
    const {'1': 'timestamp', '3': 5, '4': 1, '5': 4, '10': 'timestamp'},
  ],
};

/// Descriptor for `NodeChainState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodeChainStateDescriptor = $convert.base64Decode('Cg5Ob2RlQ2hhaW5TdGF0ZRIhCgxibG9ja19udW1iZXIYASABKARSC2Jsb2NrTnVtYmVyEh8KC2hlYWRlcl9oYXNoGAIgASgMUgpoZWFkZXJIYXNoEjMKFWN1bXVsYXRpdmVfZGlmZmljdWx0eRgDIAEoDFIUY3VtdWxhdGl2ZURpZmZpY3VsdHkSGAoHdmVyc2lvbhgEIAEoCVIHdmVyc2lvbhIcCgl0aW1lc3RhbXAYBSABKARSCXRpbWVzdGFtcA==');
@$core.Deprecated('Use nodeHeaderHashDescriptor instead')
const NodeHeaderHash$json = const {
  '1': 'NodeHeaderHash',
  '2': const [
    const {'1': 'block_number', '3': 1, '4': 1, '5': 4, '10': 'blockNumber'},
    const {'1': 'headerhashes', '3': 2, '4': 3, '5': 12, '10': 'headerhashes'},
  ],
};

/// Descriptor for `NodeHeaderHash`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodeHeaderHashDescriptor = $convert.base64Decode('Cg5Ob2RlSGVhZGVySGFzaBIhCgxibG9ja19udW1iZXIYASABKARSC2Jsb2NrTnVtYmVyEiIKDGhlYWRlcmhhc2hlcxgCIAMoDFIMaGVhZGVyaGFzaGVz');
@$core.Deprecated('Use p2PAcknowledgementDescriptor instead')
const P2PAcknowledgement$json = const {
  '1': 'P2PAcknowledgement',
  '2': const [
    const {'1': 'bytes_processed', '3': 1, '4': 1, '5': 13, '10': 'bytesProcessed'},
  ],
};

/// Descriptor for `P2PAcknowledgement`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List p2PAcknowledgementDescriptor = $convert.base64Decode('ChJQMlBBY2tub3dsZWRnZW1lbnQSJwoPYnl0ZXNfcHJvY2Vzc2VkGAEgASgNUg5ieXRlc1Byb2Nlc3NlZA==');
@$core.Deprecated('Use peerInfoDescriptor instead')
const PeerInfo$json = const {
  '1': 'PeerInfo',
  '2': const [
    const {'1': 'peer_ip', '3': 1, '4': 1, '5': 12, '10': 'peerIp'},
    const {'1': 'port', '3': 2, '4': 1, '5': 13, '10': 'port'},
    const {'1': 'banned_timestamp', '3': 3, '4': 1, '5': 13, '10': 'bannedTimestamp'},
    const {'1': 'credibility', '3': 4, '4': 1, '5': 13, '10': 'credibility'},
    const {'1': 'last_connections_timestamp', '3': 5, '4': 3, '5': 13, '10': 'lastConnectionsTimestamp'},
  ],
};

/// Descriptor for `PeerInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List peerInfoDescriptor = $convert.base64Decode('CghQZWVySW5mbxIXCgdwZWVyX2lwGAEgASgMUgZwZWVySXASEgoEcG9ydBgCIAEoDVIEcG9ydBIpChBiYW5uZWRfdGltZXN0YW1wGAMgASgNUg9iYW5uZWRUaW1lc3RhbXASIAoLY3JlZGliaWxpdHkYBCABKA1SC2NyZWRpYmlsaXR5EjwKGmxhc3RfY29ubmVjdGlvbnNfdGltZXN0YW1wGAUgAygNUhhsYXN0Q29ubmVjdGlvbnNUaW1lc3RhbXA=');
@$core.Deprecated('Use peersDescriptor instead')
const Peers$json = const {
  '1': 'Peers',
  '2': const [
    const {'1': 'peer_info_list', '3': 1, '4': 3, '5': 11, '6': '.qrl.PeerInfo', '10': 'peerInfoList'},
  ],
};

/// Descriptor for `Peers`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List peersDescriptor = $convert.base64Decode('CgVQZWVycxIzCg5wZWVyX2luZm9fbGlzdBgBIAMoCzINLnFybC5QZWVySW5mb1IMcGVlckluZm9MaXN0');
