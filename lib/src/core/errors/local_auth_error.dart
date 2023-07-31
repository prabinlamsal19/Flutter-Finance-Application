/*
* @Author:Jiten Basnet on 09/05/2023
* @Company: EB Pearls
*/

import 'package:freezed_annotation/freezed_annotation.dart';

part 'local_auth_error.freezed.dart';

@freezed
class LocalAuthError with _$LocalAuthError implements Exception {
  /// The user has not yet configured a passcode (iOS) or
  /// PIN/pattern/password (Android) on the device.
  const factory LocalAuthError.passcodeNotSet({
    required String message,
  }) = _PassCodeNotSet;

  /// The device does not have hardware support for biometrics.
  const factory LocalAuthError.notAvailable({required String message}) =
      _NotAvailable;

  /// The user has not enrolled any biometrics on the device.
  const factory LocalAuthError.notEnrolled({required String message}) =
      _NotEnrolled;

  /// The API is temporarily locked out due to too many attempts.
  const factory LocalAuthError.lockedOut({required String message}) =
      _LockedOut;

  /// The API is locked out more persistently than [lockedOut].
  /// Strong authentication like PIN/Pattern/Password is required to unlock.
  const factory LocalAuthError.permanentlyLockedOut({required String message}) =
      _PermanentlyLockedOut;
}
