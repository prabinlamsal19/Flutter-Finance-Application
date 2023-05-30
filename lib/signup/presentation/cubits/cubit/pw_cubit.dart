//to toogle the password view using eye icon

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'pw_state.dart';


class PwCubit extends Cubit<PwState> {
  PwCubit() : super(PwState(showPw: false));

  void showPassword()=> emit(PwState(showPw: true));
  void hidePassword()=> emit(PwState(showPw: false));
}
class ConfirmPwCubit extends Cubit<ConfirmPwState> {
  ConfirmPwCubit() : super(ConfirmPwState(showConfirmPw: false));

  void showConfirmPassword()=> emit(ConfirmPwState(showConfirmPw: true));
  void hideConfirmPassword()=> emit(ConfirmPwState(showConfirmPw: false));
}
