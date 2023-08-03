// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:ferry_exec/ferry_exec.dart';
import 'package:gql_code_builder/src/serializers/operation_serializer.dart'
    show OperationSerializer;
import 'package:personal_finance/features/signup/data/graphql/__generated__/create_user.data.gql.dart'
    show GCreateUserData, GCreateUserData_createUser;
import 'package:personal_finance/features/signup/data/graphql/__generated__/create_user.req.gql.dart'
    show GCreateUserReq;
import 'package:personal_finance/features/signup/data/graphql/__generated__/create_user.var.gql.dart'
    show GCreateUserVars;
import 'package:personal_finance/schema/__generated__/schema.schema.gql.dart'
    show
        GCreateCommentInput,
        GCreatePostInput,
        GCreateUserInput,
        GLoginInput,
        GUpdatePostInput;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GCreateCommentInput,
  GCreatePostInput,
  GCreateUserData,
  GCreateUserData_createUser,
  GCreateUserInput,
  GCreateUserReq,
  GCreateUserVars,
  GLoginInput,
  GUpdatePostInput,
])
final Serializers serializers = _serializersBuilder.build();
