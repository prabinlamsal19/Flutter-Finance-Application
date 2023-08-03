// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:personal_finance/schema/__generated__/serializers.gql.dart'
    as _i1;

part 'schema.schema.gql.g.dart';

abstract class GLoginInput implements Built<GLoginInput, GLoginInputBuilder> {
  GLoginInput._();

  factory GLoginInput([Function(GLoginInputBuilder b) updates]) = _$GLoginInput;

  String get email;
  String get password;
  static Serializer<GLoginInput> get serializer => _$gLoginInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GLoginInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GLoginInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GLoginInput.serializer,
        json,
      );
}

abstract class GCreateUserInput
    implements Built<GCreateUserInput, GCreateUserInputBuilder> {
  GCreateUserInput._();

  factory GCreateUserInput([Function(GCreateUserInputBuilder b) updates]) =
      _$GCreateUserInput;

  String get username;
  String get email;
  String get password;
  static Serializer<GCreateUserInput> get serializer =>
      _$gCreateUserInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateUserInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCreateUserInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateUserInput.serializer,
        json,
      );
}

abstract class GCreatePostInput
    implements Built<GCreatePostInput, GCreatePostInputBuilder> {
  GCreatePostInput._();

  factory GCreatePostInput([Function(GCreatePostInputBuilder b) updates]) =
      _$GCreatePostInput;

  String get postTitle;
  String get postDescription;
  bool get isPublic;
  static Serializer<GCreatePostInput> get serializer =>
      _$gCreatePostInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreatePostInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCreatePostInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreatePostInput.serializer,
        json,
      );
}

abstract class GUpdatePostInput
    implements Built<GUpdatePostInput, GUpdatePostInputBuilder> {
  GUpdatePostInput._();

  factory GUpdatePostInput([Function(GUpdatePostInputBuilder b) updates]) =
      _$GUpdatePostInput;

  String? get postTitle;
  String? get postDescription;
  bool? get isPublic;
  String get id;
  static Serializer<GUpdatePostInput> get serializer =>
      _$gUpdatePostInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdatePostInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUpdatePostInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdatePostInput.serializer,
        json,
      );
}

abstract class GCreateCommentInput
    implements Built<GCreateCommentInput, GCreateCommentInputBuilder> {
  GCreateCommentInput._();

  factory GCreateCommentInput(
      [Function(GCreateCommentInputBuilder b) updates]) = _$GCreateCommentInput;

  String get id;
  String get comment;
  static Serializer<GCreateCommentInput> get serializer =>
      _$gCreateCommentInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateCommentInput.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCreateCommentInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateCommentInput.serializer,
        json,
      );
}

const Map<String, Set<String>> possibleTypesMap = {};
