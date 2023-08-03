// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:personal_finance/features/signup/data/graphql/__generated__/create_user.ast.gql.dart'
    as _i5;
import 'package:personal_finance/features/signup/data/graphql/__generated__/create_user.data.gql.dart'
    as _i2;
import 'package:personal_finance/features/signup/data/graphql/__generated__/create_user.var.gql.dart'
    as _i3;
import 'package:personal_finance/schema/__generated__/serializers.gql.dart'
    as _i6;

part 'create_user.req.gql.g.dart';

abstract class GCreateUserReq
    implements
        Built<GCreateUserReq, GCreateUserReqBuilder>,
        _i1.OperationRequest<_i2.GCreateUserData, _i3.GCreateUserVars> {
  GCreateUserReq._();

  factory GCreateUserReq([Function(GCreateUserReqBuilder b) updates]) =
      _$GCreateUserReq;

  static void _initializeBuilder(GCreateUserReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'CreateUser',
    )
    ..executeOnListen = true;
  @override
  _i3.GCreateUserVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
      );
  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GCreateUserData? Function(
    _i2.GCreateUserData?,
    _i2.GCreateUserData?,
  )? get updateResult;
  @override
  _i2.GCreateUserData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GCreateUserData? parseData(Map<String, dynamic> json) =>
      _i2.GCreateUserData.fromJson(json);
  static Serializer<GCreateUserReq> get serializer =>
      _$gCreateUserReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GCreateUserReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCreateUserReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GCreateUserReq.serializer,
        json,
      );
}
