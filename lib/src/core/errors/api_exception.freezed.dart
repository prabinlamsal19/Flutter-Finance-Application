// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ApiException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverException,
    required TResult Function(String message) unprocessableEntity,
    required TResult Function() unAuthorized,
    required TResult Function() unAuthenticated,
    required TResult Function() network,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverException,
    TResult? Function(String message)? unprocessableEntity,
    TResult? Function()? unAuthorized,
    TResult? Function()? unAuthenticated,
    TResult? Function()? network,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverException,
    TResult Function(String message)? unprocessableEntity,
    TResult Function()? unAuthorized,
    TResult Function()? unAuthenticated,
    TResult Function()? network,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerException value) serverException,
    required TResult Function(_UnprocessableEntity value) unprocessableEntity,
    required TResult Function(_UnAuthorized value) unAuthorized,
    required TResult Function(_UnAutheticated value) unAuthenticated,
    required TResult Function(_Network value) network,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerException value)? serverException,
    TResult? Function(_UnprocessableEntity value)? unprocessableEntity,
    TResult? Function(_UnAuthorized value)? unAuthorized,
    TResult? Function(_UnAutheticated value)? unAuthenticated,
    TResult? Function(_Network value)? network,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerException value)? serverException,
    TResult Function(_UnprocessableEntity value)? unprocessableEntity,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_UnAutheticated value)? unAuthenticated,
    TResult Function(_Network value)? network,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiExceptionCopyWith<$Res> {
  factory $ApiExceptionCopyWith(
          ApiException value, $Res Function(ApiException) then) =
      _$ApiExceptionCopyWithImpl<$Res, ApiException>;
}

/// @nodoc
class _$ApiExceptionCopyWithImpl<$Res, $Val extends ApiException>
    implements $ApiExceptionCopyWith<$Res> {
  _$ApiExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ServerExceptionCopyWith<$Res> {
  factory _$$_ServerExceptionCopyWith(
          _$_ServerException value, $Res Function(_$_ServerException) then) =
      __$$_ServerExceptionCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_ServerExceptionCopyWithImpl<$Res>
    extends _$ApiExceptionCopyWithImpl<$Res, _$_ServerException>
    implements _$$_ServerExceptionCopyWith<$Res> {
  __$$_ServerExceptionCopyWithImpl(
      _$_ServerException _value, $Res Function(_$_ServerException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_ServerException(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ServerException implements _ServerException {
  const _$_ServerException({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ApiException.serverException(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServerException &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServerExceptionCopyWith<_$_ServerException> get copyWith =>
      __$$_ServerExceptionCopyWithImpl<_$_ServerException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverException,
    required TResult Function(String message) unprocessableEntity,
    required TResult Function() unAuthorized,
    required TResult Function() unAuthenticated,
    required TResult Function() network,
  }) {
    return serverException(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverException,
    TResult? Function(String message)? unprocessableEntity,
    TResult? Function()? unAuthorized,
    TResult? Function()? unAuthenticated,
    TResult? Function()? network,
  }) {
    return serverException?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverException,
    TResult Function(String message)? unprocessableEntity,
    TResult Function()? unAuthorized,
    TResult Function()? unAuthenticated,
    TResult Function()? network,
    required TResult orElse(),
  }) {
    if (serverException != null) {
      return serverException(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerException value) serverException,
    required TResult Function(_UnprocessableEntity value) unprocessableEntity,
    required TResult Function(_UnAuthorized value) unAuthorized,
    required TResult Function(_UnAutheticated value) unAuthenticated,
    required TResult Function(_Network value) network,
  }) {
    return serverException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerException value)? serverException,
    TResult? Function(_UnprocessableEntity value)? unprocessableEntity,
    TResult? Function(_UnAuthorized value)? unAuthorized,
    TResult? Function(_UnAutheticated value)? unAuthenticated,
    TResult? Function(_Network value)? network,
  }) {
    return serverException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerException value)? serverException,
    TResult Function(_UnprocessableEntity value)? unprocessableEntity,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_UnAutheticated value)? unAuthenticated,
    TResult Function(_Network value)? network,
    required TResult orElse(),
  }) {
    if (serverException != null) {
      return serverException(this);
    }
    return orElse();
  }
}

abstract class _ServerException implements ApiException {
  const factory _ServerException({required final String message}) =
      _$_ServerException;

  String get message;
  @JsonKey(ignore: true)
  _$$_ServerExceptionCopyWith<_$_ServerException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UnprocessableEntityCopyWith<$Res> {
  factory _$$_UnprocessableEntityCopyWith(_$_UnprocessableEntity value,
          $Res Function(_$_UnprocessableEntity) then) =
      __$$_UnprocessableEntityCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_UnprocessableEntityCopyWithImpl<$Res>
    extends _$ApiExceptionCopyWithImpl<$Res, _$_UnprocessableEntity>
    implements _$$_UnprocessableEntityCopyWith<$Res> {
  __$$_UnprocessableEntityCopyWithImpl(_$_UnprocessableEntity _value,
      $Res Function(_$_UnprocessableEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_UnprocessableEntity(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UnprocessableEntity implements _UnprocessableEntity {
  const _$_UnprocessableEntity({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ApiException.unprocessableEntity(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UnprocessableEntity &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UnprocessableEntityCopyWith<_$_UnprocessableEntity> get copyWith =>
      __$$_UnprocessableEntityCopyWithImpl<_$_UnprocessableEntity>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverException,
    required TResult Function(String message) unprocessableEntity,
    required TResult Function() unAuthorized,
    required TResult Function() unAuthenticated,
    required TResult Function() network,
  }) {
    return unprocessableEntity(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverException,
    TResult? Function(String message)? unprocessableEntity,
    TResult? Function()? unAuthorized,
    TResult? Function()? unAuthenticated,
    TResult? Function()? network,
  }) {
    return unprocessableEntity?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverException,
    TResult Function(String message)? unprocessableEntity,
    TResult Function()? unAuthorized,
    TResult Function()? unAuthenticated,
    TResult Function()? network,
    required TResult orElse(),
  }) {
    if (unprocessableEntity != null) {
      return unprocessableEntity(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerException value) serverException,
    required TResult Function(_UnprocessableEntity value) unprocessableEntity,
    required TResult Function(_UnAuthorized value) unAuthorized,
    required TResult Function(_UnAutheticated value) unAuthenticated,
    required TResult Function(_Network value) network,
  }) {
    return unprocessableEntity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerException value)? serverException,
    TResult? Function(_UnprocessableEntity value)? unprocessableEntity,
    TResult? Function(_UnAuthorized value)? unAuthorized,
    TResult? Function(_UnAutheticated value)? unAuthenticated,
    TResult? Function(_Network value)? network,
  }) {
    return unprocessableEntity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerException value)? serverException,
    TResult Function(_UnprocessableEntity value)? unprocessableEntity,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_UnAutheticated value)? unAuthenticated,
    TResult Function(_Network value)? network,
    required TResult orElse(),
  }) {
    if (unprocessableEntity != null) {
      return unprocessableEntity(this);
    }
    return orElse();
  }
}

abstract class _UnprocessableEntity implements ApiException {
  const factory _UnprocessableEntity({required final String message}) =
      _$_UnprocessableEntity;

  String get message;
  @JsonKey(ignore: true)
  _$$_UnprocessableEntityCopyWith<_$_UnprocessableEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UnAuthorizedCopyWith<$Res> {
  factory _$$_UnAuthorizedCopyWith(
          _$_UnAuthorized value, $Res Function(_$_UnAuthorized) then) =
      __$$_UnAuthorizedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnAuthorizedCopyWithImpl<$Res>
    extends _$ApiExceptionCopyWithImpl<$Res, _$_UnAuthorized>
    implements _$$_UnAuthorizedCopyWith<$Res> {
  __$$_UnAuthorizedCopyWithImpl(
      _$_UnAuthorized _value, $Res Function(_$_UnAuthorized) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UnAuthorized implements _UnAuthorized {
  const _$_UnAuthorized();

  @override
  String toString() {
    return 'ApiException.unAuthorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UnAuthorized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverException,
    required TResult Function(String message) unprocessableEntity,
    required TResult Function() unAuthorized,
    required TResult Function() unAuthenticated,
    required TResult Function() network,
  }) {
    return unAuthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverException,
    TResult? Function(String message)? unprocessableEntity,
    TResult? Function()? unAuthorized,
    TResult? Function()? unAuthenticated,
    TResult? Function()? network,
  }) {
    return unAuthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverException,
    TResult Function(String message)? unprocessableEntity,
    TResult Function()? unAuthorized,
    TResult Function()? unAuthenticated,
    TResult Function()? network,
    required TResult orElse(),
  }) {
    if (unAuthorized != null) {
      return unAuthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerException value) serverException,
    required TResult Function(_UnprocessableEntity value) unprocessableEntity,
    required TResult Function(_UnAuthorized value) unAuthorized,
    required TResult Function(_UnAutheticated value) unAuthenticated,
    required TResult Function(_Network value) network,
  }) {
    return unAuthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerException value)? serverException,
    TResult? Function(_UnprocessableEntity value)? unprocessableEntity,
    TResult? Function(_UnAuthorized value)? unAuthorized,
    TResult? Function(_UnAutheticated value)? unAuthenticated,
    TResult? Function(_Network value)? network,
  }) {
    return unAuthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerException value)? serverException,
    TResult Function(_UnprocessableEntity value)? unprocessableEntity,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_UnAutheticated value)? unAuthenticated,
    TResult Function(_Network value)? network,
    required TResult orElse(),
  }) {
    if (unAuthorized != null) {
      return unAuthorized(this);
    }
    return orElse();
  }
}

abstract class _UnAuthorized implements ApiException {
  const factory _UnAuthorized() = _$_UnAuthorized;
}

/// @nodoc
abstract class _$$_UnAutheticatedCopyWith<$Res> {
  factory _$$_UnAutheticatedCopyWith(
          _$_UnAutheticated value, $Res Function(_$_UnAutheticated) then) =
      __$$_UnAutheticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnAutheticatedCopyWithImpl<$Res>
    extends _$ApiExceptionCopyWithImpl<$Res, _$_UnAutheticated>
    implements _$$_UnAutheticatedCopyWith<$Res> {
  __$$_UnAutheticatedCopyWithImpl(
      _$_UnAutheticated _value, $Res Function(_$_UnAutheticated) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UnAutheticated implements _UnAutheticated {
  const _$_UnAutheticated();

  @override
  String toString() {
    return 'ApiException.unAuthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UnAutheticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverException,
    required TResult Function(String message) unprocessableEntity,
    required TResult Function() unAuthorized,
    required TResult Function() unAuthenticated,
    required TResult Function() network,
  }) {
    return unAuthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverException,
    TResult? Function(String message)? unprocessableEntity,
    TResult? Function()? unAuthorized,
    TResult? Function()? unAuthenticated,
    TResult? Function()? network,
  }) {
    return unAuthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverException,
    TResult Function(String message)? unprocessableEntity,
    TResult Function()? unAuthorized,
    TResult Function()? unAuthenticated,
    TResult Function()? network,
    required TResult orElse(),
  }) {
    if (unAuthenticated != null) {
      return unAuthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerException value) serverException,
    required TResult Function(_UnprocessableEntity value) unprocessableEntity,
    required TResult Function(_UnAuthorized value) unAuthorized,
    required TResult Function(_UnAutheticated value) unAuthenticated,
    required TResult Function(_Network value) network,
  }) {
    return unAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerException value)? serverException,
    TResult? Function(_UnprocessableEntity value)? unprocessableEntity,
    TResult? Function(_UnAuthorized value)? unAuthorized,
    TResult? Function(_UnAutheticated value)? unAuthenticated,
    TResult? Function(_Network value)? network,
  }) {
    return unAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerException value)? serverException,
    TResult Function(_UnprocessableEntity value)? unprocessableEntity,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_UnAutheticated value)? unAuthenticated,
    TResult Function(_Network value)? network,
    required TResult orElse(),
  }) {
    if (unAuthenticated != null) {
      return unAuthenticated(this);
    }
    return orElse();
  }
}

abstract class _UnAutheticated implements ApiException {
  const factory _UnAutheticated() = _$_UnAutheticated;
}

/// @nodoc
abstract class _$$_NetworkCopyWith<$Res> {
  factory _$$_NetworkCopyWith(
          _$_Network value, $Res Function(_$_Network) then) =
      __$$_NetworkCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NetworkCopyWithImpl<$Res>
    extends _$ApiExceptionCopyWithImpl<$Res, _$_Network>
    implements _$$_NetworkCopyWith<$Res> {
  __$$_NetworkCopyWithImpl(_$_Network _value, $Res Function(_$_Network) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Network implements _Network {
  const _$_Network();

  @override
  String toString() {
    return 'ApiException.network()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Network);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverException,
    required TResult Function(String message) unprocessableEntity,
    required TResult Function() unAuthorized,
    required TResult Function() unAuthenticated,
    required TResult Function() network,
  }) {
    return network();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverException,
    TResult? Function(String message)? unprocessableEntity,
    TResult? Function()? unAuthorized,
    TResult? Function()? unAuthenticated,
    TResult? Function()? network,
  }) {
    return network?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverException,
    TResult Function(String message)? unprocessableEntity,
    TResult Function()? unAuthorized,
    TResult Function()? unAuthenticated,
    TResult Function()? network,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerException value) serverException,
    required TResult Function(_UnprocessableEntity value) unprocessableEntity,
    required TResult Function(_UnAuthorized value) unAuthorized,
    required TResult Function(_UnAutheticated value) unAuthenticated,
    required TResult Function(_Network value) network,
  }) {
    return network(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerException value)? serverException,
    TResult? Function(_UnprocessableEntity value)? unprocessableEntity,
    TResult? Function(_UnAuthorized value)? unAuthorized,
    TResult? Function(_UnAutheticated value)? unAuthenticated,
    TResult? Function(_Network value)? network,
  }) {
    return network?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerException value)? serverException,
    TResult Function(_UnprocessableEntity value)? unprocessableEntity,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_UnAutheticated value)? unAuthenticated,
    TResult Function(_Network value)? network,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(this);
    }
    return orElse();
  }
}

abstract class _Network implements ApiException {
  const factory _Network() = _$_Network;
}
