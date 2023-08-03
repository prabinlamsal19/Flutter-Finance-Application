// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:personal_finance/schema/__generated__/serializers.gql.dart'
    as _i1;

part 'create_user.var.gql.g.dart';

abstract class GCreateUserVars
    implements Built<GCreateUserVars, GCreateUserVarsBuilder> {
  GCreateUserVars._();

  factory GCreateUserVars([Function(GCreateUserVarsBuilder b) updates]) =
      _$GCreateUserVars;

  String get username;
  String get email;
  String get password;
  static Serializer<GCreateUserVars> get serializer =>
      _$gCreateUserVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateUserVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCreateUserVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateUserVars.serializer,
        json,
      );
}
