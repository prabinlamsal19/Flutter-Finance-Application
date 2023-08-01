// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_auth_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LocalAuthError {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) passcodeNotSet,
    required TResult Function(String message) notAvailable,
    required TResult Function(String message) notEnrolled,
    required TResult Function(String message) lockedOut,
    required TResult Function(String message) permanentlyLockedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? passcodeNotSet,
    TResult? Function(String message)? notAvailable,
    TResult? Function(String message)? notEnrolled,
    TResult? Function(String message)? lockedOut,
    TResult? Function(String message)? permanentlyLockedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? passcodeNotSet,
    TResult Function(String message)? notAvailable,
    TResult Function(String message)? notEnrolled,
    TResult Function(String message)? lockedOut,
    TResult Function(String message)? permanentlyLockedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PassCodeNotSet value) passcodeNotSet,
    required TResult Function(_NotAvailable value) notAvailable,
    required TResult Function(_NotEnrolled value) notEnrolled,
    required TResult Function(_LockedOut value) lockedOut,
    required TResult Function(_PermanentlyLockedOut value) permanentlyLockedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PassCodeNotSet value)? passcodeNotSet,
    TResult? Function(_NotAvailable value)? notAvailable,
    TResult? Function(_NotEnrolled value)? notEnrolled,
    TResult? Function(_LockedOut value)? lockedOut,
    TResult? Function(_PermanentlyLockedOut value)? permanentlyLockedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PassCodeNotSet value)? passcodeNotSet,
    TResult Function(_NotAvailable value)? notAvailable,
    TResult Function(_NotEnrolled value)? notEnrolled,
    TResult Function(_LockedOut value)? lockedOut,
    TResult Function(_PermanentlyLockedOut value)? permanentlyLockedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocalAuthErrorCopyWith<LocalAuthError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalAuthErrorCopyWith<$Res> {
  factory $LocalAuthErrorCopyWith(
          LocalAuthError value, $Res Function(LocalAuthError) then) =
      _$LocalAuthErrorCopyWithImpl<$Res, LocalAuthError>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$LocalAuthErrorCopyWithImpl<$Res, $Val extends LocalAuthError>
    implements $LocalAuthErrorCopyWith<$Res> {
  _$LocalAuthErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PassCodeNotSetCopyWith<$Res>
    implements $LocalAuthErrorCopyWith<$Res> {
  factory _$$_PassCodeNotSetCopyWith(
          _$_PassCodeNotSet value, $Res Function(_$_PassCodeNotSet) then) =
      __$$_PassCodeNotSetCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_PassCodeNotSetCopyWithImpl<$Res>
    extends _$LocalAuthErrorCopyWithImpl<$Res, _$_PassCodeNotSet>
    implements _$$_PassCodeNotSetCopyWith<$Res> {
  __$$_PassCodeNotSetCopyWithImpl(
      _$_PassCodeNotSet _value, $Res Function(_$_PassCodeNotSet) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_PassCodeNotSet(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PassCodeNotSet implements _PassCodeNotSet {
  const _$_PassCodeNotSet({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'LocalAuthError.passcodeNotSet(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PassCodeNotSet &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PassCodeNotSetCopyWith<_$_PassCodeNotSet> get copyWith =>
      __$$_PassCodeNotSetCopyWithImpl<_$_PassCodeNotSet>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) passcodeNotSet,
    required TResult Function(String message) notAvailable,
    required TResult Function(String message) notEnrolled,
    required TResult Function(String message) lockedOut,
    required TResult Function(String message) permanentlyLockedOut,
  }) {
    return passcodeNotSet(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? passcodeNotSet,
    TResult? Function(String message)? notAvailable,
    TResult? Function(String message)? notEnrolled,
    TResult? Function(String message)? lockedOut,
    TResult? Function(String message)? permanentlyLockedOut,
  }) {
    return passcodeNotSet?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? passcodeNotSet,
    TResult Function(String message)? notAvailable,
    TResult Function(String message)? notEnrolled,
    TResult Function(String message)? lockedOut,
    TResult Function(String message)? permanentlyLockedOut,
    required TResult orElse(),
  }) {
    if (passcodeNotSet != null) {
      return passcodeNotSet(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PassCodeNotSet value) passcodeNotSet,
    required TResult Function(_NotAvailable value) notAvailable,
    required TResult Function(_NotEnrolled value) notEnrolled,
    required TResult Function(_LockedOut value) lockedOut,
    required TResult Function(_PermanentlyLockedOut value) permanentlyLockedOut,
  }) {
    return passcodeNotSet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PassCodeNotSet value)? passcodeNotSet,
    TResult? Function(_NotAvailable value)? notAvailable,
    TResult? Function(_NotEnrolled value)? notEnrolled,
    TResult? Function(_LockedOut value)? lockedOut,
    TResult? Function(_PermanentlyLockedOut value)? permanentlyLockedOut,
  }) {
    return passcodeNotSet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PassCodeNotSet value)? passcodeNotSet,
    TResult Function(_NotAvailable value)? notAvailable,
    TResult Function(_NotEnrolled value)? notEnrolled,
    TResult Function(_LockedOut value)? lockedOut,
    TResult Function(_PermanentlyLockedOut value)? permanentlyLockedOut,
    required TResult orElse(),
  }) {
    if (passcodeNotSet != null) {
      return passcodeNotSet(this);
    }
    return orElse();
  }
}

abstract class _PassCodeNotSet implements LocalAuthError {
  const factory _PassCodeNotSet({required final String message}) =
      _$_PassCodeNotSet;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_PassCodeNotSetCopyWith<_$_PassCodeNotSet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NotAvailableCopyWith<$Res>
    implements $LocalAuthErrorCopyWith<$Res> {
  factory _$$_NotAvailableCopyWith(
          _$_NotAvailable value, $Res Function(_$_NotAvailable) then) =
      __$$_NotAvailableCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_NotAvailableCopyWithImpl<$Res>
    extends _$LocalAuthErrorCopyWithImpl<$Res, _$_NotAvailable>
    implements _$$_NotAvailableCopyWith<$Res> {
  __$$_NotAvailableCopyWithImpl(
      _$_NotAvailable _value, $Res Function(_$_NotAvailable) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_NotAvailable(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NotAvailable implements _NotAvailable {
  const _$_NotAvailable({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'LocalAuthError.notAvailable(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotAvailable &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotAvailableCopyWith<_$_NotAvailable> get copyWith =>
      __$$_NotAvailableCopyWithImpl<_$_NotAvailable>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) passcodeNotSet,
    required TResult Function(String message) notAvailable,
    required TResult Function(String message) notEnrolled,
    required TResult Function(String message) lockedOut,
    required TResult Function(String message) permanentlyLockedOut,
  }) {
    return notAvailable(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? passcodeNotSet,
    TResult? Function(String message)? notAvailable,
    TResult? Function(String message)? notEnrolled,
    TResult? Function(String message)? lockedOut,
    TResult? Function(String message)? permanentlyLockedOut,
  }) {
    return notAvailable?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? passcodeNotSet,
    TResult Function(String message)? notAvailable,
    TResult Function(String message)? notEnrolled,
    TResult Function(String message)? lockedOut,
    TResult Function(String message)? permanentlyLockedOut,
    required TResult orElse(),
  }) {
    if (notAvailable != null) {
      return notAvailable(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PassCodeNotSet value) passcodeNotSet,
    required TResult Function(_NotAvailable value) notAvailable,
    required TResult Function(_NotEnrolled value) notEnrolled,
    required TResult Function(_LockedOut value) lockedOut,
    required TResult Function(_PermanentlyLockedOut value) permanentlyLockedOut,
  }) {
    return notAvailable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PassCodeNotSet value)? passcodeNotSet,
    TResult? Function(_NotAvailable value)? notAvailable,
    TResult? Function(_NotEnrolled value)? notEnrolled,
    TResult? Function(_LockedOut value)? lockedOut,
    TResult? Function(_PermanentlyLockedOut value)? permanentlyLockedOut,
  }) {
    return notAvailable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PassCodeNotSet value)? passcodeNotSet,
    TResult Function(_NotAvailable value)? notAvailable,
    TResult Function(_NotEnrolled value)? notEnrolled,
    TResult Function(_LockedOut value)? lockedOut,
    TResult Function(_PermanentlyLockedOut value)? permanentlyLockedOut,
    required TResult orElse(),
  }) {
    if (notAvailable != null) {
      return notAvailable(this);
    }
    return orElse();
  }
}

abstract class _NotAvailable implements LocalAuthError {
  const factory _NotAvailable({required final String message}) =
      _$_NotAvailable;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_NotAvailableCopyWith<_$_NotAvailable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NotEnrolledCopyWith<$Res>
    implements $LocalAuthErrorCopyWith<$Res> {
  factory _$$_NotEnrolledCopyWith(
          _$_NotEnrolled value, $Res Function(_$_NotEnrolled) then) =
      __$$_NotEnrolledCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_NotEnrolledCopyWithImpl<$Res>
    extends _$LocalAuthErrorCopyWithImpl<$Res, _$_NotEnrolled>
    implements _$$_NotEnrolledCopyWith<$Res> {
  __$$_NotEnrolledCopyWithImpl(
      _$_NotEnrolled _value, $Res Function(_$_NotEnrolled) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_NotEnrolled(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NotEnrolled implements _NotEnrolled {
  const _$_NotEnrolled({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'LocalAuthError.notEnrolled(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotEnrolled &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotEnrolledCopyWith<_$_NotEnrolled> get copyWith =>
      __$$_NotEnrolledCopyWithImpl<_$_NotEnrolled>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) passcodeNotSet,
    required TResult Function(String message) notAvailable,
    required TResult Function(String message) notEnrolled,
    required TResult Function(String message) lockedOut,
    required TResult Function(String message) permanentlyLockedOut,
  }) {
    return notEnrolled(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? passcodeNotSet,
    TResult? Function(String message)? notAvailable,
    TResult? Function(String message)? notEnrolled,
    TResult? Function(String message)? lockedOut,
    TResult? Function(String message)? permanentlyLockedOut,
  }) {
    return notEnrolled?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? passcodeNotSet,
    TResult Function(String message)? notAvailable,
    TResult Function(String message)? notEnrolled,
    TResult Function(String message)? lockedOut,
    TResult Function(String message)? permanentlyLockedOut,
    required TResult orElse(),
  }) {
    if (notEnrolled != null) {
      return notEnrolled(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PassCodeNotSet value) passcodeNotSet,
    required TResult Function(_NotAvailable value) notAvailable,
    required TResult Function(_NotEnrolled value) notEnrolled,
    required TResult Function(_LockedOut value) lockedOut,
    required TResult Function(_PermanentlyLockedOut value) permanentlyLockedOut,
  }) {
    return notEnrolled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PassCodeNotSet value)? passcodeNotSet,
    TResult? Function(_NotAvailable value)? notAvailable,
    TResult? Function(_NotEnrolled value)? notEnrolled,
    TResult? Function(_LockedOut value)? lockedOut,
    TResult? Function(_PermanentlyLockedOut value)? permanentlyLockedOut,
  }) {
    return notEnrolled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PassCodeNotSet value)? passcodeNotSet,
    TResult Function(_NotAvailable value)? notAvailable,
    TResult Function(_NotEnrolled value)? notEnrolled,
    TResult Function(_LockedOut value)? lockedOut,
    TResult Function(_PermanentlyLockedOut value)? permanentlyLockedOut,
    required TResult orElse(),
  }) {
    if (notEnrolled != null) {
      return notEnrolled(this);
    }
    return orElse();
  }
}

abstract class _NotEnrolled implements LocalAuthError {
  const factory _NotEnrolled({required final String message}) = _$_NotEnrolled;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_NotEnrolledCopyWith<_$_NotEnrolled> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LockedOutCopyWith<$Res>
    implements $LocalAuthErrorCopyWith<$Res> {
  factory _$$_LockedOutCopyWith(
          _$_LockedOut value, $Res Function(_$_LockedOut) then) =
      __$$_LockedOutCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_LockedOutCopyWithImpl<$Res>
    extends _$LocalAuthErrorCopyWithImpl<$Res, _$_LockedOut>
    implements _$$_LockedOutCopyWith<$Res> {
  __$$_LockedOutCopyWithImpl(
      _$_LockedOut _value, $Res Function(_$_LockedOut) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_LockedOut(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LockedOut implements _LockedOut {
  const _$_LockedOut({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'LocalAuthError.lockedOut(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LockedOut &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LockedOutCopyWith<_$_LockedOut> get copyWith =>
      __$$_LockedOutCopyWithImpl<_$_LockedOut>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) passcodeNotSet,
    required TResult Function(String message) notAvailable,
    required TResult Function(String message) notEnrolled,
    required TResult Function(String message) lockedOut,
    required TResult Function(String message) permanentlyLockedOut,
  }) {
    return lockedOut(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? passcodeNotSet,
    TResult? Function(String message)? notAvailable,
    TResult? Function(String message)? notEnrolled,
    TResult? Function(String message)? lockedOut,
    TResult? Function(String message)? permanentlyLockedOut,
  }) {
    return lockedOut?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? passcodeNotSet,
    TResult Function(String message)? notAvailable,
    TResult Function(String message)? notEnrolled,
    TResult Function(String message)? lockedOut,
    TResult Function(String message)? permanentlyLockedOut,
    required TResult orElse(),
  }) {
    if (lockedOut != null) {
      return lockedOut(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PassCodeNotSet value) passcodeNotSet,
    required TResult Function(_NotAvailable value) notAvailable,
    required TResult Function(_NotEnrolled value) notEnrolled,
    required TResult Function(_LockedOut value) lockedOut,
    required TResult Function(_PermanentlyLockedOut value) permanentlyLockedOut,
  }) {
    return lockedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PassCodeNotSet value)? passcodeNotSet,
    TResult? Function(_NotAvailable value)? notAvailable,
    TResult? Function(_NotEnrolled value)? notEnrolled,
    TResult? Function(_LockedOut value)? lockedOut,
    TResult? Function(_PermanentlyLockedOut value)? permanentlyLockedOut,
  }) {
    return lockedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PassCodeNotSet value)? passcodeNotSet,
    TResult Function(_NotAvailable value)? notAvailable,
    TResult Function(_NotEnrolled value)? notEnrolled,
    TResult Function(_LockedOut value)? lockedOut,
    TResult Function(_PermanentlyLockedOut value)? permanentlyLockedOut,
    required TResult orElse(),
  }) {
    if (lockedOut != null) {
      return lockedOut(this);
    }
    return orElse();
  }
}

abstract class _LockedOut implements LocalAuthError {
  const factory _LockedOut({required final String message}) = _$_LockedOut;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_LockedOutCopyWith<_$_LockedOut> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PermanentlyLockedOutCopyWith<$Res>
    implements $LocalAuthErrorCopyWith<$Res> {
  factory _$$_PermanentlyLockedOutCopyWith(_$_PermanentlyLockedOut value,
          $Res Function(_$_PermanentlyLockedOut) then) =
      __$$_PermanentlyLockedOutCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_PermanentlyLockedOutCopyWithImpl<$Res>
    extends _$LocalAuthErrorCopyWithImpl<$Res, _$_PermanentlyLockedOut>
    implements _$$_PermanentlyLockedOutCopyWith<$Res> {
  __$$_PermanentlyLockedOutCopyWithImpl(_$_PermanentlyLockedOut _value,
      $Res Function(_$_PermanentlyLockedOut) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_PermanentlyLockedOut(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PermanentlyLockedOut implements _PermanentlyLockedOut {
  const _$_PermanentlyLockedOut({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'LocalAuthError.permanentlyLockedOut(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PermanentlyLockedOut &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PermanentlyLockedOutCopyWith<_$_PermanentlyLockedOut> get copyWith =>
      __$$_PermanentlyLockedOutCopyWithImpl<_$_PermanentlyLockedOut>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) passcodeNotSet,
    required TResult Function(String message) notAvailable,
    required TResult Function(String message) notEnrolled,
    required TResult Function(String message) lockedOut,
    required TResult Function(String message) permanentlyLockedOut,
  }) {
    return permanentlyLockedOut(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? passcodeNotSet,
    TResult? Function(String message)? notAvailable,
    TResult? Function(String message)? notEnrolled,
    TResult? Function(String message)? lockedOut,
    TResult? Function(String message)? permanentlyLockedOut,
  }) {
    return permanentlyLockedOut?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? passcodeNotSet,
    TResult Function(String message)? notAvailable,
    TResult Function(String message)? notEnrolled,
    TResult Function(String message)? lockedOut,
    TResult Function(String message)? permanentlyLockedOut,
    required TResult orElse(),
  }) {
    if (permanentlyLockedOut != null) {
      return permanentlyLockedOut(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PassCodeNotSet value) passcodeNotSet,
    required TResult Function(_NotAvailable value) notAvailable,
    required TResult Function(_NotEnrolled value) notEnrolled,
    required TResult Function(_LockedOut value) lockedOut,
    required TResult Function(_PermanentlyLockedOut value) permanentlyLockedOut,
  }) {
    return permanentlyLockedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PassCodeNotSet value)? passcodeNotSet,
    TResult? Function(_NotAvailable value)? notAvailable,
    TResult? Function(_NotEnrolled value)? notEnrolled,
    TResult? Function(_LockedOut value)? lockedOut,
    TResult? Function(_PermanentlyLockedOut value)? permanentlyLockedOut,
  }) {
    return permanentlyLockedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PassCodeNotSet value)? passcodeNotSet,
    TResult Function(_NotAvailable value)? notAvailable,
    TResult Function(_NotEnrolled value)? notEnrolled,
    TResult Function(_LockedOut value)? lockedOut,
    TResult Function(_PermanentlyLockedOut value)? permanentlyLockedOut,
    required TResult orElse(),
  }) {
    if (permanentlyLockedOut != null) {
      return permanentlyLockedOut(this);
    }
    return orElse();
  }
}

abstract class _PermanentlyLockedOut implements LocalAuthError {
  const factory _PermanentlyLockedOut({required final String message}) =
      _$_PermanentlyLockedOut;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_PermanentlyLockedOutCopyWith<_$_PermanentlyLockedOut> get copyWith =>
      throw _privateConstructorUsedError;
}
