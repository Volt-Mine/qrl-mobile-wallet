///
//  Generated code. Do not modify.
//  source: qrl.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'qrl.pb.dart' as $0;
export 'qrl.pb.dart';

class PublicAPIClient extends $grpc.Client {
  static final _$getNodeState =
      $grpc.ClientMethod<$0.GetNodeStateReq, $0.GetNodeStateResp>(
          '/qrl.PublicAPI/GetNodeState',
          ($0.GetNodeStateReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetNodeStateResp.fromBuffer(value));
  static final _$getKnownPeers =
      $grpc.ClientMethod<$0.GetKnownPeersReq, $0.GetKnownPeersResp>(
          '/qrl.PublicAPI/GetKnownPeers',
          ($0.GetKnownPeersReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetKnownPeersResp.fromBuffer(value));
  static final _$getPeersStat =
      $grpc.ClientMethod<$0.GetPeersStatReq, $0.GetPeersStatResp>(
          '/qrl.PublicAPI/GetPeersStat',
          ($0.GetPeersStatReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetPeersStatResp.fromBuffer(value));
  static final _$getStats = $grpc.ClientMethod<$0.GetStatsReq, $0.GetStatsResp>(
      '/qrl.PublicAPI/GetStats',
      ($0.GetStatsReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetStatsResp.fromBuffer(value));
  static final _$getAddressState =
      $grpc.ClientMethod<$0.GetAddressStateReq, $0.GetAddressStateResp>(
          '/qrl.PublicAPI/GetAddressState',
          ($0.GetAddressStateReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetAddressStateResp.fromBuffer(value));
  static final _$getObject =
      $grpc.ClientMethod<$0.GetObjectReq, $0.GetObjectResp>(
          '/qrl.PublicAPI/GetObject',
          ($0.GetObjectReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.GetObjectResp.fromBuffer(value));
  static final _$getLatestData =
      $grpc.ClientMethod<$0.GetLatestDataReq, $0.GetLatestDataResp>(
          '/qrl.PublicAPI/GetLatestData',
          ($0.GetLatestDataReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetLatestDataResp.fromBuffer(value));
  static final _$pushTransaction =
      $grpc.ClientMethod<$0.PushTransactionReq, $0.PushTransactionResp>(
          '/qrl.PublicAPI/PushTransaction',
          ($0.PushTransactionReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.PushTransactionResp.fromBuffer(value));
  static final _$transferCoins =
      $grpc.ClientMethod<$0.TransferCoinsReq, $0.TransferCoinsResp>(
          '/qrl.PublicAPI/TransferCoins',
          ($0.TransferCoinsReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.TransferCoinsResp.fromBuffer(value));
  static final _$getAddressFromPK =
      $grpc.ClientMethod<$0.GetAddressFromPKReq, $0.GetAddressFromPKResp>(
          '/qrl.PublicAPI/GetAddressFromPK',
          ($0.GetAddressFromPKReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetAddressFromPKResp.fromBuffer(value));
  static final _$getMessageTxn =
      $grpc.ClientMethod<$0.MessageTxnReq, $0.TransferCoinsResp>(
          '/qrl.PublicAPI/GetMessageTxn',
          ($0.MessageTxnReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.TransferCoinsResp.fromBuffer(value));
  static final _$getTokenTxn =
      $grpc.ClientMethod<$0.TokenTxnReq, $0.TransferCoinsResp>(
          '/qrl.PublicAPI/GetTokenTxn',
          ($0.TokenTxnReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.TransferCoinsResp.fromBuffer(value));
  static final _$getTransferTokenTxn =
      $grpc.ClientMethod<$0.TransferTokenTxnReq, $0.TransferCoinsResp>(
          '/qrl.PublicAPI/GetTransferTokenTxn',
          ($0.TransferTokenTxnReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.TransferCoinsResp.fromBuffer(value));
  static final _$getSlaveTxn =
      $grpc.ClientMethod<$0.SlaveTxnReq, $0.TransferCoinsResp>(
          '/qrl.PublicAPI/GetSlaveTxn',
          ($0.SlaveTxnReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.TransferCoinsResp.fromBuffer(value));

  PublicAPIClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.GetNodeStateResp> getNodeState(
      $0.GetNodeStateReq request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getNodeState, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetKnownPeersResp> getKnownPeers(
      $0.GetKnownPeersReq request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getKnownPeers, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetPeersStatResp> getPeersStat(
      $0.GetPeersStatReq request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPeersStat, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetStatsResp> getStats($0.GetStatsReq request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getStats, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetAddressStateResp> getAddressState(
      $0.GetAddressStateReq request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAddressState, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetObjectResp> getObject($0.GetObjectReq request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getObject, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetLatestDataResp> getLatestData(
      $0.GetLatestDataReq request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getLatestData, request, options: options);
  }

  $grpc.ResponseFuture<$0.PushTransactionResp> pushTransaction(
      $0.PushTransactionReq request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$pushTransaction, request, options: options);
  }

  $grpc.ResponseFuture<$0.TransferCoinsResp> transferCoins(
      $0.TransferCoinsReq request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$transferCoins, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetAddressFromPKResp> getAddressFromPK(
      $0.GetAddressFromPKReq request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAddressFromPK, request, options: options);
  }

  $grpc.ResponseFuture<$0.TransferCoinsResp> getMessageTxn(
      $0.MessageTxnReq request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMessageTxn, request, options: options);
  }

  $grpc.ResponseFuture<$0.TransferCoinsResp> getTokenTxn($0.TokenTxnReq request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTokenTxn, request, options: options);
  }

  $grpc.ResponseFuture<$0.TransferCoinsResp> getTransferTokenTxn(
      $0.TransferTokenTxnReq request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTransferTokenTxn, request, options: options);
  }

  $grpc.ResponseFuture<$0.TransferCoinsResp> getSlaveTxn($0.SlaveTxnReq request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSlaveTxn, request, options: options);
  }
}

abstract class PublicAPIServiceBase extends $grpc.Service {
  $core.String get $name => 'qrl.PublicAPI';

  PublicAPIServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GetNodeStateReq, $0.GetNodeStateResp>(
        'GetNodeState',
        getNodeState_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetNodeStateReq.fromBuffer(value),
        ($0.GetNodeStateResp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetKnownPeersReq, $0.GetKnownPeersResp>(
        'GetKnownPeers',
        getKnownPeers_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetKnownPeersReq.fromBuffer(value),
        ($0.GetKnownPeersResp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetPeersStatReq, $0.GetPeersStatResp>(
        'GetPeersStat',
        getPeersStat_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetPeersStatReq.fromBuffer(value),
        ($0.GetPeersStatResp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetStatsReq, $0.GetStatsResp>(
        'GetStats',
        getStats_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetStatsReq.fromBuffer(value),
        ($0.GetStatsResp value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.GetAddressStateReq, $0.GetAddressStateResp>(
            'GetAddressState',
            getAddressState_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.GetAddressStateReq.fromBuffer(value),
            ($0.GetAddressStateResp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetObjectReq, $0.GetObjectResp>(
        'GetObject',
        getObject_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetObjectReq.fromBuffer(value),
        ($0.GetObjectResp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetLatestDataReq, $0.GetLatestDataResp>(
        'GetLatestData',
        getLatestData_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetLatestDataReq.fromBuffer(value),
        ($0.GetLatestDataResp value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.PushTransactionReq, $0.PushTransactionResp>(
            'PushTransaction',
            pushTransaction_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.PushTransactionReq.fromBuffer(value),
            ($0.PushTransactionResp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.TransferCoinsReq, $0.TransferCoinsResp>(
        'TransferCoins',
        transferCoins_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.TransferCoinsReq.fromBuffer(value),
        ($0.TransferCoinsResp value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.GetAddressFromPKReq, $0.GetAddressFromPKResp>(
            'GetAddressFromPK',
            getAddressFromPK_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.GetAddressFromPKReq.fromBuffer(value),
            ($0.GetAddressFromPKResp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MessageTxnReq, $0.TransferCoinsResp>(
        'GetMessageTxn',
        getMessageTxn_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MessageTxnReq.fromBuffer(value),
        ($0.TransferCoinsResp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.TokenTxnReq, $0.TransferCoinsResp>(
        'GetTokenTxn',
        getTokenTxn_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.TokenTxnReq.fromBuffer(value),
        ($0.TransferCoinsResp value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.TransferTokenTxnReq, $0.TransferCoinsResp>(
            'GetTransferTokenTxn',
            getTransferTokenTxn_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.TransferTokenTxnReq.fromBuffer(value),
            ($0.TransferCoinsResp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SlaveTxnReq, $0.TransferCoinsResp>(
        'GetSlaveTxn',
        getSlaveTxn_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SlaveTxnReq.fromBuffer(value),
        ($0.TransferCoinsResp value) => value.writeToBuffer()));
  }

  $async.Future<$0.GetNodeStateResp> getNodeState_Pre(
      $grpc.ServiceCall call, $async.Future<$0.GetNodeStateReq> request) async {
    return getNodeState(call, await request);
  }

  $async.Future<$0.GetKnownPeersResp> getKnownPeers_Pre($grpc.ServiceCall call,
      $async.Future<$0.GetKnownPeersReq> request) async {
    return getKnownPeers(call, await request);
  }

  $async.Future<$0.GetPeersStatResp> getPeersStat_Pre(
      $grpc.ServiceCall call, $async.Future<$0.GetPeersStatReq> request) async {
    return getPeersStat(call, await request);
  }

  $async.Future<$0.GetStatsResp> getStats_Pre(
      $grpc.ServiceCall call, $async.Future<$0.GetStatsReq> request) async {
    return getStats(call, await request);
  }

  $async.Future<$0.GetAddressStateResp> getAddressState_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetAddressStateReq> request) async {
    return getAddressState(call, await request);
  }

  $async.Future<$0.GetObjectResp> getObject_Pre(
      $grpc.ServiceCall call, $async.Future<$0.GetObjectReq> request) async {
    return getObject(call, await request);
  }

  $async.Future<$0.GetLatestDataResp> getLatestData_Pre($grpc.ServiceCall call,
      $async.Future<$0.GetLatestDataReq> request) async {
    return getLatestData(call, await request);
  }

  $async.Future<$0.PushTransactionResp> pushTransaction_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.PushTransactionReq> request) async {
    return pushTransaction(call, await request);
  }

  $async.Future<$0.TransferCoinsResp> transferCoins_Pre($grpc.ServiceCall call,
      $async.Future<$0.TransferCoinsReq> request) async {
    return transferCoins(call, await request);
  }

  $async.Future<$0.GetAddressFromPKResp> getAddressFromPK_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetAddressFromPKReq> request) async {
    return getAddressFromPK(call, await request);
  }

  $async.Future<$0.TransferCoinsResp> getMessageTxn_Pre(
      $grpc.ServiceCall call, $async.Future<$0.MessageTxnReq> request) async {
    return getMessageTxn(call, await request);
  }

  $async.Future<$0.TransferCoinsResp> getTokenTxn_Pre(
      $grpc.ServiceCall call, $async.Future<$0.TokenTxnReq> request) async {
    return getTokenTxn(call, await request);
  }

  $async.Future<$0.TransferCoinsResp> getTransferTokenTxn_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.TransferTokenTxnReq> request) async {
    return getTransferTokenTxn(call, await request);
  }

  $async.Future<$0.TransferCoinsResp> getSlaveTxn_Pre(
      $grpc.ServiceCall call, $async.Future<$0.SlaveTxnReq> request) async {
    return getSlaveTxn(call, await request);
  }

  $async.Future<$0.GetNodeStateResp> getNodeState(
      $grpc.ServiceCall call, $0.GetNodeStateReq request);
  $async.Future<$0.GetKnownPeersResp> getKnownPeers(
      $grpc.ServiceCall call, $0.GetKnownPeersReq request);
  $async.Future<$0.GetPeersStatResp> getPeersStat(
      $grpc.ServiceCall call, $0.GetPeersStatReq request);
  $async.Future<$0.GetStatsResp> getStats(
      $grpc.ServiceCall call, $0.GetStatsReq request);
  $async.Future<$0.GetAddressStateResp> getAddressState(
      $grpc.ServiceCall call, $0.GetAddressStateReq request);
  $async.Future<$0.GetObjectResp> getObject(
      $grpc.ServiceCall call, $0.GetObjectReq request);
  $async.Future<$0.GetLatestDataResp> getLatestData(
      $grpc.ServiceCall call, $0.GetLatestDataReq request);
  $async.Future<$0.PushTransactionResp> pushTransaction(
      $grpc.ServiceCall call, $0.PushTransactionReq request);
  $async.Future<$0.TransferCoinsResp> transferCoins(
      $grpc.ServiceCall call, $0.TransferCoinsReq request);
  $async.Future<$0.GetAddressFromPKResp> getAddressFromPK(
      $grpc.ServiceCall call, $0.GetAddressFromPKReq request);
  $async.Future<$0.TransferCoinsResp> getMessageTxn(
      $grpc.ServiceCall call, $0.MessageTxnReq request);
  $async.Future<$0.TransferCoinsResp> getTokenTxn(
      $grpc.ServiceCall call, $0.TokenTxnReq request);
  $async.Future<$0.TransferCoinsResp> getTransferTokenTxn(
      $grpc.ServiceCall call, $0.TransferTokenTxnReq request);
  $async.Future<$0.TransferCoinsResp> getSlaveTxn(
      $grpc.ServiceCall call, $0.SlaveTxnReq request);
}

class AdminAPIClient extends $grpc.Client {
  AdminAPIClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);
}

abstract class AdminAPIServiceBase extends $grpc.Service {
  $core.String get $name => 'qrl.AdminAPI';

  AdminAPIServiceBase() {}
}
