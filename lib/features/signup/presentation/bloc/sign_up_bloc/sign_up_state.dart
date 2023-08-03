part of 'sign_up_cubit.dart';

@freezed
class SignupState with _$SignupState {
  const factory SignupState.initial() = _Initial;
  const factory SignupState.loading() = _laoding;
  const factory SignupState.error({required String message}) = _Error;
  const factory SignupState.success() = _Success;
}
