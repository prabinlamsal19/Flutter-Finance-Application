//The task of this bloc is to vallidate the signin inputs dynamically
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc() : super(SignInInitialState()) {
    on<SignInPasswordTextChangedEvent>((event, emit) {
      if (event.password.length <= 7) {
        emit(SignInPasswordErrorState("Please enter a strong password."));
      } else {
        emit(SignInValidState());
      }
    });

    on<SignInConfirmPasswordTextChangedEvent>((event, emit) {
      if (event.password.length <= 7) {
        emit(
            SignInConfirmPasswordErrorState("Please enter a strong password."));
      } else {
        emit(SignInValidState());
      }
    });

    // on<SignInEmailTextChangedEvent>((event, emit) {
    //   if (EmailValidator.validate(event.email)) {
    //     emit(SignInValidState());
    //   } else {
    //     emit(SignInTextErrorState("Please enter a valid email address."));
    //   }
    // });

    on<SignInSubmittedEvent>((event, emit) {
      emit(SignInLoadingState());
    });
  }
}
