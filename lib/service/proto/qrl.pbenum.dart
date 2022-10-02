///
//  Generated code. Do not modify.
//  source: qrl.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class GetLatestDataReq_Filter extends $pb.ProtobufEnum {
  static const GetLatestDataReq_Filter ALL = GetLatestDataReq_Filter._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ALL');
  static const GetLatestDataReq_Filter BLOCKHEADERS = GetLatestDataReq_Filter._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BLOCKHEADERS');
  static const GetLatestDataReq_Filter TRANSACTIONS = GetLatestDataReq_Filter._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TRANSACTIONS');
  static const GetLatestDataReq_Filter TRANSACTIONS_UNCONFIRMED = GetLatestDataReq_Filter._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TRANSACTIONS_UNCONFIRMED');

  static const $core.List<GetLatestDataReq_Filter> values = <GetLatestDataReq_Filter> [
    ALL,
    BLOCKHEADERS,
    TRANSACTIONS,
    TRANSACTIONS_UNCONFIRMED,
  ];

  static final $core.Map<$core.int, GetLatestDataReq_Filter> _byValue = $pb.ProtobufEnum.initByValue(values);
  static GetLatestDataReq_Filter? valueOf($core.int value) => _byValue[value];

  const GetLatestDataReq_Filter._($core.int v, $core.String n) : super(v, n);
}

class PushTransactionResp_ResponseCode extends $pb.ProtobufEnum {
  static const PushTransactionResp_ResponseCode UNKNOWN = PushTransactionResp_ResponseCode._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UNKNOWN');
  static const PushTransactionResp_ResponseCode ERROR = PushTransactionResp_ResponseCode._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ERROR');
  static const PushTransactionResp_ResponseCode VALIDATION_FAILED = PushTransactionResp_ResponseCode._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'VALIDATION_FAILED');
  static const PushTransactionResp_ResponseCode SUBMITTED = PushTransactionResp_ResponseCode._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SUBMITTED');

  static const $core.List<PushTransactionResp_ResponseCode> values = <PushTransactionResp_ResponseCode> [
    UNKNOWN,
    ERROR,
    VALIDATION_FAILED,
    SUBMITTED,
  ];

  static final $core.Map<$core.int, PushTransactionResp_ResponseCode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PushTransactionResp_ResponseCode? valueOf($core.int value) => _byValue[value];

  const PushTransactionResp_ResponseCode._($core.int v, $core.String n) : super(v, n);
}

class NodeInfo_State extends $pb.ProtobufEnum {
  static const NodeInfo_State UNKNOWN = NodeInfo_State._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UNKNOWN');
  static const NodeInfo_State UNSYNCED = NodeInfo_State._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UNSYNCED');
  static const NodeInfo_State SYNCING = NodeInfo_State._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SYNCING');
  static const NodeInfo_State SYNCED = NodeInfo_State._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SYNCED');
  static const NodeInfo_State FORKED = NodeInfo_State._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FORKED');

  static const $core.List<NodeInfo_State> values = <NodeInfo_State> [
    UNKNOWN,
    UNSYNCED,
    SYNCING,
    SYNCED,
    FORKED,
  ];

  static final $core.Map<$core.int, NodeInfo_State> _byValue = $pb.ProtobufEnum.initByValue(values);
  static NodeInfo_State? valueOf($core.int value) => _byValue[value];

  const NodeInfo_State._($core.int v, $core.String n) : super(v, n);
}

