import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:personal_finance/src/core/base/base_bloc.dart';

part 'sign_up_cubit.freezed.dart';
part 'sign_up_state.dart';

class SignupCubit extends BaseCubit<SignupState> {
  SignupCubit() : super(const SignupState.initial());
}
