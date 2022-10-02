///
//  Generated code. Do not modify.
//  source: qrl.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'qrl.pbenum.dart';

export 'qrl.pbenum.dart';

class Empty extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Empty', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qrl'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  Empty._() : super();
  factory Empty() => create();
  factory Empty.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Empty.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Empty clone() => Empty()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Empty copyWith(void Function(Empty) updates) => super.copyWith((message) => updates(message as Empty)) as Empty; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Empty create() => Empty._();
  Empty createEmptyInstance() => create();
  static $pb.PbList<Empty> createRepeated() => $pb.PbList<Empty>();
  @$core.pragma('dart2js:noInline')
  static Empty getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Empty>(create);
  static Empty? _defaultInstance;
}

class GetNodeStateReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetNodeStateReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qrl'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetNodeStateReq._() : super();
  factory GetNodeStateReq() => create();
  factory GetNodeStateReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetNodeStateReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetNodeStateReq clone() => GetNodeStateReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetNodeStateReq copyWith(void Function(GetNodeStateReq) updates) => super.copyWith((message) => updates(message as GetNodeStateReq)) as GetNodeStateReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetNodeStateReq create() => GetNodeStateReq._();
  GetNodeStateReq createEmptyInstance() => create();
  static $pb.PbList<GetNodeStateReq> createRepeated() => $pb.PbList<GetNodeStateReq>();
  @$core.pragma('dart2js:noInline')
  static GetNodeStateReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetNodeStateReq>(create);
  static GetNodeStateReq? _defaultInstance;
}

class GetNodeStateResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetNodeStateResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qrl'), createEmptyInstance: create)
    ..aOM<NodeInfo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'info', subBuilder: NodeInfo.create)
    ..hasRequiredFields = false
  ;

  GetNodeStateResp._() : super();
  factory GetNodeStateResp({
    NodeInfo? info,
  }) {
    final _result = create();
    if (info != null) {
      _result.info = info;
    }
    return _result;
  }
  factory GetNodeStateResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetNodeStateResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetNodeStateResp clone() => GetNodeStateResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetNodeStateResp copyWith(void Function(GetNodeStateResp) updates) => super.copyWith((message) => updates(message as GetNodeStateResp)) as GetNodeStateResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetNodeStateResp create() => GetNodeStateResp._();
  GetNodeStateResp createEmptyInstance() => create();
  static $pb.PbList<GetNodeStateResp> createRepeated() => $pb.PbList<GetNodeStateResp>();
  @$core.pragma('dart2js:noInline')
  static GetNodeStateResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetNodeStateResp>(create);
  static GetNodeStateResp? _defaultInstance;

  @$pb.TagNumber(1)
  NodeInfo get info => $_getN(0);
  @$pb.TagNumber(1)
  set info(NodeInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearInfo() => clearField(1);
  @$pb.TagNumber(1)
  NodeInfo ensureInfo() => $_ensure(0);
}

class GetKnownPeersReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetKnownPeersReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qrl'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetKnownPeersReq._() : super();
  factory GetKnownPeersReq() => create();
  factory GetKnownPeersReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetKnownPeersReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetKnownPeersReq clone() => GetKnownPeersReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetKnownPeersReq copyWith(void Function(GetKnownPeersReq) updates) => super.copyWith((message) => updates(message as GetKnownPeersReq)) as GetKnownPeersReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetKnownPeersReq create() => GetKnownPeersReq._();
  GetKnownPeersReq createEmptyInstance() => create();
  static $pb.PbList<GetKnownPeersReq> createRepeated() => $pb.PbList<GetKnownPeersReq>();
  @$core.pragma('dart2js:noInline')
  static GetKnownPeersReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetKnownPeersReq>(create);
  static GetKnownPeersReq? _defaultInstance;
}

class GetKnownPeersResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetKnownPeersResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qrl'), createEmptyInstance: create)
    ..aOM<NodeInfo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nodeInfo', subBuilder: NodeInfo.create)
    ..pc<Peer>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'knownPeers', $pb.PbFieldType.PM, subBuilder: Peer.create)
    ..hasRequiredFields = false
  ;

  GetKnownPeersResp._() : super();
  factory GetKnownPeersResp({
    NodeInfo? nodeInfo,
    $core.Iterable<Peer>? knownPeers,
  }) {
    final _result = create();
    if (nodeInfo != null) {
      _result.nodeInfo = nodeInfo;
    }
    if (knownPeers != null) {
      _result.knownPeers.addAll(knownPeers);
    }
    return _result;
  }
  factory GetKnownPeersResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetKnownPeersResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetKnownPeersResp clone() => GetKnownPeersResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetKnownPeersResp copyWith(void Function(GetKnownPeersResp) updates) => super.copyWith((message) => updates(message as GetKnownPeersResp)) as GetKnownPeersResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetKnownPeersResp create() => GetKnownPeersResp._();
  GetKnownPeersResp createEmptyInstance() => create();
  static $pb.PbList<GetKnownPeersResp> createRepeated() => $pb.PbList<GetKnownPeersResp>();
  @$core.pragma('dart2js:noInline')
  static GetKnownPeersResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetKnownPeersResp>(create);
  static GetKnownPeersResp? _defaultInstance;

  @$pb.TagNumber(1)
  NodeInfo get nodeInfo => $_getN(0);
  @$pb.TagNumber(1)
  set nodeInfo(NodeInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasNodeInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearNodeInfo() => clearField(1);
  @$pb.TagNumber(1)
  NodeInfo ensureNodeInfo() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<Peer> get knownPeers => $_getList(1);
}

class GetPeersStatReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetPeersStatReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qrl'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetPeersStatReq._() : super();
  factory GetPeersStatReq() => create();
  factory GetPeersStatReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPeersStatReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPeersStatReq clone() => GetPeersStatReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPeersStatReq copyWith(void Function(GetPeersStatReq) updates) => super.copyWith((message) => updates(message as GetPeersStatReq)) as GetPeersStatReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetPeersStatReq create() => GetPeersStatReq._();
  GetPeersStatReq createEmptyInstance() => create();
  static $pb.PbList<GetPeersStatReq> createRepeated() => $pb.PbList<GetPeersStatReq>();
  @$core.pragma('dart2js:noInline')
  static GetPeersStatReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPeersStatReq>(create);
  static GetPeersStatReq? _defaultInstance;
}

class GetPeersStatResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetPeersStatResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qrl'), createEmptyInstance: create)
    ..pc<PeerStat>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'peersStat', $pb.PbFieldType.PM, subBuilder: PeerStat.create)
    ..hasRequiredFields = false
  ;

  GetPeersStatResp._() : super();
  factory GetPeersStatResp({
    $core.Iterable<PeerStat>? peersStat,
  }) {
    final _result = create();
    if (peersStat != null) {
      _result.peersStat.addAll(peersStat);
    }
    return _result;
  }
  factory GetPeersStatResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPeersStatResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPeersStatResp clone() => GetPeersStatResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPeersStatResp copyWith(void Function(GetPeersStatResp) updates) => super.copyWith((message) => updates(message as GetPeersStatResp)) as GetPeersStatResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetPeersStatResp create() => GetPeersStatResp._();
  GetPeersStatResp createEmptyInstance() => create();
  static $pb.PbList<GetPeersStatResp> createRepeated() => $pb.PbList<GetPeersStatResp>();
  @$core.pragma('dart2js:noInline')
  static GetPeersStatResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPeersStatResp>(create);
  static GetPeersStatResp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<PeerStat> get peersStat => $_getList(0);
}

enum GetBlockReq_Query {
  index_, 
  afterHash, 
  notSet
}

class GetBlockReq extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, GetBlockReq_Query> _GetBlockReq_QueryByTag = {
    1 : GetBlockReq_Query.index_,
    2 : GetBlockReq_Query.afterHash,
    0 : GetBlockReq_Query.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetBlockReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qrl'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'index', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'afterHash', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  GetBlockReq._() : super();
  factory GetBlockReq({
    $fixnum.Int64? index,
    $core.List<$core.int>? afterHash,
  }) {
    final _result = create();
    if (index != null) {
      _result.index = index;
    }
    if (afterHash != null) {
      _result.afterHash = afterHash;
    }
    return _result;
  }
  factory GetBlockReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetBlockReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetBlockReq clone() => GetBlockReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetBlockReq copyWith(void Function(GetBlockReq) updates) => super.copyWith((message) => updates(message as GetBlockReq)) as GetBlockReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetBlockReq create() => GetBlockReq._();
  GetBlockReq createEmptyInstance() => create();
  static $pb.PbList<GetBlockReq> createRepeated() => $pb.PbList<GetBlockReq>();
  @$core.pragma('dart2js:noInline')
  static GetBlockReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetBlockReq>(create);
  static GetBlockReq? _defaultInstance;

  GetBlockReq_Query whichQuery() => _GetBlockReq_QueryByTag[$_whichOneof(0)]!;
  void clearQuery() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $fixnum.Int64 get index => $_getI64(0);
  @$pb.TagNumber(1)
  set index($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIndex() => $_has(0);
  @$pb.TagNumber(1)
  void clearIndex() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get afterHash => $_getN(1);
  @$pb.TagNumber(2)
  set afterHash($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAfterHash() => $_has(1);
  @$pb.TagNumber(2)
  void clearAfterHash() => clearField(2);
}

class GetBlockResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetBlockResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qrl'), createEmptyInstance: create)
    ..aOM<NodeInfo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nodeInfo', subBuilder: NodeInfo.create)
    ..aOM<Block>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'block', subBuilder: Block.create)
    ..hasRequiredFields = false
  ;

  GetBlockResp._() : super();
  factory GetBlockResp({
    NodeInfo? nodeInfo,
    Block? block,
  }) {
    final _result = create();
    if (nodeInfo != null) {
      _result.nodeInfo = nodeInfo;
    }
    if (block != null) {
      _result.block = block;
    }
    return _result;
  }
  factory GetBlockResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetBlockResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetBlockResp clone() => GetBlockResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetBlockResp copyWith(void Function(GetBlockResp) updates) => super.copyWith((message) => updates(message as GetBlockResp)) as GetBlockResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetBlockResp create() => GetBlockResp._();
  GetBlockResp createEmptyInstance() => create();
  static $pb.PbList<GetBlockResp> createRepeated() => $pb.PbList<GetBlockResp>();
  @$core.pragma('dart2js:noInline')
  static GetBlockResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetBlockResp>(create);
  static GetBlockResp? _defaultInstance;

  @$pb.TagNumber(1)
  NodeInfo get nodeInfo => $_getN(0);
  @$pb.TagNumber(1)
  set nodeInfo(NodeInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasNodeInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearNodeInfo() => clearField(1);
  @$pb.TagNumber(1)
  NodeInfo ensureNodeInfo() => $_ensure(0);

  @$pb.TagNumber(2)
  Block get block => $_getN(1);
  @$pb.TagNumber(2)
  set block(Block v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasBlock() => $_has(1);
  @$pb.TagNumber(2)
  void clearBlock() => clearField(2);
  @$pb.TagNumber(2)
  Block ensureBlock() => $_ensure(1);
}

class GetStatsReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetStatsReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qrl'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'includeTimeseries')
    ..hasRequiredFields = false
  ;

  GetStatsReq._() : super();
  factory GetStatsReq({
    $core.bool? includeTimeseries,
  }) {
    final _result = create();
    if (includeTimeseries != null) {
      _result.includeTimeseries = includeTimeseries;
    }
    return _result;
  }
  factory GetStatsReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetStatsReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetStatsReq clone() => GetStatsReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetStatsReq copyWith(void Function(GetStatsReq) updates) => super.copyWith((message) => updates(message as GetStatsReq)) as GetStatsReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetStatsReq create() => GetStatsReq._();
  GetStatsReq createEmptyInstance() => create();
  static $pb.PbList<GetStatsReq> createRepeated() => $pb.PbList<GetStatsReq>();
  @$core.pragma('dart2js:noInline')
  static GetStatsReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetStatsReq>(create);
  static GetStatsReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get includeTimeseries => $_getBF(0);
  @$pb.TagNumber(1)
  set includeTimeseries($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIncludeTimeseries() => $_has(0);
  @$pb.TagNumber(1)
  void clearIncludeTimeseries() => clearField(1);
}

class GetStatsResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetStatsResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qrl'), createEmptyInstance: create)
    ..aOM<NodeInfo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nodeInfo', subBuilder: NodeInfo.create)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'epoch', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uptimeNetwork', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'blockLastReward', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'blockTimeMean', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'blockTimeSd', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'coinsTotalSupply', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'coinsEmitted', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..pc<BlockDataPoint>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'blockTimeseries', $pb.PbFieldType.PM, subBuilder: BlockDataPoint.create)
    ..hasRequiredFields = false
  ;

  GetStatsResp._() : super();
  factory GetStatsResp({
    NodeInfo? nodeInfo,
    $fixnum.Int64? epoch,
    $fixnum.Int64? uptimeNetwork,
    $fixnum.Int64? blockLastReward,
    $fixnum.Int64? blockTimeMean,
    $fixnum.Int64? blockTimeSd,
    $fixnum.Int64? coinsTotalSupply,
    $fixnum.Int64? coinsEmitted,
    $core.Iterable<BlockDataPoint>? blockTimeseries,
  }) {
    final _result = create();
    if (nodeInfo != null) {
      _result.nodeInfo = nodeInfo;
    }
    if (epoch != null) {
      _result.epoch = epoch;
    }
    if (uptimeNetwork != null) {
      _result.uptimeNetwork = uptimeNetwork;
    }
    if (blockLastReward != null) {
      _result.blockLastReward = blockLastReward;
    }
    if (blockTimeMean != null) {
      _result.blockTimeMean = blockTimeMean;
    }
    if (blockTimeSd != null) {
      _result.blockTimeSd = blockTimeSd;
    }
    if (coinsTotalSupply != null) {
      _result.coinsTotalSupply = coinsTotalSupply;
    }
    if (coinsEmitted != null) {
      _result.coinsEmitted = coinsEmitted;
    }
    if (blockTimeseries != null) {
      _result.blockTimeseries.addAll(blockTimeseries);
    }
    return _result;
  }
  factory GetStatsResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetStatsResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetStatsResp clone() => GetStatsResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetStatsResp copyWith(void Function(GetStatsResp) updates) => super.copyWith((message) => updates(message as GetStatsResp)) as GetStatsResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetStatsResp create() => GetStatsResp._();
  GetStatsResp createEmptyInstance() => create();
  static $pb.PbList<GetStatsResp> createRepeated() => $pb.PbList<GetStatsResp>();
  @$core.pragma('dart2js:noInline')
  static GetStatsResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetStatsResp>(create);
  static GetStatsResp? _defaultInstance;

  @$pb.TagNumber(1)
  NodeInfo get nodeInfo => $_getN(0);
  @$pb.TagNumber(1)
  set nodeInfo(NodeInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasNodeInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearNodeInfo() => clearField(1);
  @$pb.TagNumber(1)
  NodeInfo ensureNodeInfo() => $_ensure(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get epoch => $_getI64(1);
  @$pb.TagNumber(2)
  set epoch($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEpoch() => $_has(1);
  @$pb.TagNumber(2)
  void clearEpoch() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get uptimeNetwork => $_getI64(2);
  @$pb.TagNumber(3)
  set uptimeNetwork($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUptimeNetwork() => $_has(2);
  @$pb.TagNumber(3)
  void clearUptimeNetwork() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get blockLastReward => $_getI64(3);
  @$pb.TagNumber(4)
  set blockLastReward($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBlockLastReward() => $_has(3);
  @$pb.TagNumber(4)
  void clearBlockLastReward() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get blockTimeMean => $_getI64(4);
  @$pb.TagNumber(5)
  set blockTimeMean($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasBlockTimeMean() => $_has(4);
  @$pb.TagNumber(5)
  void clearBlockTimeMean() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get blockTimeSd => $_getI64(5);
  @$pb.TagNumber(6)
  set blockTimeSd($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasBlockTimeSd() => $_has(5);
  @$pb.TagNumber(6)
  void clearBlockTimeSd() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get coinsTotalSupply => $_getI64(6);
  @$pb.TagNumber(7)
  set coinsTotalSupply($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasCoinsTotalSupply() => $_has(6);
  @$pb.TagNumber(7)
  void clearCoinsTotalSupply() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get coinsEmitted => $_getI64(7);
  @$pb.TagNumber(8)
  set coinsEmitted($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasCoinsEmitted() => $_has(7);
  @$pb.TagNumber(8)
  void clearCoinsEmitted() => clearField(8);

  @$pb.TagNumber(9)
  $core.List<BlockDataPoint> get blockTimeseries => $_getList(8);
}

class GetAddressFromPKReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetAddressFromPKReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qrl'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pk', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  GetAddressFromPKReq._() : super();
  factory GetAddressFromPKReq({
    $core.List<$core.int>? pk,
  }) {
    final _result = create();
    if (pk != null) {
      _result.pk = pk;
    }
    return _result;
  }
  factory GetAddressFromPKReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAddressFromPKReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAddressFromPKReq clone() => GetAddressFromPKReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAddressFromPKReq copyWith(void Function(GetAddressFromPKReq) updates) => super.copyWith((message) => updates(message as GetAddressFromPKReq)) as GetAddressFromPKReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAddressFromPKReq create() => GetAddressFromPKReq._();
  GetAddressFromPKReq createEmptyInstance() => create();
  static $pb.PbList<GetAddressFromPKReq> createRepeated() => $pb.PbList<GetAddressFromPKReq>();
  @$core.pragma('dart2js:noInline')
  static GetAddressFromPKReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAddressFromPKReq>(create);
  static GetAddressFromPKReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get pk => $_getN(0);
  @$pb.TagNumber(1)
  set pk($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPk() => $_has(0);
  @$pb.TagNumber(1)
  void clearPk() => clearField(1);
}

class GetAddressFromPKResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetAddressFromPKResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qrl'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  GetAddressFromPKResp._() : super();
  factory GetAddressFromPKResp({
    $core.List<$core.int>? address,
  }) {
    final _result = create();
    if (address != null) {
      _result.address = address;
    }
    return _result;
  }
  factory GetAddressFromPKResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAddressFromPKResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAddressFromPKResp clone() => GetAddressFromPKResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAddressFromPKResp copyWith(void Function(GetAddressFromPKResp) updates) => super.copyWith((message) => updates(message as GetAddressFromPKResp)) as GetAddressFromPKResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAddressFromPKResp create() => GetAddressFromPKResp._();
  GetAddressFromPKResp createEmptyInstance() => create();
  static $pb.PbList<GetAddressFromPKResp> createRepeated() => $pb.PbList<GetAddressFromPKResp>();
  @$core.pragma('dart2js:noInline')
  static GetAddressFromPKResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAddressFromPKResp>(create);
  static GetAddressFromPKResp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get address => $_getN(0);
  @$pb.TagNumber(1)
  set address($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);
}

class BlockDataPoint extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BlockDataPoint', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qrl'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'number', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'difficulty')
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timestamp', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timeLast', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timeMovavg', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.double>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hashPower', $pb.PbFieldType.OF)
    ..a<$core.List<$core.int>>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'headerHash', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'headerHashPrev', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  BlockDataPoint._() : super();
  factory BlockDataPoint({
    $fixnum.Int64? number,
    $core.String? difficulty,
    $fixnum.Int64? timestamp,
    $fixnum.Int64? timeLast,
    $fixnum.Int64? timeMovavg,
    $core.double? hashPower,
    $core.List<$core.int>? headerHash,
    $core.List<$core.int>? headerHashPrev,
  }) {
    final _result = create();
    if (number != null) {
      _result.number = number;
    }
    if (difficulty != null) {
      _result.difficulty = difficulty;
    }
    if (timestamp != null) {
      _result.timestamp = timestamp;
    }
    if (timeLast != null) {
      _result.timeLast = timeLast;
    }
    if (timeMovavg != null) {
      _result.timeMovavg = timeMovavg;
    }
    if (hashPower != null) {
      _result.hashPower = hashPower;
    }
    if (headerHash != null) {
      _result.headerHash = headerHash;
    }
    if (headerHashPrev != null) {
      _result.headerHashPrev = headerHashPrev;
    }
    return _result;
  }
  factory BlockDataPoint.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BlockDataPoint.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BlockDataPoint clone() => BlockDataPoint()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BlockDataPoint copyWith(void Function(BlockDataPoint) updates) => super.copyWith((message) => updates(message as BlockDataPoint)) as BlockDataPoint; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BlockDataPoint create() => BlockDataPoint._();
  BlockDataPoint createEmptyInstance() => create();
  static $pb.PbList<BlockDataPoint> createRepeated() => $pb.PbList<BlockDataPoint>();
  @$core.pragma('dart2js:noInline')
  static BlockDataPoint getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BlockDataPoint>(create);
  static BlockDataPoint? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get number => $_getI64(0);
  @$pb.TagNumber(1)
  set number($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNumber() => $_has(0);
  @$pb.TagNumber(1)
  void clearNumber() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get difficulty => $_getSZ(1);
  @$pb.TagNumber(2)
  set difficulty($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDifficulty() => $_has(1);
  @$pb.TagNumber(2)
  void clearDifficulty() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get timestamp => $_getI64(2);
  @$pb.TagNumber(3)
  set timestamp($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTimestamp() => $_has(2);
  @$pb.TagNumber(3)
  void clearTimestamp() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get timeLast => $_getI64(3);
  @$pb.TagNumber(4)
  set timeLast($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTimeLast() => $_has(3);
  @$pb.TagNumber(4)
  void clearTimeLast() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get timeMovavg => $_getI64(4);
  @$pb.TagNumber(5)
  set timeMovavg($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTimeMovavg() => $_has(4);
  @$pb.TagNumber(5)
  void clearTimeMovavg() => clearField(5);

  @$pb.TagNumber(6)
  $core.double get hashPower => $_getN(5);
  @$pb.TagNumber(6)
  set hashPower($core.double v) { $_setFloat(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasHashPower() => $_has(5);
  @$pb.TagNumber(6)
  void clearHashPower() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<$core.int> get headerHash => $_getN(6);
  @$pb.TagNumber(7)
  set headerHash($core.List<$core.int> v) { $_setBytes(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasHeaderHash() => $_has(6);
  @$pb.TagNumber(7)
  void clearHeaderHash() => clearField(7);

  @$pb.TagNumber(8)
  $core.List<$core.int> get headerHashPrev => $_getN(7);
  @$pb.TagNumber(8)
  set headerHashPrev($core.List<$core.int> v) { $_setBytes(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasHeaderHashPrev() => $_has(7);
  @$pb.TagNumber(8)
  void clearHeaderHashPrev() => clearField(8);
}

class GetAddressStateReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetAddressStateReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qrl'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  GetAddressStateReq._() : super();
  factory GetAddressStateReq({
    $core.List<$core.int>? address,
  }) {
    final _result = create();
    if (address != null) {
      _result.address = address;
    }
    return _result;
  }
  factory GetAddressStateReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAddressStateReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAddressStateReq clone() => GetAddressStateReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAddressStateReq copyWith(void Function(GetAddressStateReq) updates) => super.copyWith((message) => updates(message as GetAddressStateReq)) as GetAddressStateReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAddressStateReq create() => GetAddressStateReq._();
  GetAddressStateReq createEmptyInstance() => create();
  static $pb.PbList<GetAddressStateReq> createRepeated() => $pb.PbList<GetAddressStateReq>();
  @$core.pragma('dart2js:noInline')
  static GetAddressStateReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAddressStateReq>(create);
  static GetAddressStateReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get address => $_getN(0);
  @$pb.TagNumber(1)
  set address($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);
}

class GetAddressStateResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetAddressStateResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qrl'), createEmptyInstance: create)
    ..aOM<AddressState>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'state', subBuilder: AddressState.create)
    ..hasRequiredFields = false
  ;

  GetAddressStateResp._() : super();
  factory GetAddressStateResp({
    AddressState? state,
  }) {
    final _result = create();
    if (state != null) {
      _result.state = state;
    }
    return _result;
  }
  factory GetAddressStateResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAddressStateResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAddressStateResp clone() => GetAddressStateResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAddressStateResp copyWith(void Function(GetAddressStateResp) updates) => super.copyWith((message) => updates(message as GetAddressStateResp)) as GetAddressStateResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAddressStateResp create() => GetAddressStateResp._();
  GetAddressStateResp createEmptyInstance() => create();
  static $pb.PbList<GetAddressStateResp> createRepeated() => $pb.PbList<GetAddressStateResp>();
  @$core.pragma('dart2js:noInline')
  static GetAddressStateResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAddressStateResp>(create);
  static GetAddressStateResp? _defaultInstance;

  @$pb.TagNumber(1)
  AddressState get state => $_getN(0);
  @$pb.TagNumber(1)
  set state(AddressState v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasState() => $_has(0);
  @$pb.TagNumber(1)
  void clearState() => clearField(1);
  @$pb.TagNumber(1)
  AddressState ensureState() => $_ensure(0);
}

class GetObjectReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetObjectReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qrl'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'query', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  GetObjectReq._() : super();
  factory GetObjectReq({
    $core.List<$core.int>? query,
  }) {
    final _result = create();
    if (query != null) {
      _result.query = query;
    }
    return _result;
  }
  factory GetObjectReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetObjectReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetObjectReq clone() => GetObjectReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetObjectReq copyWith(void Function(GetObjectReq) updates) => super.copyWith((message) => updates(message as GetObjectReq)) as GetObjectReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetObjectReq create() => GetObjectReq._();
  GetObjectReq createEmptyInstance() => create();
  static $pb.PbList<GetObjectReq> createRepeated() => $pb.PbList<GetObjectReq>();
  @$core.pragma('dart2js:noInline')
  static GetObjectReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetObjectReq>(create);
  static GetObjectReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get query => $_getN(0);
  @$pb.TagNumber(1)
  set query($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasQuery() => $_has(0);
  @$pb.TagNumber(1)
  void clearQuery() => clearField(1);
}

enum GetObjectResp_Result {
  addressState, 
  transaction, 
  blockExtended, 
  notSet
}

class GetObjectResp extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, GetObjectResp_Result> _GetObjectResp_ResultByTag = {
    2 : GetObjectResp_Result.addressState,
    3 : GetObjectResp_Result.transaction,
    4 : GetObjectResp_Result.blockExtended,
    0 : GetObjectResp_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetObjectResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qrl'), createEmptyInstance: create)
    ..oo(0, [2, 3, 4])
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'found')
    ..aOM<AddressState>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addressState', subBuilder: AddressState.create)
    ..aOM<TransactionExtended>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'transaction', subBuilder: TransactionExtended.create)
    ..aOM<BlockExtended>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'blockExtended', subBuilder: BlockExtended.create)
    ..hasRequiredFields = false
  ;

  GetObjectResp._() : super();
  factory GetObjectResp({
    $core.bool? found,
    AddressState? addressState,
    TransactionExtended? transaction,
    BlockExtended? blockExtended,
  }) {
    final _result = create();
    if (found != null) {
      _result.found = found;
    }
    if (addressState != null) {
      _result.addressState = addressState;
    }
    if (transaction != null) {
      _result.transaction = transaction;
    }
    if (blockExtended != null) {
      _result.blockExtended = blockExtended;
    }
    return _result;
  }
  factory GetObjectResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetObjectResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetObjectResp clone() => GetObjectResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetObjectResp copyWith(void Function(GetObjectResp) updates) => super.copyWith((message) => updates(message as GetObjectResp)) as GetObjectResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetObjectResp create() => GetObjectResp._();
  GetObjectResp createEmptyInstance() => create();
  static $pb.PbList<GetObjectResp> createRepeated() => $pb.PbList<GetObjectResp>();
  @$core.pragma('dart2js:noInline')
  static GetObjectResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetObjectResp>(create);
  static GetObjectResp? _defaultInstance;

  GetObjectResp_Result whichResult() => _GetObjectResp_ResultByTag[$_whichOneof(0)]!;
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.bool get found => $_getBF(0);
  @$pb.TagNumber(1)
  set found($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFound() => $_has(0);
  @$pb.TagNumber(1)
  void clearFound() => clearField(1);

  @$pb.TagNumber(2)
  AddressState get addressState => $_getN(1);
  @$pb.TagNumber(2)
  set addressState(AddressState v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasAddressState() => $_has(1);
  @$pb.TagNumber(2)
  void clearAddressState() => clearField(2);
  @$pb.TagNumber(2)
  AddressState ensureAddressState() => $_ensure(1);

  @$pb.TagNumber(3)
  TransactionExtended get transaction => $_getN(2);
  @$pb.TagNumber(3)
  set transaction(TransactionExtended v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasTransaction() => $_has(2);
  @$pb.TagNumber(3)
  void clearTransaction() => clearField(3);
  @$pb.TagNumber(3)
  TransactionExtended ensureTransaction() => $_ensure(2);

  @$pb.TagNumber(4)
  BlockExtended get blockExtended => $_getN(3);
  @$pb.TagNumber(4)
  set blockExtended(BlockExtended v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasBlockExtended() => $_has(3);
  @$pb.TagNumber(4)
  void clearBlockExtended() => clearField(4);
  @$pb.TagNumber(4)
  BlockExtended ensureBlockExtended() => $_ensure(3);
}

class GetLatestDataReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetLatestDataReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qrl'), createEmptyInstance: create)
    ..e<GetLatestDataReq_Filter>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'filter', $pb.PbFieldType.OE, defaultOrMaker: GetLatestDataReq_Filter.ALL, valueOf: GetLatestDataReq_Filter.valueOf, enumValues: GetLatestDataReq_Filter.values)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'offset', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'quantity', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  GetLatestDataReq._() : super();
  factory GetLatestDataReq({
    GetLatestDataReq_Filter? filter,
    $core.int? offset,
    $core.int? quantity,
  }) {
    final _result = create();
    if (filter != null) {
      _result.filter = filter;
    }
    if (offset != null) {
      _result.offset = offset;
    }
    if (quantity != null) {
      _result.quantity = quantity;
    }
    return _result;
  }
  factory GetLatestDataReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetLatestDataReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetLatestDataReq clone() => GetLatestDataReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetLatestDataReq copyWith(void Function(GetLatestDataReq) updates) => super.copyWith((message) => updates(message as GetLatestDataReq)) as GetLatestDataReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetLatestDataReq create() => GetLatestDataReq._();
  GetLatestDataReq createEmptyInstance() => create();
  static $pb.PbList<GetLatestDataReq> createRepeated() => $pb.PbList<GetLatestDataReq>();
  @$core.pragma('dart2js:noInline')
  static GetLatestDataReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetLatestDataReq>(create);
  static GetLatestDataReq? _defaultInstance;

  @$pb.TagNumber(1)
  GetLatestDataReq_Filter get filter => $_getN(0);
  @$pb.TagNumber(1)
  set filter(GetLatestDataReq_Filter v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFilter() => $_has(0);
  @$pb.TagNumber(1)
  void clearFilter() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get offset => $_getIZ(1);
  @$pb.TagNumber(2)
  set offset($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOffset() => $_has(1);
  @$pb.TagNumber(2)
  void clearOffset() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get quantity => $_getIZ(2);
  @$pb.TagNumber(3)
  set quantity($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasQuantity() => $_has(2);
  @$pb.TagNumber(3)
  void clearQuantity() => clearField(3);
}

class GetLatestDataResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetLatestDataResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qrl'), createEmptyInstance: create)
    ..pc<BlockHeaderExtended>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'blockheaders', $pb.PbFieldType.PM, subBuilder: BlockHeaderExtended.create)
    ..pc<TransactionExtended>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'transactions', $pb.PbFieldType.PM, subBuilder: TransactionExtended.create)
    ..pc<TransactionExtended>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'transactionsUnconfirmed', $pb.PbFieldType.PM, subBuilder: TransactionExtended.create)
    ..hasRequiredFields = false
  ;

  GetLatestDataResp._() : super();
  factory GetLatestDataResp({
    $core.Iterable<BlockHeaderExtended>? blockheaders,
    $core.Iterable<TransactionExtended>? transactions,
    $core.Iterable<TransactionExtended>? transactionsUnconfirmed,
  }) {
    final _result = create();
    if (blockheaders != null) {
      _result.blockheaders.addAll(blockheaders);
    }
    if (transactions != null) {
      _result.transactions.addAll(transactions);
    }
    if (transactionsUnconfirmed != null) {
      _result.transactionsUnconfirmed.addAll(transactionsUnconfirmed);
    }
    return _result;
  }
  factory GetLatestDataResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetLatestDataResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetLatestDataResp clone() => GetLatestDataResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetLatestDataResp copyWith(void Function(GetLatestDataResp) updates) => super.copyWith((message) => updates(message as GetLatestDataResp)) as GetLatestDataResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetLatestDataResp create() => GetLatestDataResp._();
  GetLatestDataResp createEmptyInstance() => create();
  static $pb.PbList<GetLatestDataResp> createRepeated() => $pb.PbList<GetLatestDataResp>();
  @$core.pragma('dart2js:noInline')
  static GetLatestDataResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetLatestDataResp>(create);
  static GetLatestDataResp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<BlockHeaderExtended> get blockheaders => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<TransactionExtended> get transactions => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<TransactionExtended> get transactionsUnconfirmed => $_getList(2);
}

class TransferCoinsReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TransferCoinsReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qrl'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'masterAddr', $pb.PbFieldType.OY)
    ..p<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addressesTo', $pb.PbFieldType.PY)
    ..p<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amounts', $pb.PbFieldType.KU6)
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'messageData', $pb.PbFieldType.OY)
    ..a<$fixnum.Int64>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fee', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'xmssPk', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  TransferCoinsReq._() : super();
  factory TransferCoinsReq({
    $core.List<$core.int>? masterAddr,
    $core.Iterable<$core.List<$core.int>>? addressesTo,
    $core.Iterable<$fixnum.Int64>? amounts,
    $core.List<$core.int>? messageData,
    $fixnum.Int64? fee,
    $core.List<$core.int>? xmssPk,
  }) {
    final _result = create();
    if (masterAddr != null) {
      _result.masterAddr = masterAddr;
    }
    if (addressesTo != null) {
      _result.addressesTo.addAll(addressesTo);
    }
    if (amounts != null) {
      _result.amounts.addAll(amounts);
    }
    if (messageData != null) {
      _result.messageData = messageData;
    }
    if (fee != null) {
      _result.fee = fee;
    }
    if (xmssPk != null) {
      _result.xmssPk = xmssPk;
    }
    return _result;
  }
  factory TransferCoinsReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TransferCoinsReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TransferCoinsReq clone() => TransferCoinsReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TransferCoinsReq copyWith(void Function(TransferCoinsReq) updates) => super.copyWith((message) => updates(message as TransferCoinsReq)) as TransferCoinsReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TransferCoinsReq create() => TransferCoinsReq._();
  TransferCoinsReq createEmptyInstance() => create();
  static $pb.PbList<TransferCoinsReq> createRepeated() => $pb.PbList<TransferCoinsReq>();
  @$core.pragma('dart2js:noInline')
  static TransferCoinsReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TransferCoinsReq>(create);
  static TransferCoinsReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get masterAddr => $_getN(0);
  @$pb.TagNumber(1)
  set masterAddr($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMasterAddr() => $_has(0);
  @$pb.TagNumber(1)
  void clearMasterAddr() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.List<$core.int>> get addressesTo => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$fixnum.Int64> get amounts => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<$core.int> get messageData => $_getN(3);
  @$pb.TagNumber(4)
  set messageData($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMessageData() => $_has(3);
  @$pb.TagNumber(4)
  void clearMessageData() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get fee => $_getI64(4);
  @$pb.TagNumber(5)
  set fee($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasFee() => $_has(4);
  @$pb.TagNumber(5)
  void clearFee() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.int> get xmssPk => $_getN(5);
  @$pb.TagNumber(6)
  set xmssPk($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasXmssPk() => $_has(5);
  @$pb.TagNumber(6)
  void clearXmssPk() => clearField(6);
}

class TransferCoinsResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TransferCoinsResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qrl'), createEmptyInstance: create)
    ..aOM<TransactionExtended>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'extendedTransactionUnsigned', subBuilder: TransactionExtended.create)
    ..hasRequiredFields = false
  ;

  TransferCoinsResp._() : super();
  factory TransferCoinsResp({
    TransactionExtended? extendedTransactionUnsigned,
  }) {
    final _result = create();
    if (extendedTransactionUnsigned != null) {
      _result.extendedTransactionUnsigned = extendedTransactionUnsigned;
    }
    return _result;
  }
  factory TransferCoinsResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TransferCoinsResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TransferCoinsResp clone() => TransferCoinsResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TransferCoinsResp copyWith(void Function(TransferCoinsResp) updates) => super.copyWith((message) => updates(message as TransferCoinsResp)) as TransferCoinsResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TransferCoinsResp create() => TransferCoinsResp._();
  TransferCoinsResp createEmptyInstance() => create();
  static $pb.PbList<TransferCoinsResp> createRepeated() => $pb.PbList<TransferCoinsResp>();
  @$core.pragma('dart2js:noInline')
  static TransferCoinsResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TransferCoinsResp>(create);
  static TransferCoinsResp? _defaultInstance;

  @$pb.TagNumber(1)
  TransactionExtended get extendedTransactionUnsigned => $_getN(0);
  @$pb.TagNumber(1)
  set extendedTransactionUnsigned(TransactionExtended v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasExtendedTransactionUnsigned() => $_has(0);
  @$pb.TagNumber(1)
  void clearExtendedTransactionUnsigned() => clearField(1);
  @$pb.TagNumber(1)
  TransactionExtended ensureExtendedTransactionUnsigned() => $_ensure(0);
}

class PushTransactionReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PushTransactionReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qrl'), createEmptyInstance: create)
    ..aOM<Transaction>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'transactionSigned', subBuilder: Transaction.create)
    ..hasRequiredFields = false
  ;

  PushTransactionReq._() : super();
  factory PushTransactionReq({
    Transaction? transactionSigned,
  }) {
    final _result = create();
    if (transactionSigned != null) {
      _result.transactionSigned = transactionSigned;
    }
    return _result;
  }
  factory PushTransactionReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PushTransactionReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PushTransactionReq clone() => PushTransactionReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PushTransactionReq copyWith(void Function(PushTransactionReq) updates) => super.copyWith((message) => updates(message as PushTransactionReq)) as PushTransactionReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PushTransactionReq create() => PushTransactionReq._();
  PushTransactionReq createEmptyInstance() => create();
  static $pb.PbList<PushTransactionReq> createRepeated() => $pb.PbList<PushTransactionReq>();
  @$core.pragma('dart2js:noInline')
  static PushTransactionReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PushTransactionReq>(create);
  static PushTransactionReq? _defaultInstance;

  @$pb.TagNumber(1)
  Transaction get transactionSigned => $_getN(0);
  @$pb.TagNumber(1)
  set transactionSigned(Transaction v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTransactionSigned() => $_has(0);
  @$pb.TagNumber(1)
  void clearTransactionSigned() => clearField(1);
  @$pb.TagNumber(1)
  Transaction ensureTransactionSigned() => $_ensure(0);
}

class PushTransactionResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PushTransactionResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qrl'), createEmptyInstance: create)
    ..e<PushTransactionResp_ResponseCode>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'errorCode', $pb.PbFieldType.OE, defaultOrMaker: PushTransactionResp_ResponseCode.UNKNOWN, valueOf: PushTransactionResp_ResponseCode.valueOf, enumValues: PushTransactionResp_ResponseCode.values)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'errorDescription')
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txHash', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  PushTransactionResp._() : super();
  factory PushTransactionResp({
    PushTransactionResp_ResponseCode? errorCode,
    $core.String? errorDescription,
    $core.List<$core.int>? txHash,
  }) {
    final _result = create();
    if (errorCode != null) {
      _result.errorCode = errorCode;
    }
    if (errorDescription != null) {
      _result.errorDescription = errorDescription;
    }
    if (txHash != null) {
      _result.txHash = txHash;
    }
    return _result;
  }
  factory PushTransactionResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PushTransactionResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PushTransactionResp clone() => PushTransactionResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PushTransactionResp copyWith(void Function(PushTransactionResp) updates) => super.copyWith((message) => updates(message as PushTransactionResp)) as PushTransactionResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PushTransactionResp create() => PushTransactionResp._();
  PushTransactionResp createEmptyInstance() => create();
  static $pb.PbList<PushTransactionResp> createRepeated() => $pb.PbList<PushTransactionResp>();
  @$core.pragma('dart2js:noInline')
  static PushTransactionResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PushTransactionResp>(create);
  static PushTransactionResp? _defaultInstance;

  @$pb.TagNumber(1)
  PushTransactionResp_ResponseCode get errorCode => $_getN(0);
  @$pb.TagNumber(1)
  set errorCode(PushTransactionResp_ResponseCode v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasErrorCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearErrorCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get errorDescription => $_getSZ(1);
  @$pb.TagNumber(2)
  set errorDescription($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasErrorDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearErrorDescription() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get txHash => $_getN(2);
  @$pb.TagNumber(3)
  set txHash($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTxHash() => $_has(2);
  @$pb.TagNumber(3)
  void clearTxHash() => clearField(3);
}

class MessageTxnReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MessageTxnReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qrl'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'masterAddr', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message', $pb.PbFieldType.OY)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fee', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'xmssPk', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  MessageTxnReq._() : super();
  factory MessageTxnReq({
    $core.List<$core.int>? masterAddr,
    $core.List<$core.int>? message,
    $fixnum.Int64? fee,
    $core.List<$core.int>? xmssPk,
  }) {
    final _result = create();
    if (masterAddr != null) {
      _result.masterAddr = masterAddr;
    }
    if (message != null) {
      _result.message = message;
    }
    if (fee != null) {
      _result.fee = fee;
    }
    if (xmssPk != null) {
      _result.xmssPk = xmssPk;
    }
    return _result;
  }
  factory MessageTxnReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MessageTxnReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MessageTxnReq clone() => MessageTxnReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MessageTxnReq copyWith(void Function(MessageTxnReq) updates) => super.copyWith((message) => updates(message as MessageTxnReq)) as MessageTxnReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MessageTxnReq create() => MessageTxnReq._();
  MessageTxnReq createEmptyInstance() => create();
  static $pb.PbList<MessageTxnReq> createRepeated() => $pb.PbList<MessageTxnReq>();
  @$core.pragma('dart2js:noInline')
  static MessageTxnReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MessageTxnReq>(create);
  static MessageTxnReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get masterAddr => $_getN(0);
  @$pb.TagNumber(1)
  set masterAddr($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMasterAddr() => $_has(0);
  @$pb.TagNumber(1)
  void clearMasterAddr() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get message => $_getN(1);
  @$pb.TagNumber(2)
  set message($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get fee => $_getI64(2);
  @$pb.TagNumber(3)
  set fee($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFee() => $_has(2);
  @$pb.TagNumber(3)
  void clearFee() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get xmssPk => $_getN(3);
  @$pb.TagNumber(4)
  set xmssPk($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasXmssPk() => $_has(3);
  @$pb.TagNumber(4)
  void clearXmssPk() => clearField(4);
}

class TokenTxnReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TokenTxnReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qrl'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'masterAddr', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'symbol', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'owner', $pb.PbFieldType.OY)
    ..a<$fixnum.Int64>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'decimals', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..pc<AddressAmount>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'initialBalances', $pb.PbFieldType.PM, subBuilder: AddressAmount.create)
    ..a<$fixnum.Int64>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fee', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'xmssPk', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  TokenTxnReq._() : super();
  factory TokenTxnReq({
    $core.List<$core.int>? masterAddr,
    $core.List<$core.int>? symbol,
    $core.List<$core.int>? name,
    $core.List<$core.int>? owner,
    $fixnum.Int64? decimals,
    $core.Iterable<AddressAmount>? initialBalances,
    $fixnum.Int64? fee,
    $core.List<$core.int>? xmssPk,
  }) {
    final _result = create();
    if (masterAddr != null) {
      _result.masterAddr = masterAddr;
    }
    if (symbol != null) {
      _result.symbol = symbol;
    }
    if (name != null) {
      _result.name = name;
    }
    if (owner != null) {
      _result.owner = owner;
    }
    if (decimals != null) {
      _result.decimals = decimals;
    }
    if (initialBalances != null) {
      _result.initialBalances.addAll(initialBalances);
    }
    if (fee != null) {
      _result.fee = fee;
    }
    if (xmssPk != null) {
      _result.xmssPk = xmssPk;
    }
    return _result;
  }
  factory TokenTxnReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TokenTxnReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TokenTxnReq clone() => TokenTxnReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TokenTxnReq copyWith(void Function(TokenTxnReq) updates) => super.copyWith((message) => updates(message as TokenTxnReq)) as TokenTxnReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TokenTxnReq create() => TokenTxnReq._();
  TokenTxnReq createEmptyInstance() => create();
  static $pb.PbList<TokenTxnReq> createRepeated() => $pb.PbList<TokenTxnReq>();
  @$core.pragma('dart2js:noInline')
  static TokenTxnReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TokenTxnReq>(create);
  static TokenTxnReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get masterAddr => $_getN(0);
  @$pb.TagNumber(1)
  set masterAddr($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMasterAddr() => $_has(0);
  @$pb.TagNumber(1)
  void clearMasterAddr() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get symbol => $_getN(1);
  @$pb.TagNumber(2)
  set symbol($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSymbol() => $_has(1);
  @$pb.TagNumber(2)
  void clearSymbol() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get name => $_getN(2);
  @$pb.TagNumber(3)
  set name($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get owner => $_getN(3);
  @$pb.TagNumber(4)
  set owner($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasOwner() => $_has(3);
  @$pb.TagNumber(4)
  void clearOwner() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get decimals => $_getI64(4);
  @$pb.TagNumber(5)
  set decimals($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDecimals() => $_has(4);
  @$pb.TagNumber(5)
  void clearDecimals() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<AddressAmount> get initialBalances => $_getList(5);

  @$pb.TagNumber(7)
  $fixnum.Int64 get fee => $_getI64(6);
  @$pb.TagNumber(7)
  set fee($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasFee() => $_has(6);
  @$pb.TagNumber(7)
  void clearFee() => clearField(7);

  @$pb.TagNumber(8)
  $core.List<$core.int> get xmssPk => $_getN(7);
  @$pb.TagNumber(8)
  set xmssPk($core.List<$core.int> v) { $_setBytes(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasXmssPk() => $_has(7);
  @$pb.TagNumber(8)
  void clearXmssPk() => clearField(8);
}

class TransferTokenTxnReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TransferTokenTxnReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qrl'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'masterAddr', $pb.PbFieldType.OY)
    ..p<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addressesTo', $pb.PbFieldType.PY)
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tokenTxhash', $pb.PbFieldType.OY)
    ..p<$fixnum.Int64>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amounts', $pb.PbFieldType.KU6)
    ..a<$fixnum.Int64>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fee', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'xmssPk', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  TransferTokenTxnReq._() : super();
  factory TransferTokenTxnReq({
    $core.List<$core.int>? masterAddr,
    $core.Iterable<$core.List<$core.int>>? addressesTo,
    $core.List<$core.int>? tokenTxhash,
    $core.Iterable<$fixnum.Int64>? amounts,
    $fixnum.Int64? fee,
    $core.List<$core.int>? xmssPk,
  }) {
    final _result = create();
    if (masterAddr != null) {
      _result.masterAddr = masterAddr;
    }
    if (addressesTo != null) {
      _result.addressesTo.addAll(addressesTo);
    }
    if (tokenTxhash != null) {
      _result.tokenTxhash = tokenTxhash;
    }
    if (amounts != null) {
      _result.amounts.addAll(amounts);
    }
    if (fee != null) {
      _result.fee = fee;
    }
    if (xmssPk != null) {
      _result.xmssPk = xmssPk;
    }
    return _result;
  }
  factory TransferTokenTxnReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TransferTokenTxnReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TransferTokenTxnReq clone() => TransferTokenTxnReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TransferTokenTxnReq copyWith(void Function(TransferTokenTxnReq) updates) => super.copyWith((message) => updates(message as TransferTokenTxnReq)) as TransferTokenTxnReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TransferTokenTxnReq create() => TransferTokenTxnReq._();
  TransferTokenTxnReq createEmptyInstance() => create();
  static $pb.PbList<TransferTokenTxnReq> createRepeated() => $pb.PbList<TransferTokenTxnReq>();
  @$core.pragma('dart2js:noInline')
  static TransferTokenTxnReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TransferTokenTxnReq>(create);
  static TransferTokenTxnReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get masterAddr => $_getN(0);
  @$pb.TagNumber(1)
  set masterAddr($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMasterAddr() => $_has(0);
  @$pb.TagNumber(1)
  void clearMasterAddr() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.List<$core.int>> get addressesTo => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$core.int> get tokenTxhash => $_getN(2);
  @$pb.TagNumber(3)
  set tokenTxhash($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTokenTxhash() => $_has(2);
  @$pb.TagNumber(3)
  void clearTokenTxhash() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$fixnum.Int64> get amounts => $_getList(3);

  @$pb.TagNumber(5)
  $fixnum.Int64 get fee => $_getI64(4);
  @$pb.TagNumber(5)
  set fee($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasFee() => $_has(4);
  @$pb.TagNumber(5)
  void clearFee() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.int> get xmssPk => $_getN(5);
  @$pb.TagNumber(6)
  set xmssPk($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasXmssPk() => $_has(5);
  @$pb.TagNumber(6)
  void clearXmssPk() => clearField(6);
}

class SlaveTxnReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SlaveTxnReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qrl'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'masterAddr', $pb.PbFieldType.OY)
    ..p<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'slavePks', $pb.PbFieldType.PY)
    ..p<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessTypes', $pb.PbFieldType.KU3)
    ..a<$fixnum.Int64>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fee', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'xmssPk', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  SlaveTxnReq._() : super();
  factory SlaveTxnReq({
    $core.List<$core.int>? masterAddr,
    $core.Iterable<$core.List<$core.int>>? slavePks,
    $core.Iterable<$core.int>? accessTypes,
    $fixnum.Int64? fee,
    $core.List<$core.int>? xmssPk,
  }) {
    final _result = create();
    if (masterAddr != null) {
      _result.masterAddr = masterAddr;
    }
    if (slavePks != null) {
      _result.slavePks.addAll(slavePks);
    }
    if (accessTypes != null) {
      _result.accessTypes.addAll(accessTypes);
    }
    if (fee != null) {
      _result.fee = fee;
    }
    if (xmssPk != null) {
      _result.xmssPk = xmssPk;
    }
    return _result;
  }
  factory SlaveTxnReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SlaveTxnReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SlaveTxnReq clone() => SlaveTxnReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SlaveTxnReq copyWith(void Function(SlaveTxnReq) updates) => super.copyWith((message) => updates(message as SlaveTxnReq)) as SlaveTxnReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SlaveTxnReq create() => SlaveTxnReq._();
  SlaveTxnReq createEmptyInstance() => create();
  static $pb.PbList<SlaveTxnReq> createRepeated() => $pb.PbList<SlaveTxnReq>();
  @$core.pragma('dart2js:noInline')
  static SlaveTxnReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SlaveTxnReq>(create);
  static SlaveTxnReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get masterAddr => $_getN(0);
  @$pb.TagNumber(1)
  set masterAddr($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMasterAddr() => $_has(0);
  @$pb.TagNumber(1)
  void clearMasterAddr() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.List<$core.int>> get slavePks => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$core.int> get accessTypes => $_getList(2);

  @$pb.TagNumber(4)
  $fixnum.Int64 get fee => $_getI64(3);
  @$pb.TagNumber(4)
  set fee($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFee() => $_has(3);
  @$pb.TagNumber(4)
  void clearFee() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get xmssPk => $_getN(4);
  @$pb.TagNumber(5)
  set xmssPk($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasXmssPk() => $_has(4);
  @$pb.TagNumber(5)
  void clearXmssPk() => clearField(5);
}

class GetLocalAddressesReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetLocalAddressesReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qrl'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetLocalAddressesReq._() : super();
  factory GetLocalAddressesReq() => create();
  factory GetLocalAddressesReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetLocalAddressesReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetLocalAddressesReq clone() => GetLocalAddressesReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetLocalAddressesReq copyWith(void Function(GetLocalAddressesReq) updates) => super.copyWith((message) => updates(message as GetLocalAddressesReq)) as GetLocalAddressesReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetLocalAddressesReq create() => GetLocalAddressesReq._();
  GetLocalAddressesReq createEmptyInstance() => create();
  static $pb.PbList<GetLocalAddressesReq> createRepeated() => $pb.PbList<GetLocalAddressesReq>();
  @$core.pragma('dart2js:noInline')
  static GetLocalAddressesReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetLocalAddressesReq>(create);
  static GetLocalAddressesReq? _defaultInstance;
}

class GetLocalAddressesResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetLocalAddressesResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qrl'), createEmptyInstance: create)
    ..p<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addresses', $pb.PbFieldType.PY)
    ..hasRequiredFields = false
  ;

  GetLocalAddressesResp._() : super();
  factory GetLocalAddressesResp({
    $core.Iterable<$core.List<$core.int>>? addresses,
  }) {
    final _result = create();
    if (addresses != null) {
      _result.addresses.addAll(addresses);
    }
    return _result;
  }
  factory GetLocalAddressesResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetLocalAddressesResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetLocalAddressesResp clone() => GetLocalAddressesResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetLocalAddressesResp copyWith(void Function(GetLocalAddressesResp) updates) => super.copyWith((message) => updates(message as GetLocalAddressesResp)) as GetLocalAddressesResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetLocalAddressesResp create() => GetLocalAddressesResp._();
  GetLocalAddressesResp createEmptyInstance() => create();
  static $pb.PbList<GetLocalAddressesResp> createRepeated() => $pb.PbList<GetLocalAddressesResp>();
  @$core.pragma('dart2js:noInline')
  static GetLocalAddressesResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetLocalAddressesResp>(create);
  static GetLocalAddressesResp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.List<$core.int>> get addresses => $_getList(0);
}

class NodeInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'NodeInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qrl'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'version')
    ..e<NodeInfo_State>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'state', $pb.PbFieldType.OE, defaultOrMaker: NodeInfo_State.UNKNOWN, valueOf: NodeInfo_State.valueOf, enumValues: NodeInfo_State.values)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'numConnections', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'numKnownPeers', $pb.PbFieldType.OU3)
    ..a<$fixnum.Int64>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uptime', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'blockHeight', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'blockLastHash', $pb.PbFieldType.OY)
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'networkId')
    ..hasRequiredFields = false
  ;

  NodeInfo._() : super();
  factory NodeInfo({
    $core.String? version,
    NodeInfo_State? state,
    $core.int? numConnections,
    $core.int? numKnownPeers,
    $fixnum.Int64? uptime,
    $fixnum.Int64? blockHeight,
    $core.List<$core.int>? blockLastHash,
    $core.String? networkId,
  }) {
    final _result = create();
    if (version != null) {
      _result.version = version;
    }
    if (state != null) {
      _result.state = state;
    }
    if (numConnections != null) {
      _result.numConnections = numConnections;
    }
    if (numKnownPeers != null) {
      _result.numKnownPeers = numKnownPeers;
    }
    if (uptime != null) {
      _result.uptime = uptime;
    }
    if (blockHeight != null) {
      _result.blockHeight = blockHeight;
    }
    if (blockLastHash != null) {
      _result.blockLastHash = blockLastHash;
    }
    if (networkId != null) {
      _result.networkId = networkId;
    }
    return _result;
  }
  factory NodeInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NodeInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NodeInfo clone() => NodeInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NodeInfo copyWith(void Function(NodeInfo) updates) => super.copyWith((message) => updates(message as NodeInfo)) as NodeInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NodeInfo create() => NodeInfo._();
  NodeInfo createEmptyInstance() => create();
  static $pb.PbList<NodeInfo> createRepeated() => $pb.PbList<NodeInfo>();
  @$core.pragma('dart2js:noInline')
  static NodeInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NodeInfo>(create);
  static NodeInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get version => $_getSZ(0);
  @$pb.TagNumber(1)
  set version($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearVersion() => clearField(1);

  @$pb.TagNumber(2)
  NodeInfo_State get state => $_getN(1);
  @$pb.TagNumber(2)
  set state(NodeInfo_State v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasState() => $_has(1);
  @$pb.TagNumber(2)
  void clearState() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get numConnections => $_getIZ(2);
  @$pb.TagNumber(3)
  set numConnections($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNumConnections() => $_has(2);
  @$pb.TagNumber(3)
  void clearNumConnections() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get numKnownPeers => $_getIZ(3);
  @$pb.TagNumber(4)
  set numKnownPeers($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasNumKnownPeers() => $_has(3);
  @$pb.TagNumber(4)
  void clearNumKnownPeers() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get uptime => $_getI64(4);
  @$pb.TagNumber(5)
  set uptime($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasUptime() => $_has(4);
  @$pb.TagNumber(5)
  void clearUptime() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get blockHeight => $_getI64(5);
  @$pb.TagNumber(6)
  set blockHeight($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasBlockHeight() => $_has(5);
  @$pb.TagNumber(6)
  void clearBlockHeight() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<$core.int> get blockLastHash => $_getN(6);
  @$pb.TagNumber(7)
  set blockLastHash($core.List<$core.int> v) { $_setBytes(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasBlockLastHash() => $_has(6);
  @$pb.TagNumber(7)
  void clearBlockLastHash() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get networkId => $_getSZ(7);
  @$pb.TagNumber(8)
  set networkId($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasNetworkId() => $_has(7);
  @$pb.TagNumber(8)
  void clearNetworkId() => clearField(8);
}

class StoredPeers extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StoredPeers', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qrl'), createEmptyInstance: create)
    ..pc<Peer>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'peers', $pb.PbFieldType.PM, subBuilder: Peer.create)
    ..hasRequiredFields = false
  ;

  StoredPeers._() : super();
  factory StoredPeers({
    $core.Iterable<Peer>? peers,
  }) {
    final _result = create();
    if (peers != null) {
      _result.peers.addAll(peers);
    }
    return _result;
  }
  factory StoredPeers.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StoredPeers.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StoredPeers clone() => StoredPeers()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StoredPeers copyWith(void Function(StoredPeers) updates) => super.copyWith((message) => updates(message as StoredPeers)) as StoredPeers; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StoredPeers create() => StoredPeers._();
  StoredPeers createEmptyInstance() => create();
  static $pb.PbList<StoredPeers> createRepeated() => $pb.PbList<StoredPeers>();
  @$core.pragma('dart2js:noInline')
  static StoredPeers getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StoredPeers>(create);
  static StoredPeers? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Peer> get peers => $_getList(0);
}

class Peer extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Peer', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qrl'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ip')
    ..hasRequiredFields = false
  ;

  Peer._() : super();
  factory Peer({
    $core.String? ip,
  }) {
    final _result = create();
    if (ip != null) {
      _result.ip = ip;
    }
    return _result;
  }
  factory Peer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Peer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Peer clone() => Peer()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Peer copyWith(void Function(Peer) updates) => super.copyWith((message) => updates(message as Peer)) as Peer; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Peer create() => Peer._();
  Peer createEmptyInstance() => create();
  static $pb.PbList<Peer> createRepeated() => $pb.PbList<Peer>();
  @$core.pragma('dart2js:noInline')
  static Peer getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Peer>(create);
  static Peer? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get ip => $_getSZ(0);
  @$pb.TagNumber(1)
  set ip($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIp() => $_has(0);
  @$pb.TagNumber(1)
  void clearIp() => clearField(1);
}

class AddressState extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddressState', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qrl'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address', $pb.PbFieldType.OY)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'balance', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nonce', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..p<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'otsBitfield', $pb.PbFieldType.PY)
    ..p<$core.List<$core.int>>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'transactionHashes', $pb.PbFieldType.PY)
    ..m<$core.String, $fixnum.Int64>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tokens', entryClassName: 'AddressState.TokensEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OU6, packageName: const $pb.PackageName('qrl'))
    ..pc<LatticePK>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'latticePKList', $pb.PbFieldType.PM, protoName: 'latticePK_list', subBuilder: LatticePK.create)
    ..m<$core.String, $core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'slavePksAccessType', entryClassName: 'AddressState.SlavePksAccessTypeEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OU3, packageName: const $pb.PackageName('qrl'))
    ..a<$fixnum.Int64>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'otsCounter', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  AddressState._() : super();
  factory AddressState({
    $core.List<$core.int>? address,
    $fixnum.Int64? balance,
    $fixnum.Int64? nonce,
    $core.Iterable<$core.List<$core.int>>? otsBitfield,
    $core.Iterable<$core.List<$core.int>>? transactionHashes,
    $core.Map<$core.String, $fixnum.Int64>? tokens,
    $core.Iterable<LatticePK>? latticePKList,
    $core.Map<$core.String, $core.int>? slavePksAccessType,
    $fixnum.Int64? otsCounter,
  }) {
    final _result = create();
    if (address != null) {
      _result.address = address;
    }
    if (balance != null) {
      _result.balance = balance;
    }
    if (nonce != null) {
      _result.nonce = nonce;
    }
    if (otsBitfield != null) {
      _result.otsBitfield.addAll(otsBitfield);
    }
    if (transactionHashes != null) {
      _result.transactionHashes.addAll(transactionHashes);
    }
    if (tokens != null) {
      _result.tokens.addAll(tokens);
    }
    if (latticePKList != null) {
      _result.latticePKList.addAll(latticePKList);
    }
    if (slavePksAccessType != null) {
      _result.slavePksAccessType.addAll(slavePksAccessType);
    }
    if (otsCounter != null) {
      _result.otsCounter = otsCounter;
    }
    return _result;
  }
  factory AddressState.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddressState.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddressState clone() => AddressState()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddressState copyWith(void Function(AddressState) updates) => super.copyWith((message) => updates(message as AddressState)) as AddressState; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddressState create() => AddressState._();
  AddressState createEmptyInstance() => create();
  static $pb.PbList<AddressState> createRepeated() => $pb.PbList<AddressState>();
  @$core.pragma('dart2js:noInline')
  static AddressState getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddressState>(create);
  static AddressState? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get address => $_getN(0);
  @$pb.TagNumber(1)
  set address($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get balance => $_getI64(1);
  @$pb.TagNumber(2)
  set balance($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBalance() => $_has(1);
  @$pb.TagNumber(2)
  void clearBalance() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get nonce => $_getI64(2);
  @$pb.TagNumber(3)
  set nonce($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNonce() => $_has(2);
  @$pb.TagNumber(3)
  void clearNonce() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.List<$core.int>> get otsBitfield => $_getList(3);

  @$pb.TagNumber(5)
  $core.List<$core.List<$core.int>> get transactionHashes => $_getList(4);

  @$pb.TagNumber(6)
  $core.Map<$core.String, $fixnum.Int64> get tokens => $_getMap(5);

  @$pb.TagNumber(7)
  $core.List<LatticePK> get latticePKList => $_getList(6);

  @$pb.TagNumber(8)
  $core.Map<$core.String, $core.int> get slavePksAccessType => $_getMap(7);

  @$pb.TagNumber(9)
  $fixnum.Int64 get otsCounter => $_getI64(8);
  @$pb.TagNumber(9)
  set otsCounter($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasOtsCounter() => $_has(8);
  @$pb.TagNumber(9)
  void clearOtsCounter() => clearField(9);
}

class LatticePK extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LatticePK', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qrl'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txhash', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dilithiumPk', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'kyberPk', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  LatticePK._() : super();
  factory LatticePK({
    $core.List<$core.int>? txhash,
    $core.List<$core.int>? dilithiumPk,
    $core.List<$core.int>? kyberPk,
  }) {
    final _result = create();
    if (txhash != null) {
      _result.txhash = txhash;
    }
    if (dilithiumPk != null) {
      _result.dilithiumPk = dilithiumPk;
    }
    if (kyberPk != null) {
      _result.kyberPk = kyberPk;
    }
    return _result;
  }
  factory LatticePK.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LatticePK.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LatticePK clone() => LatticePK()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LatticePK copyWith(void Function(LatticePK) updates) => super.copyWith((message) => updates(message as LatticePK)) as LatticePK; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LatticePK create() => LatticePK._();
  LatticePK createEmptyInstance() => create();
  static $pb.PbList<LatticePK> createRepeated() => $pb.PbList<LatticePK>();
  @$core.pragma('dart2js:noInline')
  static LatticePK getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LatticePK>(create);
  static LatticePK? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get txhash => $_getN(0);
  @$pb.TagNumber(1)
  set txhash($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTxhash() => $_has(0);
  @$pb.TagNumber(1)
  void clearTxhash() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get dilithiumPk => $_getN(1);
  @$pb.TagNumber(2)
  set dilithiumPk($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDilithiumPk() => $_has(1);
  @$pb.TagNumber(2)
  void clearDilithiumPk() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get kyberPk => $_getN(2);
  @$pb.TagNumber(3)
  set kyberPk($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasKyberPk() => $_has(2);
  @$pb.TagNumber(3)
  void clearKyberPk() => clearField(3);
}

class AddressAmount extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddressAmount', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qrl'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address', $pb.PbFieldType.OY)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amount', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  AddressAmount._() : super();
  factory AddressAmount({
    $core.List<$core.int>? address,
    $fixnum.Int64? amount,
  }) {
    final _result = create();
    if (address != null) {
      _result.address = address;
    }
    if (amount != null) {
      _result.amount = amount;
    }
    return _result;
  }
  factory AddressAmount.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddressAmount.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddressAmount clone() => AddressAmount()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddressAmount copyWith(void Function(AddressAmount) updates) => super.copyWith((message) => updates(message as AddressAmount)) as AddressAmount; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddressAmount create() => AddressAmount._();
  AddressAmount createEmptyInstance() => create();
  static $pb.PbList<AddressAmount> createRepeated() => $pb.PbList<AddressAmount>();
  @$core.pragma('dart2js:noInline')
  static AddressAmount getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddressAmount>(create);
  static AddressAmount? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get address => $_getN(0);
  @$pb.TagNumber(1)
  set address($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get amount => $_getI64(1);
  @$pb.TagNumber(2)
  set amount($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAmount() => $_has(1);
  @$pb.TagNumber(2)
  void clearAmount() => clearField(2);
}

class BlockHeader extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BlockHeader', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qrl'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hashHeader', $pb.PbFieldType.OY)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'blockNumber', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timestampSeconds', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hashHeaderPrev', $pb.PbFieldType.OY)
    ..a<$fixnum.Int64>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rewardBlock', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rewardFee', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'merkleRoot', $pb.PbFieldType.OY)
    ..a<$core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'miningNonce', $pb.PbFieldType.OU3)
    ..a<$fixnum.Int64>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'extraNonce', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  BlockHeader._() : super();
  factory BlockHeader({
    $core.List<$core.int>? hashHeader,
    $fixnum.Int64? blockNumber,
    $fixnum.Int64? timestampSeconds,
    $core.List<$core.int>? hashHeaderPrev,
    $fixnum.Int64? rewardBlock,
    $fixnum.Int64? rewardFee,
    $core.List<$core.int>? merkleRoot,
    $core.int? miningNonce,
    $fixnum.Int64? extraNonce,
  }) {
    final _result = create();
    if (hashHeader != null) {
      _result.hashHeader = hashHeader;
    }
    if (blockNumber != null) {
      _result.blockNumber = blockNumber;
    }
    if (timestampSeconds != null) {
      _result.timestampSeconds = timestampSeconds;
    }
    if (hashHeaderPrev != null) {
      _result.hashHeaderPrev = hashHeaderPrev;
    }
    if (rewardBlock != null) {
      _result.rewardBlock = rewardBlock;
    }
    if (rewardFee != null) {
      _result.rewardFee = rewardFee;
    }
    if (merkleRoot != null) {
      _result.merkleRoot = merkleRoot;
    }
    if (miningNonce != null) {
      _result.miningNonce = miningNonce;
    }
    if (extraNonce != null) {
      _result.extraNonce = extraNonce;
    }
    return _result;
  }
  factory BlockHeader.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BlockHeader.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BlockHeader clone() => BlockHeader()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BlockHeader copyWith(void Function(BlockHeader) updates) => super.copyWith((message) => updates(message as BlockHeader)) as BlockHeader; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BlockHeader create() => BlockHeader._();
  BlockHeader createEmptyInstance() => create();
  static $pb.PbList<BlockHeader> createRepeated() => $pb.PbList<BlockHeader>();
  @$core.pragma('dart2js:noInline')
  static BlockHeader getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BlockHeader>(create);
  static BlockHeader? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get hashHeader => $_getN(0);
  @$pb.TagNumber(1)
  set hashHeader($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHashHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHashHeader() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get blockNumber => $_getI64(1);
  @$pb.TagNumber(2)
  set blockNumber($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBlockNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearBlockNumber() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get timestampSeconds => $_getI64(2);
  @$pb.TagNumber(3)
  set timestampSeconds($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTimestampSeconds() => $_has(2);
  @$pb.TagNumber(3)
  void clearTimestampSeconds() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get hashHeaderPrev => $_getN(3);
  @$pb.TagNumber(4)
  set hashHeaderPrev($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasHashHeaderPrev() => $_has(3);
  @$pb.TagNumber(4)
  void clearHashHeaderPrev() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get rewardBlock => $_getI64(4);
  @$pb.TagNumber(5)
  set rewardBlock($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasRewardBlock() => $_has(4);
  @$pb.TagNumber(5)
  void clearRewardBlock() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get rewardFee => $_getI64(5);
  @$pb.TagNumber(6)
  set rewardFee($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasRewardFee() => $_has(5);
  @$pb.TagNumber(6)
  void clearRewardFee() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<$core.int> get merkleRoot => $_getN(6);
  @$pb.TagNumber(7)
  set merkleRoot($core.List<$core.int> v) { $_setBytes(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasMerkleRoot() => $_has(6);
  @$pb.TagNumber(7)
  void clearMerkleRoot() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get miningNonce => $_getIZ(7);
  @$pb.TagNumber(8)
  set miningNonce($core.int v) { $_setUnsignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasMiningNonce() => $_has(7);
  @$pb.TagNumber(8)
  void clearMiningNonce() => clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get extraNonce => $_getI64(8);
  @$pb.TagNumber(9)
  set extraNonce($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasExtraNonce() => $_has(8);
  @$pb.TagNumber(9)
  void clearExtraNonce() => clearField(9);
}

class BlockHeaderExtended extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BlockHeaderExtended', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qrl'), createEmptyInstance: create)
    ..aOM<BlockHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: BlockHeader.create)
    ..aOM<TransactionCount>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'transactionCount', subBuilder: TransactionCount.create)
    ..hasRequiredFields = false
  ;

  BlockHeaderExtended._() : super();
  factory BlockHeaderExtended({
    BlockHeader? header,
    TransactionCount? transactionCount,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (transactionCount != null) {
      _result.transactionCount = transactionCount;
    }
    return _result;
  }
  factory BlockHeaderExtended.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BlockHeaderExtended.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BlockHeaderExtended clone() => BlockHeaderExtended()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BlockHeaderExtended copyWith(void Function(BlockHeaderExtended) updates) => super.copyWith((message) => updates(message as BlockHeaderExtended)) as BlockHeaderExtended; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BlockHeaderExtended create() => BlockHeaderExtended._();
  BlockHeaderExtended createEmptyInstance() => create();
  static $pb.PbList<BlockHeaderExtended> createRepeated() => $pb.PbList<BlockHeaderExtended>();
  @$core.pragma('dart2js:noInline')
  static BlockHeaderExtended getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BlockHeaderExtended>(create);
  static BlockHeaderExtended? _defaultInstance;

  @$pb.TagNumber(1)
  BlockHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(BlockHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  BlockHeader ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  TransactionCount get transactionCount => $_getN(1);
  @$pb.TagNumber(2)
  set transactionCount(TransactionCount v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasTransactionCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearTransactionCount() => clearField(2);
  @$pb.TagNumber(2)
  TransactionCount ensureTransactionCount() => $_ensure(1);
}

class TransactionCount extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TransactionCount', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qrl'), createEmptyInstance: create)
    ..m<$core.int, $core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'count', entryClassName: 'TransactionCount.CountEntry', keyFieldType: $pb.PbFieldType.OU3, valueFieldType: $pb.PbFieldType.OU3, packageName: const $pb.PackageName('qrl'))
    ..hasRequiredFields = false
  ;

  TransactionCount._() : super();
  factory TransactionCount({
    $core.Map<$core.int, $core.int>? count,
  }) {
    final _result = create();
    if (count != null) {
      _result.count.addAll(count);
    }
    return _result;
  }
  factory TransactionCount.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TransactionCount.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TransactionCount clone() => TransactionCount()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TransactionCount copyWith(void Function(TransactionCount) updates) => super.copyWith((message) => updates(message as TransactionCount)) as TransactionCount; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TransactionCount create() => TransactionCount._();
  TransactionCount createEmptyInstance() => create();
  static $pb.PbList<TransactionCount> createRepeated() => $pb.PbList<TransactionCount>();
  @$core.pragma('dart2js:noInline')
  static TransactionCount getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TransactionCount>(create);
  static TransactionCount? _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.int, $core.int> get count => $_getMap(0);
}

class TransactionExtended extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TransactionExtended', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qrl'), createEmptyInstance: create)
    ..aOM<BlockHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: BlockHeader.create)
    ..aOM<Transaction>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tx', subBuilder: Transaction.create)
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addrFrom', $pb.PbFieldType.OY)
    ..a<$fixnum.Int64>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'size', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timestampSeconds', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  TransactionExtended._() : super();
  factory TransactionExtended({
    BlockHeader? header,
    Transaction? tx,
    $core.List<$core.int>? addrFrom,
    $fixnum.Int64? size,
    $fixnum.Int64? timestampSeconds,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (tx != null) {
      _result.tx = tx;
    }
    if (addrFrom != null) {
      _result.addrFrom = addrFrom;
    }
    if (size != null) {
      _result.size = size;
    }
    if (timestampSeconds != null) {
      _result.timestampSeconds = timestampSeconds;
    }
    return _result;
  }
  factory TransactionExtended.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TransactionExtended.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TransactionExtended clone() => TransactionExtended()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TransactionExtended copyWith(void Function(TransactionExtended) updates) => super.copyWith((message) => updates(message as TransactionExtended)) as TransactionExtended; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TransactionExtended create() => TransactionExtended._();
  TransactionExtended createEmptyInstance() => create();
  static $pb.PbList<TransactionExtended> createRepeated() => $pb.PbList<TransactionExtended>();
  @$core.pragma('dart2js:noInline')
  static TransactionExtended getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TransactionExtended>(create);
  static TransactionExtended? _defaultInstance;

  @$pb.TagNumber(1)
  BlockHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(BlockHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  BlockHeader ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  Transaction get tx => $_getN(1);
  @$pb.TagNumber(2)
  set tx(Transaction v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasTx() => $_has(1);
  @$pb.TagNumber(2)
  void clearTx() => clearField(2);
  @$pb.TagNumber(2)
  Transaction ensureTx() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.List<$core.int> get addrFrom => $_getN(2);
  @$pb.TagNumber(3)
  set addrFrom($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAddrFrom() => $_has(2);
  @$pb.TagNumber(3)
  void clearAddrFrom() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get size => $_getI64(3);
  @$pb.TagNumber(4)
  set size($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSize() => $_has(3);
  @$pb.TagNumber(4)
  void clearSize() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get timestampSeconds => $_getI64(4);
  @$pb.TagNumber(5)
  set timestampSeconds($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTimestampSeconds() => $_has(4);
  @$pb.TagNumber(5)
  void clearTimestampSeconds() => clearField(5);
}

class BlockExtended extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BlockExtended', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qrl'), createEmptyInstance: create)
    ..aOM<BlockHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: BlockHeader.create)
    ..pc<TransactionExtended>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'extendedTransactions', $pb.PbFieldType.PM, subBuilder: TransactionExtended.create)
    ..pc<GenesisBalance>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'genesisBalance', $pb.PbFieldType.PM, subBuilder: GenesisBalance.create)
    ..a<$fixnum.Int64>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'size', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  BlockExtended._() : super();
  factory BlockExtended({
    BlockHeader? header,
    $core.Iterable<TransactionExtended>? extendedTransactions,
    $core.Iterable<GenesisBalance>? genesisBalance,
    $fixnum.Int64? size,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (extendedTransactions != null) {
      _result.extendedTransactions.addAll(extendedTransactions);
    }
    if (genesisBalance != null) {
      _result.genesisBalance.addAll(genesisBalance);
    }
    if (size != null) {
      _result.size = size;
    }
    return _result;
  }
  factory BlockExtended.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BlockExtended.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BlockExtended clone() => BlockExtended()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BlockExtended copyWith(void Function(BlockExtended) updates) => super.copyWith((message) => updates(message as BlockExtended)) as BlockExtended; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BlockExtended create() => BlockExtended._();
  BlockExtended createEmptyInstance() => create();
  static $pb.PbList<BlockExtended> createRepeated() => $pb.PbList<BlockExtended>();
  @$core.pragma('dart2js:noInline')
  static BlockExtended getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BlockExtended>(create);
  static BlockExtended? _defaultInstance;

  @$pb.TagNumber(1)
  BlockHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(BlockHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  BlockHeader ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<TransactionExtended> get extendedTransactions => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<GenesisBalance> get genesisBalance => $_getList(2);

  @$pb.TagNumber(4)
  $fixnum.Int64 get size => $_getI64(3);
  @$pb.TagNumber(4)
  set size($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSize() => $_has(3);
  @$pb.TagNumber(4)
  void clearSize() => clearField(4);
}

class Block extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Block', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qrl'), createEmptyInstance: create)
    ..aOM<BlockHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: BlockHeader.create)
    ..pc<Transaction>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'transactions', $pb.PbFieldType.PM, subBuilder: Transaction.create)
    ..pc<GenesisBalance>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'genesisBalance', $pb.PbFieldType.PM, subBuilder: GenesisBalance.create)
    ..hasRequiredFields = false
  ;

  Block._() : super();
  factory Block({
    BlockHeader? header,
    $core.Iterable<Transaction>? transactions,
    $core.Iterable<GenesisBalance>? genesisBalance,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (transactions != null) {
      _result.transactions.addAll(transactions);
    }
    if (genesisBalance != null) {
      _result.genesisBalance.addAll(genesisBalance);
    }
    return _result;
  }
  factory Block.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Block.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Block clone() => Block()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Block copyWith(void Function(Block) updates) => super.copyWith((message) => updates(message as Block)) as Block; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Block create() => Block._();
  Block createEmptyInstance() => create();
  static $pb.PbList<Block> createRepeated() => $pb.PbList<Block>();
  @$core.pragma('dart2js:noInline')
  static Block getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Block>(create);
  static Block? _defaultInstance;

  @$pb.TagNumber(1)
  BlockHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(BlockHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  BlockHeader ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<Transaction> get transactions => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<GenesisBalance> get genesisBalance => $_getList(2);
}

class GenesisBalance extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GenesisBalance', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qrl'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address', $pb.PbFieldType.OY)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'balance', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  GenesisBalance._() : super();
  factory GenesisBalance({
    $core.List<$core.int>? address,
    $fixnum.Int64? balance,
  }) {
    final _result = create();
    if (address != null) {
      _result.address = address;
    }
    if (balance != null) {
      _result.balance = balance;
    }
    return _result;
  }
  factory GenesisBalance.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GenesisBalance.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GenesisBalance clone() => GenesisBalance()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GenesisBalance copyWith(void Function(GenesisBalance) updates) => super.copyWith((message) => updates(message as GenesisBalance)) as GenesisBalance; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GenesisBalance create() => GenesisBalance._();
  GenesisBalance createEmptyInstance() => create();
  static $pb.PbList<GenesisBalance> createRepeated() => $pb.PbList<GenesisBalance>();
  @$core.pragma('dart2js:noInline')
  static GenesisBalance getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GenesisBalance>(create);
  static GenesisBalance? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get address => $_getN(0);
  @$pb.TagNumber(1)
  set address($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get balance => $_getI64(1);
  @$pb.TagNumber(2)
  set balance($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBalance() => $_has(1);
  @$pb.TagNumber(2)
  void clearBalance() => clearField(2);
}

class BlockMetaDataList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BlockMetaDataList', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qrl'), createEmptyInstance: create)
    ..pc<BlockMetaData>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'blockNumberHashes', $pb.PbFieldType.PM, subBuilder: BlockMetaData.create)
    ..hasRequiredFields = false
  ;

  BlockMetaDataList._() : super();
  factory BlockMetaDataList({
    $core.Iterable<BlockMetaData>? blockNumberHashes,
  }) {
    final _result = create();
    if (blockNumberHashes != null) {
      _result.blockNumberHashes.addAll(blockNumberHashes);
    }
    return _result;
  }
  factory BlockMetaDataList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BlockMetaDataList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BlockMetaDataList clone() => BlockMetaDataList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BlockMetaDataList copyWith(void Function(BlockMetaDataList) updates) => super.copyWith((message) => updates(message as BlockMetaDataList)) as BlockMetaDataList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BlockMetaDataList create() => BlockMetaDataList._();
  BlockMetaDataList createEmptyInstance() => create();
  static $pb.PbList<BlockMetaDataList> createRepeated() => $pb.PbList<BlockMetaDataList>();
  @$core.pragma('dart2js:noInline')
  static BlockMetaDataList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BlockMetaDataList>(create);
  static BlockMetaDataList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<BlockMetaData> get blockNumberHashes => $_getList(0);
}

class Transaction_Transfer extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Transaction.Transfer', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qrl'), createEmptyInstance: create)
    ..p<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addrsTo', $pb.PbFieldType.PY)
    ..p<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amounts', $pb.PbFieldType.KU6)
    ..hasRequiredFields = false
  ;

  Transaction_Transfer._() : super();
  factory Transaction_Transfer({
    $core.Iterable<$core.List<$core.int>>? addrsTo,
    $core.Iterable<$fixnum.Int64>? amounts,
  }) {
    final _result = create();
    if (addrsTo != null) {
      _result.addrsTo.addAll(addrsTo);
    }
    if (amounts != null) {
      _result.amounts.addAll(amounts);
    }
    return _result;
  }
  factory Transaction_Transfer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Transaction_Transfer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Transaction_Transfer clone() => Transaction_Transfer()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Transaction_Transfer copyWith(void Function(Transaction_Transfer) updates) => super.copyWith((message) => updates(message as Transaction_Transfer)) as Transaction_Transfer; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Transaction_Transfer create() => Transaction_Transfer._();
  Transaction_Transfer createEmptyInstance() => create();
  static $pb.PbList<Transaction_Transfer> createRepeated() => $pb.PbList<Transaction_Transfer>();
  @$core.pragma('dart2js:noInline')
  static Transaction_Transfer getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Transaction_Transfer>(create);
  static Transaction_Transfer? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.List<$core.int>> get addrsTo => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$fixnum.Int64> get amounts => $_getList(1);
}

class Transaction_CoinBase extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Transaction.CoinBase', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qrl'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addrTo', $pb.PbFieldType.OY)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amount', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  Transaction_CoinBase._() : super();
  factory Transaction_CoinBase({
    $core.List<$core.int>? addrTo,
    $fixnum.Int64? amount,
  }) {
    final _result = create();
    if (addrTo != null) {
      _result.addrTo = addrTo;
    }
    if (amount != null) {
      _result.amount = amount;
    }
    return _result;
  }
  factory Transaction_CoinBase.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Transaction_CoinBase.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Transaction_CoinBase clone() => Transaction_CoinBase()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Transaction_CoinBase copyWith(void Function(Transaction_CoinBase) updates) => super.copyWith((message) => updates(message as Transaction_CoinBase)) as Transaction_CoinBase; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Transaction_CoinBase create() => Transaction_CoinBase._();
  Transaction_CoinBase createEmptyInstance() => create();
  static $pb.PbList<Transaction_CoinBase> createRepeated() => $pb.PbList<Transaction_CoinBase>();
  @$core.pragma('dart2js:noInline')
  static Transaction_CoinBase getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Transaction_CoinBase>(create);
  static Transaction_CoinBase? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get addrTo => $_getN(0);
  @$pb.TagNumber(1)
  set addrTo($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddrTo() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddrTo() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get amount => $_getI64(1);
  @$pb.TagNumber(2)
  set amount($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAmount() => $_has(1);
  @$pb.TagNumber(2)
  void clearAmount() => clearField(2);
}

class Transaction_LatticePublicKey extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Transaction.LatticePublicKey', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qrl'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'kyberPk', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dilithiumPk', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  Transaction_LatticePublicKey._() : super();
  factory Transaction_LatticePublicKey({
    $core.List<$core.int>? kyberPk,
    $core.List<$core.int>? dilithiumPk,
  }) {
    final _result = create();
    if (kyberPk != null) {
      _result.kyberPk = kyberPk;
    }
    if (dilithiumPk != null) {
      _result.dilithiumPk = dilithiumPk;
    }
    return _result;
  }
  factory Transaction_LatticePublicKey.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Transaction_LatticePublicKey.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Transaction_LatticePublicKey clone() => Transaction_LatticePublicKey()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Transaction_LatticePublicKey copyWith(void Function(Transaction_LatticePublicKey) updates) => super.copyWith((message) => updates(message as Transaction_LatticePublicKey)) as Transaction_LatticePublicKey; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Transaction_LatticePublicKey create() => Transaction_LatticePublicKey._();
  Transaction_LatticePublicKey createEmptyInstance() => create();
  static $pb.PbList<Transaction_LatticePublicKey> createRepeated() => $pb.PbList<Transaction_LatticePublicKey>();
  @$core.pragma('dart2js:noInline')
  static Transaction_LatticePublicKey getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Transaction_LatticePublicKey>(create);
  static Transaction_LatticePublicKey? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get kyberPk => $_getN(0);
  @$pb.TagNumber(1)
  set kyberPk($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKyberPk() => $_has(0);
  @$pb.TagNumber(1)
  void clearKyberPk() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get dilithiumPk => $_getN(1);
  @$pb.TagNumber(2)
  set dilithiumPk($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDilithiumPk() => $_has(1);
  @$pb.TagNumber(2)
  void clearDilithiumPk() => clearField(2);
}

class Transaction_Message extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Transaction.Message', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qrl'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'messageHash', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  Transaction_Message._() : super();
  factory Transaction_Message({
    $core.List<$core.int>? messageHash,
  }) {
    final _result = create();
    if (messageHash != null) {
      _result.messageHash = messageHash;
    }
    return _result;
  }
  factory Transaction_Message.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Transaction_Message.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Transaction_Message clone() => Transaction_Message()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Transaction_Message copyWith(void Function(Transaction_Message) updates) => super.copyWith((message) => updates(message as Transaction_Message)) as Transaction_Message; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Transaction_Message create() => Transaction_Message._();
  Transaction_Message createEmptyInstance() => create();
  static $pb.PbList<Transaction_Message> createRepeated() => $pb.PbList<Transaction_Message>();
  @$core.pragma('dart2js:noInline')
  static Transaction_Message getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Transaction_Message>(create);
  static Transaction_Message? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get messageHash => $_getN(0);
  @$pb.TagNumber(1)
  set messageHash($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessageHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessageHash() => clearField(1);
}

class Transaction_Token extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Transaction.Token', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qrl'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'symbol', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'owner', $pb.PbFieldType.OY)
    ..a<$fixnum.Int64>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'decimals', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..pc<AddressAmount>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'initialBalances', $pb.PbFieldType.PM, subBuilder: AddressAmount.create)
    ..hasRequiredFields = false
  ;

  Transaction_Token._() : super();
  factory Transaction_Token({
    $core.List<$core.int>? symbol,
    $core.List<$core.int>? name,
    $core.List<$core.int>? owner,
    $fixnum.Int64? decimals,
    $core.Iterable<AddressAmount>? initialBalances,
  }) {
    final _result = create();
    if (symbol != null) {
      _result.symbol = symbol;
    }
    if (name != null) {
      _result.name = name;
    }
    if (owner != null) {
      _result.owner = owner;
    }
    if (decimals != null) {
      _result.decimals = decimals;
    }
    if (initialBalances != null) {
      _result.initialBalances.addAll(initialBalances);
    }
    return _result;
  }
  factory Transaction_Token.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Transaction_Token.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Transaction_Token clone() => Transaction_Token()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Transaction_Token copyWith(void Function(Transaction_Token) updates) => super.copyWith((message) => updates(message as Transaction_Token)) as Transaction_Token; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Transaction_Token create() => Transaction_Token._();
  Transaction_Token createEmptyInstance() => create();
  static $pb.PbList<Transaction_Token> createRepeated() => $pb.PbList<Transaction_Token>();
  @$core.pragma('dart2js:noInline')
  static Transaction_Token getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Transaction_Token>(create);
  static Transaction_Token? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get symbol => $_getN(0);
  @$pb.TagNumber(1)
  set symbol($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSymbol() => $_has(0);
  @$pb.TagNumber(1)
  void clearSymbol() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get name => $_getN(1);
  @$pb.TagNumber(2)
  set name($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get owner => $_getN(2);
  @$pb.TagNumber(3)
  set owner($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOwner() => $_has(2);
  @$pb.TagNumber(3)
  void clearOwner() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get decimals => $_getI64(3);
  @$pb.TagNumber(4)
  set decimals($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDecimals() => $_has(3);
  @$pb.TagNumber(4)
  void clearDecimals() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<AddressAmount> get initialBalances => $_getList(4);
}

class Transaction_TransferToken extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Transaction.TransferToken', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qrl'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tokenTxhash', $pb.PbFieldType.OY)
    ..p<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addrsTo', $pb.PbFieldType.PY)
    ..p<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amounts', $pb.PbFieldType.KU6)
    ..hasRequiredFields = false
  ;

  Transaction_TransferToken._() : super();
  factory Transaction_TransferToken({
    $core.List<$core.int>? tokenTxhash,
    $core.Iterable<$core.List<$core.int>>? addrsTo,
    $core.Iterable<$fixnum.Int64>? amounts,
  }) {
    final _result = create();
    if (tokenTxhash != null) {
      _result.tokenTxhash = tokenTxhash;
    }
    if (addrsTo != null) {
      _result.addrsTo.addAll(addrsTo);
    }
    if (amounts != null) {
      _result.amounts.addAll(amounts);
    }
    return _result;
  }
  factory Transaction_TransferToken.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Transaction_TransferToken.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Transaction_TransferToken clone() => Transaction_TransferToken()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Transaction_TransferToken copyWith(void Function(Transaction_TransferToken) updates) => super.copyWith((message) => updates(message as Transaction_TransferToken)) as Transaction_TransferToken; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Transaction_TransferToken create() => Transaction_TransferToken._();
  Transaction_TransferToken createEmptyInstance() => create();
  static $pb.PbList<Transaction_TransferToken> createRepeated() => $pb.PbList<Transaction_TransferToken>();
  @$core.pragma('dart2js:noInline')
  static Transaction_TransferToken getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Transaction_TransferToken>(create);
  static Transaction_TransferToken? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get tokenTxhash => $_getN(0);
  @$pb.TagNumber(1)
  set tokenTxhash($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTokenTxhash() => $_has(0);
  @$pb.TagNumber(1)
  void clearTokenTxhash() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.List<$core.int>> get addrsTo => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$fixnum.Int64> get amounts => $_getList(2);
}

class Transaction_Slave extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Transaction.Slave', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qrl'), createEmptyInstance: create)
    ..p<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'slavePks', $pb.PbFieldType.PY)
    ..p<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessTypes', $pb.PbFieldType.KU3)
    ..hasRequiredFields = false
  ;

  Transaction_Slave._() : super();
  factory Transaction_Slave({
    $core.Iterable<$core.List<$core.int>>? slavePks,
    $core.Iterable<$core.int>? accessTypes,
  }) {
    final _result = create();
    if (slavePks != null) {
      _result.slavePks.addAll(slavePks);
    }
    if (accessTypes != null) {
      _result.accessTypes.addAll(accessTypes);
    }
    return _result;
  }
  factory Transaction_Slave.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Transaction_Slave.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Transaction_Slave clone() => Transaction_Slave()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Transaction_Slave copyWith(void Function(Transaction_Slave) updates) => super.copyWith((message) => updates(message as Transaction_Slave)) as Transaction_Slave; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Transaction_Slave create() => Transaction_Slave._();
  Transaction_Slave createEmptyInstance() => create();
  static $pb.PbList<Transaction_Slave> createRepeated() => $pb.PbList<Transaction_Slave>();
  @$core.pragma('dart2js:noInline')
  static Transaction_Slave getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Transaction_Slave>(create);
  static Transaction_Slave? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.List<$core.int>> get slavePks => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get accessTypes => $_getList(1);
}

enum Transaction_TransactionType {
  transfer, 
  coinbase, 
  latticePK, 
  message, 
  token, 
  transferToken, 
  slave, 
  notSet
}

class Transaction extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Transaction_TransactionType> _Transaction_TransactionTypeByTag = {
    7 : Transaction_TransactionType.transfer,
    8 : Transaction_TransactionType.coinbase,
    9 : Transaction_TransactionType.latticePK,
    10 : Transaction_TransactionType.message,
    11 : Transaction_TransactionType.token,
    12 : Transaction_TransactionType.transferToken,
    13 : Transaction_TransactionType.slave,
    0 : Transaction_TransactionType.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Transaction', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qrl'), createEmptyInstance: create)
    ..oo(0, [7, 8, 9, 10, 11, 12, 13])
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'masterAddr', $pb.PbFieldType.OY)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fee', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'publicKey', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'signature', $pb.PbFieldType.OY)
    ..a<$fixnum.Int64>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nonce', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'transactionHash', $pb.PbFieldType.OY)
    ..aOM<Transaction_Transfer>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'transfer', subBuilder: Transaction_Transfer.create)
    ..aOM<Transaction_CoinBase>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'coinbase', subBuilder: Transaction_CoinBase.create)
    ..aOM<Transaction_LatticePublicKey>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'latticePK', protoName: 'latticePK', subBuilder: Transaction_LatticePublicKey.create)
    ..aOM<Transaction_Message>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message', subBuilder: Transaction_Message.create)
    ..aOM<Transaction_Token>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'token', subBuilder: Transaction_Token.create)
    ..aOM<Transaction_TransferToken>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'transferToken', subBuilder: Transaction_TransferToken.create)
    ..aOM<Transaction_Slave>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'slave', subBuilder: Transaction_Slave.create)
    ..hasRequiredFields = false
  ;

  Transaction._() : super();
  factory Transaction({
    $core.List<$core.int>? masterAddr,
    $fixnum.Int64? fee,
    $core.List<$core.int>? publicKey,
    $core.List<$core.int>? signature,
    $fixnum.Int64? nonce,
    $core.List<$core.int>? transactionHash,
    Transaction_Transfer? transfer,
    Transaction_CoinBase? coinbase,
    Transaction_LatticePublicKey? latticePK,
    Transaction_Message? message,
    Transaction_Token? token,
    Transaction_TransferToken? transferToken,
    Transaction_Slave? slave,
  }) {
    final _result = create();
    if (masterAddr != null) {
      _result.masterAddr = masterAddr;
    }
    if (fee != null) {
      _result.fee = fee;
    }
    if (publicKey != null) {
      _result.publicKey = publicKey;
    }
    if (signature != null) {
      _result.signature = signature;
    }
    if (nonce != null) {
      _result.nonce = nonce;
    }
    if (transactionHash != null) {
      _result.transactionHash = transactionHash;
    }
    if (transfer != null) {
      _result.transfer = transfer;
    }
    if (coinbase != null) {
      _result.coinbase = coinbase;
    }
    if (latticePK != null) {
      _result.latticePK = latticePK;
    }
    if (message != null) {
      _result.message = message;
    }
    if (token != null) {
      _result.token = token;
    }
    if (transferToken != null) {
      _result.transferToken = transferToken;
    }
    if (slave != null) {
      _result.slave = slave;
    }
    return _result;
  }
  factory Transaction.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Transaction.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Transaction clone() => Transaction()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Transaction copyWith(void Function(Transaction) updates) => super.copyWith((message) => updates(message as Transaction)) as Transaction; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Transaction create() => Transaction._();
  Transaction createEmptyInstance() => create();
  static $pb.PbList<Transaction> createRepeated() => $pb.PbList<Transaction>();
  @$core.pragma('dart2js:noInline')
  static Transaction getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Transaction>(create);
  static Transaction? _defaultInstance;

  Transaction_TransactionType whichTransactionType() => _Transaction_TransactionTypeByTag[$_whichOneof(0)]!;
  void clearTransactionType() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.List<$core.int> get masterAddr => $_getN(0);
  @$pb.TagNumber(1)
  set masterAddr($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMasterAddr() => $_has(0);
  @$pb.TagNumber(1)
  void clearMasterAddr() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get fee => $_getI64(1);
  @$pb.TagNumber(2)
  set fee($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFee() => $_has(1);
  @$pb.TagNumber(2)
  void clearFee() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get publicKey => $_getN(2);
  @$pb.TagNumber(3)
  set publicKey($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPublicKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearPublicKey() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get signature => $_getN(3);
  @$pb.TagNumber(4)
  set signature($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSignature() => $_has(3);
  @$pb.TagNumber(4)
  void clearSignature() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get nonce => $_getI64(4);
  @$pb.TagNumber(5)
  set nonce($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasNonce() => $_has(4);
  @$pb.TagNumber(5)
  void clearNonce() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.int> get transactionHash => $_getN(5);
  @$pb.TagNumber(6)
  set transactionHash($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTransactionHash() => $_has(5);
  @$pb.TagNumber(6)
  void clearTransactionHash() => clearField(6);

  @$pb.TagNumber(7)
  Transaction_Transfer get transfer => $_getN(6);
  @$pb.TagNumber(7)
  set transfer(Transaction_Transfer v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasTransfer() => $_has(6);
  @$pb.TagNumber(7)
  void clearTransfer() => clearField(7);
  @$pb.TagNumber(7)
  Transaction_Transfer ensureTransfer() => $_ensure(6);

  @$pb.TagNumber(8)
  Transaction_CoinBase get coinbase => $_getN(7);
  @$pb.TagNumber(8)
  set coinbase(Transaction_CoinBase v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasCoinbase() => $_has(7);
  @$pb.TagNumber(8)
  void clearCoinbase() => clearField(8);
  @$pb.TagNumber(8)
  Transaction_CoinBase ensureCoinbase() => $_ensure(7);

  @$pb.TagNumber(9)
  Transaction_LatticePublicKey get latticePK => $_getN(8);
  @$pb.TagNumber(9)
  set latticePK(Transaction_LatticePublicKey v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasLatticePK() => $_has(8);
  @$pb.TagNumber(9)
  void clearLatticePK() => clearField(9);
  @$pb.TagNumber(9)
  Transaction_LatticePublicKey ensureLatticePK() => $_ensure(8);

  @$pb.TagNumber(10)
  Transaction_Message get message => $_getN(9);
  @$pb.TagNumber(10)
  set message(Transaction_Message v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasMessage() => $_has(9);
  @$pb.TagNumber(10)
  void clearMessage() => clearField(10);
  @$pb.TagNumber(10)
  Transaction_Message ensureMessage() => $_ensure(9);

  @$pb.TagNumber(11)
  Transaction_Token get token => $_getN(10);
  @$pb.TagNumber(11)
  set token(Transaction_Token v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasToken() => $_has(10);
  @$pb.TagNumber(11)
  void clearToken() => clearField(11);
  @$pb.TagNumber(11)
  Transaction_Token ensureToken() => $_ensure(10);

  @$pb.TagNumber(12)
  Transaction_TransferToken get transferToken => $_getN(11);
  @$pb.TagNumber(12)
  set transferToken(Transaction_TransferToken v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasTransferToken() => $_has(11);
  @$pb.TagNumber(12)
  void clearTransferToken() => clearField(12);
  @$pb.TagNumber(12)
  Transaction_TransferToken ensureTransferToken() => $_ensure(11);

  @$pb.TagNumber(13)
  Transaction_Slave get slave => $_getN(12);
  @$pb.TagNumber(13)
  set slave(Transaction_Slave v) { setField(13, v); }
  @$pb.TagNumber(13)
  $core.bool hasSlave() => $_has(12);
  @$pb.TagNumber(13)
  void clearSlave() => clearField(13);
  @$pb.TagNumber(13)
  Transaction_Slave ensureSlave() => $_ensure(12);
}

class TokenList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TokenList', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qrl'), createEmptyInstance: create)
    ..p<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tokenTxhash', $pb.PbFieldType.PY)
    ..hasRequiredFields = false
  ;

  TokenList._() : super();
  factory TokenList({
    $core.Iterable<$core.List<$core.int>>? tokenTxhash,
  }) {
    final _result = create();
    if (tokenTxhash != null) {
      _result.tokenTxhash.addAll(tokenTxhash);
    }
    return _result;
  }
  factory TokenList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TokenList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TokenList clone() => TokenList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TokenList copyWith(void Function(TokenList) updates) => super.copyWith((message) => updates(message as TokenList)) as TokenList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TokenList create() => TokenList._();
  TokenList createEmptyInstance() => create();
  static $pb.PbList<TokenList> createRepeated() => $pb.PbList<TokenList>();
  @$core.pragma('dart2js:noInline')
  static TokenList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TokenList>(create);
  static TokenList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.List<$core.int>> get tokenTxhash => $_getList(0);
}

class TokenMetadata extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TokenMetadata', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qrl'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tokenTxhash', $pb.PbFieldType.OY)
    ..p<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'transferTokenTxHashes', $pb.PbFieldType.PY)
    ..hasRequiredFields = false
  ;

  TokenMetadata._() : super();
  factory TokenMetadata({
    $core.List<$core.int>? tokenTxhash,
    $core.Iterable<$core.List<$core.int>>? transferTokenTxHashes,
  }) {
    final _result = create();
    if (tokenTxhash != null) {
      _result.tokenTxhash = tokenTxhash;
    }
    if (transferTokenTxHashes != null) {
      _result.transferTokenTxHashes.addAll(transferTokenTxHashes);
    }
    return _result;
  }
  factory TokenMetadata.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TokenMetadata.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TokenMetadata clone() => TokenMetadata()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TokenMetadata copyWith(void Function(TokenMetadata) updates) => super.copyWith((message) => updates(message as TokenMetadata)) as TokenMetadata; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TokenMetadata create() => TokenMetadata._();
  TokenMetadata createEmptyInstance() => create();
  static $pb.PbList<TokenMetadata> createRepeated() => $pb.PbList<TokenMetadata>();
  @$core.pragma('dart2js:noInline')
  static TokenMetadata getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TokenMetadata>(create);
  static TokenMetadata? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get tokenTxhash => $_getN(0);
  @$pb.TagNumber(1)
  set tokenTxhash($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTokenTxhash() => $_has(0);
  @$pb.TagNumber(1)
  void clearTokenTxhash() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.List<$core.int>> get transferTokenTxHashes => $_getList(1);
}

class EncryptedEphemeralMessage_Channel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EncryptedEphemeralMessage.Channel', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qrl'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'encAes256Symkey', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  EncryptedEphemeralMessage_Channel._() : super();
  factory EncryptedEphemeralMessage_Channel({
    $core.List<$core.int>? encAes256Symkey,
  }) {
    final _result = create();
    if (encAes256Symkey != null) {
      _result.encAes256Symkey = encAes256Symkey;
    }
    return _result;
  }
  factory EncryptedEphemeralMessage_Channel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EncryptedEphemeralMessage_Channel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EncryptedEphemeralMessage_Channel clone() => EncryptedEphemeralMessage_Channel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EncryptedEphemeralMessage_Channel copyWith(void Function(EncryptedEphemeralMessage_Channel) updates) => super.copyWith((message) => updates(message as EncryptedEphemeralMessage_Channel)) as EncryptedEphemeralMessage_Channel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EncryptedEphemeralMessage_Channel create() => EncryptedEphemeralMessage_Channel._();
  EncryptedEphemeralMessage_Channel createEmptyInstance() => create();
  static $pb.PbList<EncryptedEphemeralMessage_Channel> createRepeated() => $pb.PbList<EncryptedEphemeralMessage_Channel>();
  @$core.pragma('dart2js:noInline')
  static EncryptedEphemeralMessage_Channel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EncryptedEphemeralMessage_Channel>(create);
  static EncryptedEphemeralMessage_Channel? _defaultInstance;

  @$pb.TagNumber(4)
  $core.List<$core.int> get encAes256Symkey => $_getN(0);
  @$pb.TagNumber(4)
  set encAes256Symkey($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(4)
  $core.bool hasEncAes256Symkey() => $_has(0);
  @$pb.TagNumber(4)
  void clearEncAes256Symkey() => clearField(4);
}

class EncryptedEphemeralMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EncryptedEphemeralMessage', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qrl'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'msgId', $pb.PbFieldType.OY)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ttl', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ttr', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<EncryptedEphemeralMessage_Channel>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channel', subBuilder: EncryptedEphemeralMessage_Channel.create)
    ..a<$fixnum.Int64>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nonce', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'payload', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  EncryptedEphemeralMessage._() : super();
  factory EncryptedEphemeralMessage({
    $core.List<$core.int>? msgId,
    $fixnum.Int64? ttl,
    $fixnum.Int64? ttr,
    EncryptedEphemeralMessage_Channel? channel,
    $fixnum.Int64? nonce,
    $core.List<$core.int>? payload,
  }) {
    final _result = create();
    if (msgId != null) {
      _result.msgId = msgId;
    }
    if (ttl != null) {
      _result.ttl = ttl;
    }
    if (ttr != null) {
      _result.ttr = ttr;
    }
    if (channel != null) {
      _result.channel = channel;
    }
    if (nonce != null) {
      _result.nonce = nonce;
    }
    if (payload != null) {
      _result.payload = payload;
    }
    return _result;
  }
  factory EncryptedEphemeralMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EncryptedEphemeralMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EncryptedEphemeralMessage clone() => EncryptedEphemeralMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EncryptedEphemeralMessage copyWith(void Function(EncryptedEphemeralMessage) updates) => super.copyWith((message) => updates(message as EncryptedEphemeralMessage)) as EncryptedEphemeralMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EncryptedEphemeralMessage create() => EncryptedEphemeralMessage._();
  EncryptedEphemeralMessage createEmptyInstance() => create();
  static $pb.PbList<EncryptedEphemeralMessage> createRepeated() => $pb.PbList<EncryptedEphemeralMessage>();
  @$core.pragma('dart2js:noInline')
  static EncryptedEphemeralMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EncryptedEphemeralMessage>(create);
  static EncryptedEphemeralMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get msgId => $_getN(0);
  @$pb.TagNumber(1)
  set msgId($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMsgId() => $_has(0);
  @$pb.TagNumber(1)
  void clearMsgId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get ttl => $_getI64(1);
  @$pb.TagNumber(2)
  set ttl($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTtl() => $_has(1);
  @$pb.TagNumber(2)
  void clearTtl() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get ttr => $_getI64(2);
  @$pb.TagNumber(3)
  set ttr($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTtr() => $_has(2);
  @$pb.TagNumber(3)
  void clearTtr() => clearField(3);

  @$pb.TagNumber(5)
  EncryptedEphemeralMessage_Channel get channel => $_getN(3);
  @$pb.TagNumber(5)
  set channel(EncryptedEphemeralMessage_Channel v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasChannel() => $_has(3);
  @$pb.TagNumber(5)
  void clearChannel() => clearField(5);
  @$pb.TagNumber(5)
  EncryptedEphemeralMessage_Channel ensureChannel() => $_ensure(3);

  @$pb.TagNumber(6)
  $fixnum.Int64 get nonce => $_getI64(4);
  @$pb.TagNumber(6)
  set nonce($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasNonce() => $_has(4);
  @$pb.TagNumber(6)
  void clearNonce() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<$core.int> get payload => $_getN(5);
  @$pb.TagNumber(7)
  set payload($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(7)
  $core.bool hasPayload() => $_has(5);
  @$pb.TagNumber(7)
  void clearPayload() => clearField(7);
}

class AddressList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddressList', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qrl'), createEmptyInstance: create)
    ..p<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addresses', $pb.PbFieldType.PY)
    ..hasRequiredFields = false
  ;

  AddressList._() : super();
  factory AddressList({
    $core.Iterable<$core.List<$core.int>>? addresses,
  }) {
    final _result = create();
    if (addresses != null) {
      _result.addresses.addAll(addresses);
    }
    return _result;
  }
  factory AddressList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddressList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddressList clone() => AddressList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddressList copyWith(void Function(AddressList) updates) => super.copyWith((message) => updates(message as AddressList)) as AddressList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddressList create() => AddressList._();
  AddressList createEmptyInstance() => create();
  static $pb.PbList<AddressList> createRepeated() => $pb.PbList<AddressList>();
  @$core.pragma('dart2js:noInline')
  static AddressList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddressList>(create);
  static AddressList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.List<$core.int>> get addresses => $_getList(0);
}

class BlockHeightData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BlockHeightData', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qrl'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'blockNumber', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'blockHeaderhash', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cumulativeDifficulty', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  BlockHeightData._() : super();
  factory BlockHeightData({
    $fixnum.Int64? blockNumber,
    $core.List<$core.int>? blockHeaderhash,
    $core.List<$core.int>? cumulativeDifficulty,
  }) {
    final _result = create();
    if (blockNumber != null) {
      _result.blockNumber = blockNumber;
    }
    if (blockHeaderhash != null) {
      _result.blockHeaderhash = blockHeaderhash;
    }
    if (cumulativeDifficulty != null) {
      _result.cumulativeDifficulty = cumulativeDifficulty;
    }
    return _result;
  }
  factory BlockHeightData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BlockHeightData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BlockHeightData clone() => BlockHeightData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BlockHeightData copyWith(void Function(BlockHeightData) updates) => super.copyWith((message) => updates(message as BlockHeightData)) as BlockHeightData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BlockHeightData create() => BlockHeightData._();
  BlockHeightData createEmptyInstance() => create();
  static $pb.PbList<BlockHeightData> createRepeated() => $pb.PbList<BlockHeightData>();
  @$core.pragma('dart2js:noInline')
  static BlockHeightData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BlockHeightData>(create);
  static BlockHeightData? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get blockNumber => $_getI64(0);
  @$pb.TagNumber(1)
  set blockNumber($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBlockNumber() => $_has(0);
  @$pb.TagNumber(1)
  void clearBlockNumber() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get blockHeaderhash => $_getN(1);
  @$pb.TagNumber(2)
  set blockHeaderhash($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBlockHeaderhash() => $_has(1);
  @$pb.TagNumber(2)
  void clearBlockHeaderhash() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get cumulativeDifficulty => $_getN(2);
  @$pb.TagNumber(3)
  set cumulativeDifficulty($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCumulativeDifficulty() => $_has(2);
  @$pb.TagNumber(3)
  void clearCumulativeDifficulty() => clearField(3);
}

class BlockMetaData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BlockMetaData', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qrl'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'blockDifficulty', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cumulativeDifficulty', $pb.PbFieldType.OY)
    ..p<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'childHeaderhashes', $pb.PbFieldType.PY)
    ..p<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastNHeaderhashes', $pb.PbFieldType.PY, protoName: 'last_N_headerhashes')
    ..hasRequiredFields = false
  ;

  BlockMetaData._() : super();
  factory BlockMetaData({
    $core.List<$core.int>? blockDifficulty,
    $core.List<$core.int>? cumulativeDifficulty,
    $core.Iterable<$core.List<$core.int>>? childHeaderhashes,
    $core.Iterable<$core.List<$core.int>>? lastNHeaderhashes,
  }) {
    final _result = create();
    if (blockDifficulty != null) {
      _result.blockDifficulty = blockDifficulty;
    }
    if (cumulativeDifficulty != null) {
      _result.cumulativeDifficulty = cumulativeDifficulty;
    }
    if (childHeaderhashes != null) {
      _result.childHeaderhashes.addAll(childHeaderhashes);
    }
    if (lastNHeaderhashes != null) {
      _result.lastNHeaderhashes.addAll(lastNHeaderhashes);
    }
    return _result;
  }
  factory BlockMetaData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BlockMetaData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BlockMetaData clone() => BlockMetaData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BlockMetaData copyWith(void Function(BlockMetaData) updates) => super.copyWith((message) => updates(message as BlockMetaData)) as BlockMetaData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BlockMetaData create() => BlockMetaData._();
  BlockMetaData createEmptyInstance() => create();
  static $pb.PbList<BlockMetaData> createRepeated() => $pb.PbList<BlockMetaData>();
  @$core.pragma('dart2js:noInline')
  static BlockMetaData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BlockMetaData>(create);
  static BlockMetaData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get blockDifficulty => $_getN(0);
  @$pb.TagNumber(1)
  set blockDifficulty($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBlockDifficulty() => $_has(0);
  @$pb.TagNumber(1)
  void clearBlockDifficulty() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get cumulativeDifficulty => $_getN(1);
  @$pb.TagNumber(2)
  set cumulativeDifficulty($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCumulativeDifficulty() => $_has(1);
  @$pb.TagNumber(2)
  void clearCumulativeDifficulty() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.List<$core.int>> get childHeaderhashes => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<$core.List<$core.int>> get lastNHeaderhashes => $_getList(3);
}

class BlockNumberMapping extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BlockNumberMapping', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qrl'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'headerhash', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'prevHeaderhash', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  BlockNumberMapping._() : super();
  factory BlockNumberMapping({
    $core.List<$core.int>? headerhash,
    $core.List<$core.int>? prevHeaderhash,
  }) {
    final _result = create();
    if (headerhash != null) {
      _result.headerhash = headerhash;
    }
    if (prevHeaderhash != null) {
      _result.prevHeaderhash = prevHeaderhash;
    }
    return _result;
  }
  factory BlockNumberMapping.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BlockNumberMapping.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BlockNumberMapping clone() => BlockNumberMapping()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BlockNumberMapping copyWith(void Function(BlockNumberMapping) updates) => super.copyWith((message) => updates(message as BlockNumberMapping)) as BlockNumberMapping; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BlockNumberMapping create() => BlockNumberMapping._();
  BlockNumberMapping createEmptyInstance() => create();
  static $pb.PbList<BlockNumberMapping> createRepeated() => $pb.PbList<BlockNumberMapping>();
  @$core.pragma('dart2js:noInline')
  static BlockNumberMapping getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BlockNumberMapping>(create);
  static BlockNumberMapping? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get headerhash => $_getN(0);
  @$pb.TagNumber(1)
  set headerhash($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeaderhash() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeaderhash() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get prevHeaderhash => $_getN(1);
  @$pb.TagNumber(2)
  set prevHeaderhash($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPrevHeaderhash() => $_has(1);
  @$pb.TagNumber(2)
  void clearPrevHeaderhash() => clearField(2);
}

class StateLoader extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StateLoader', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qrl'), createEmptyInstance: create)
    ..p<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addresses', $pb.PbFieldType.PY)
    ..p<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tokenTxhash', $pb.PbFieldType.PY)
    ..p<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txhash', $pb.PbFieldType.PY)
    ..a<$fixnum.Int64>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalCoinSupply', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  StateLoader._() : super();
  factory StateLoader({
    $core.Iterable<$core.List<$core.int>>? addresses,
    $core.Iterable<$core.List<$core.int>>? tokenTxhash,
    $core.Iterable<$core.List<$core.int>>? txhash,
    $fixnum.Int64? totalCoinSupply,
  }) {
    final _result = create();
    if (addresses != null) {
      _result.addresses.addAll(addresses);
    }
    if (tokenTxhash != null) {
      _result.tokenTxhash.addAll(tokenTxhash);
    }
    if (txhash != null) {
      _result.txhash.addAll(txhash);
    }
    if (totalCoinSupply != null) {
      _result.totalCoinSupply = totalCoinSupply;
    }
    return _result;
  }
  factory StateLoader.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StateLoader.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StateLoader clone() => StateLoader()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StateLoader copyWith(void Function(StateLoader) updates) => super.copyWith((message) => updates(message as StateLoader)) as StateLoader; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StateLoader create() => StateLoader._();
  StateLoader createEmptyInstance() => create();
  static $pb.PbList<StateLoader> createRepeated() => $pb.PbList<StateLoader>();
  @$core.pragma('dart2js:noInline')
  static StateLoader getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StateLoader>(create);
  static StateLoader? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.List<$core.int>> get addresses => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$core.List<$core.int>> get tokenTxhash => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$core.List<$core.int>> get txhash => $_getList(2);

  @$pb.TagNumber(4)
  $fixnum.Int64 get totalCoinSupply => $_getI64(3);
  @$pb.TagNumber(4)
  set totalCoinSupply($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTotalCoinSupply() => $_has(3);
  @$pb.TagNumber(4)
  void clearTotalCoinSupply() => clearField(4);
}

class StateObjects extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StateObjects', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qrl'), createEmptyInstance: create)
    ..p<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stateLoaders', $pb.PbFieldType.PY)
    ..hasRequiredFields = false
  ;

  StateObjects._() : super();
  factory StateObjects({
    $core.Iterable<$core.List<$core.int>>? stateLoaders,
  }) {
    final _result = create();
    if (stateLoaders != null) {
      _result.stateLoaders.addAll(stateLoaders);
    }
    return _result;
  }
  factory StateObjects.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StateObjects.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StateObjects clone() => StateObjects()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StateObjects copyWith(void Function(StateObjects) updates) => super.copyWith((message) => updates(message as StateObjects)) as StateObjects; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StateObjects create() => StateObjects._();
  StateObjects createEmptyInstance() => create();
  static $pb.PbList<StateObjects> createRepeated() => $pb.PbList<StateObjects>();
  @$core.pragma('dart2js:noInline')
  static StateObjects getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StateObjects>(create);
  static StateObjects? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.List<$core.int>> get stateLoaders => $_getList(0);
}

class LRUStateCache extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LRUStateCache', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qrl'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  LRUStateCache._() : super();
  factory LRUStateCache() => create();
  factory LRUStateCache.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LRUStateCache.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LRUStateCache clone() => LRUStateCache()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LRUStateCache copyWith(void Function(LRUStateCache) updates) => super.copyWith((message) => updates(message as LRUStateCache)) as LRUStateCache; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LRUStateCache create() => LRUStateCache._();
  LRUStateCache createEmptyInstance() => create();
  static $pb.PbList<LRUStateCache> createRepeated() => $pb.PbList<LRUStateCache>();
  @$core.pragma('dart2js:noInline')
  static LRUStateCache getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LRUStateCache>(create);
  static LRUStateCache? _defaultInstance;
}

class PeerStat extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PeerStat', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qrl'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'peerIp', $pb.PbFieldType.OY)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'port', $pb.PbFieldType.OU3)
    ..aOM<NodeChainState>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nodeChainState', subBuilder: NodeChainState.create)
    ..hasRequiredFields = false
  ;

  PeerStat._() : super();
  factory PeerStat({
    $core.List<$core.int>? peerIp,
    $core.int? port,
    NodeChainState? nodeChainState,
  }) {
    final _result = create();
    if (peerIp != null) {
      _result.peerIp = peerIp;
    }
    if (port != null) {
      _result.port = port;
    }
    if (nodeChainState != null) {
      _result.nodeChainState = nodeChainState;
    }
    return _result;
  }
  factory PeerStat.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PeerStat.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PeerStat clone() => PeerStat()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PeerStat copyWith(void Function(PeerStat) updates) => super.copyWith((message) => updates(message as PeerStat)) as PeerStat; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PeerStat create() => PeerStat._();
  PeerStat createEmptyInstance() => create();
  static $pb.PbList<PeerStat> createRepeated() => $pb.PbList<PeerStat>();
  @$core.pragma('dart2js:noInline')
  static PeerStat getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PeerStat>(create);
  static PeerStat? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get peerIp => $_getN(0);
  @$pb.TagNumber(1)
  set peerIp($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPeerIp() => $_has(0);
  @$pb.TagNumber(1)
  void clearPeerIp() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get port => $_getIZ(1);
  @$pb.TagNumber(2)
  set port($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPort() => $_has(1);
  @$pb.TagNumber(2)
  void clearPort() => clearField(2);

  @$pb.TagNumber(3)
  NodeChainState get nodeChainState => $_getN(2);
  @$pb.TagNumber(3)
  set nodeChainState(NodeChainState v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasNodeChainState() => $_has(2);
  @$pb.TagNumber(3)
  void clearNodeChainState() => clearField(3);
  @$pb.TagNumber(3)
  NodeChainState ensureNodeChainState() => $_ensure(2);
}

class NodeChainState extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'NodeChainState', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qrl'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'blockNumber', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'headerHash', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cumulativeDifficulty', $pb.PbFieldType.OY)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'version')
    ..a<$fixnum.Int64>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timestamp', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  NodeChainState._() : super();
  factory NodeChainState({
    $fixnum.Int64? blockNumber,
    $core.List<$core.int>? headerHash,
    $core.List<$core.int>? cumulativeDifficulty,
    $core.String? version,
    $fixnum.Int64? timestamp,
  }) {
    final _result = create();
    if (blockNumber != null) {
      _result.blockNumber = blockNumber;
    }
    if (headerHash != null) {
      _result.headerHash = headerHash;
    }
    if (cumulativeDifficulty != null) {
      _result.cumulativeDifficulty = cumulativeDifficulty;
    }
    if (version != null) {
      _result.version = version;
    }
    if (timestamp != null) {
      _result.timestamp = timestamp;
    }
    return _result;
  }
  factory NodeChainState.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NodeChainState.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NodeChainState clone() => NodeChainState()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NodeChainState copyWith(void Function(NodeChainState) updates) => super.copyWith((message) => updates(message as NodeChainState)) as NodeChainState; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NodeChainState create() => NodeChainState._();
  NodeChainState createEmptyInstance() => create();
  static $pb.PbList<NodeChainState> createRepeated() => $pb.PbList<NodeChainState>();
  @$core.pragma('dart2js:noInline')
  static NodeChainState getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NodeChainState>(create);
  static NodeChainState? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get blockNumber => $_getI64(0);
  @$pb.TagNumber(1)
  set blockNumber($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBlockNumber() => $_has(0);
  @$pb.TagNumber(1)
  void clearBlockNumber() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get headerHash => $_getN(1);
  @$pb.TagNumber(2)
  set headerHash($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHeaderHash() => $_has(1);
  @$pb.TagNumber(2)
  void clearHeaderHash() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get cumulativeDifficulty => $_getN(2);
  @$pb.TagNumber(3)
  set cumulativeDifficulty($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCumulativeDifficulty() => $_has(2);
  @$pb.TagNumber(3)
  void clearCumulativeDifficulty() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get version => $_getSZ(3);
  @$pb.TagNumber(4)
  set version($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasVersion() => $_has(3);
  @$pb.TagNumber(4)
  void clearVersion() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get timestamp => $_getI64(4);
  @$pb.TagNumber(5)
  set timestamp($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTimestamp() => $_has(4);
  @$pb.TagNumber(5)
  void clearTimestamp() => clearField(5);
}

class NodeHeaderHash extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'NodeHeaderHash', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qrl'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'blockNumber', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..p<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'headerhashes', $pb.PbFieldType.PY)
    ..hasRequiredFields = false
  ;

  NodeHeaderHash._() : super();
  factory NodeHeaderHash({
    $fixnum.Int64? blockNumber,
    $core.Iterable<$core.List<$core.int>>? headerhashes,
  }) {
    final _result = create();
    if (blockNumber != null) {
      _result.blockNumber = blockNumber;
    }
    if (headerhashes != null) {
      _result.headerhashes.addAll(headerhashes);
    }
    return _result;
  }
  factory NodeHeaderHash.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NodeHeaderHash.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NodeHeaderHash clone() => NodeHeaderHash()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NodeHeaderHash copyWith(void Function(NodeHeaderHash) updates) => super.copyWith((message) => updates(message as NodeHeaderHash)) as NodeHeaderHash; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NodeHeaderHash create() => NodeHeaderHash._();
  NodeHeaderHash createEmptyInstance() => create();
  static $pb.PbList<NodeHeaderHash> createRepeated() => $pb.PbList<NodeHeaderHash>();
  @$core.pragma('dart2js:noInline')
  static NodeHeaderHash getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NodeHeaderHash>(create);
  static NodeHeaderHash? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get blockNumber => $_getI64(0);
  @$pb.TagNumber(1)
  set blockNumber($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBlockNumber() => $_has(0);
  @$pb.TagNumber(1)
  void clearBlockNumber() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.List<$core.int>> get headerhashes => $_getList(1);
}

class P2PAcknowledgement extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'P2PAcknowledgement', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qrl'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bytesProcessed', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  P2PAcknowledgement._() : super();
  factory P2PAcknowledgement({
    $core.int? bytesProcessed,
  }) {
    final _result = create();
    if (bytesProcessed != null) {
      _result.bytesProcessed = bytesProcessed;
    }
    return _result;
  }
  factory P2PAcknowledgement.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory P2PAcknowledgement.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  P2PAcknowledgement clone() => P2PAcknowledgement()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  P2PAcknowledgement copyWith(void Function(P2PAcknowledgement) updates) => super.copyWith((message) => updates(message as P2PAcknowledgement)) as P2PAcknowledgement; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static P2PAcknowledgement create() => P2PAcknowledgement._();
  P2PAcknowledgement createEmptyInstance() => create();
  static $pb.PbList<P2PAcknowledgement> createRepeated() => $pb.PbList<P2PAcknowledgement>();
  @$core.pragma('dart2js:noInline')
  static P2PAcknowledgement getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<P2PAcknowledgement>(create);
  static P2PAcknowledgement? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get bytesProcessed => $_getIZ(0);
  @$pb.TagNumber(1)
  set bytesProcessed($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBytesProcessed() => $_has(0);
  @$pb.TagNumber(1)
  void clearBytesProcessed() => clearField(1);
}

class PeerInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PeerInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qrl'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'peerIp', $pb.PbFieldType.OY)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'port', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bannedTimestamp', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'credibility', $pb.PbFieldType.OU3)
    ..p<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastConnectionsTimestamp', $pb.PbFieldType.KU3)
    ..hasRequiredFields = false
  ;

  PeerInfo._() : super();
  factory PeerInfo({
    $core.List<$core.int>? peerIp,
    $core.int? port,
    $core.int? bannedTimestamp,
    $core.int? credibility,
    $core.Iterable<$core.int>? lastConnectionsTimestamp,
  }) {
    final _result = create();
    if (peerIp != null) {
      _result.peerIp = peerIp;
    }
    if (port != null) {
      _result.port = port;
    }
    if (bannedTimestamp != null) {
      _result.bannedTimestamp = bannedTimestamp;
    }
    if (credibility != null) {
      _result.credibility = credibility;
    }
    if (lastConnectionsTimestamp != null) {
      _result.lastConnectionsTimestamp.addAll(lastConnectionsTimestamp);
    }
    return _result;
  }
  factory PeerInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PeerInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PeerInfo clone() => PeerInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PeerInfo copyWith(void Function(PeerInfo) updates) => super.copyWith((message) => updates(message as PeerInfo)) as PeerInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PeerInfo create() => PeerInfo._();
  PeerInfo createEmptyInstance() => create();
  static $pb.PbList<PeerInfo> createRepeated() => $pb.PbList<PeerInfo>();
  @$core.pragma('dart2js:noInline')
  static PeerInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PeerInfo>(create);
  static PeerInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get peerIp => $_getN(0);
  @$pb.TagNumber(1)
  set peerIp($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPeerIp() => $_has(0);
  @$pb.TagNumber(1)
  void clearPeerIp() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get port => $_getIZ(1);
  @$pb.TagNumber(2)
  set port($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPort() => $_has(1);
  @$pb.TagNumber(2)
  void clearPort() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get bannedTimestamp => $_getIZ(2);
  @$pb.TagNumber(3)
  set bannedTimestamp($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBannedTimestamp() => $_has(2);
  @$pb.TagNumber(3)
  void clearBannedTimestamp() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get credibility => $_getIZ(3);
  @$pb.TagNumber(4)
  set credibility($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCredibility() => $_has(3);
  @$pb.TagNumber(4)
  void clearCredibility() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get lastConnectionsTimestamp => $_getList(4);
}

class Peers extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Peers', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'qrl'), createEmptyInstance: create)
    ..pc<PeerInfo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'peerInfoList', $pb.PbFieldType.PM, subBuilder: PeerInfo.create)
    ..hasRequiredFields = false
  ;

  Peers._() : super();
  factory Peers({
    $core.Iterable<PeerInfo>? peerInfoList,
  }) {
    final _result = create();
    if (peerInfoList != null) {
      _result.peerInfoList.addAll(peerInfoList);
    }
    return _result;
  }
  factory Peers.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Peers.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Peers clone() => Peers()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Peers copyWith(void Function(Peers) updates) => super.copyWith((message) => updates(message as Peers)) as Peers; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Peers create() => Peers._();
  Peers createEmptyInstance() => create();
  static $pb.PbList<Peers> createRepeated() => $pb.PbList<Peers>();
  @$core.pragma('dart2js:noInline')
  static Peers getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Peers>(create);
  static Peers? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<PeerInfo> get peerInfoList => $_getList(0);
}

