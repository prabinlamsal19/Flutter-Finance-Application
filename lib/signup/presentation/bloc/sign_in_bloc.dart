
//The task of this bloc is to vallidate the signin inputs dynamically

import 'package:bloc/bloc.dart';
import 'package:email_validator/email_validator.dart';
import 'package:meta/meta.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc() : super(SignInInitialState()) {

    on<SignInPasswordTextChangedEvent>((event, emit) {
      if(event.password.length <= 7){ 
        emit(SignInPasswordErrorState("Please enter a strong password."));
      }
      else{ 
        emit(SignInValidState());
      }
    });
    on<SignInConfirmPasswordTextChangedEvent>((event, emit) {
      if(event.password.length <= 7){ 
        emit(SignInConfirmPasswordErrorState("Please enter a strong password."));
      }
      else{ 
        emit(SignInValidState());
      }
    });
    on<SignInEmailTextChangedEvent>((event, emit) { 
      if(event.email == "" && EmailValidator.validate(event.email)){ 
        emit(SignInTextErrorState("Please enter a valid email address."));
      }

      else{ 
        emit(SignInValidState());
      }
    });
    
    on<SignInSubmittedEvent>((event, emit) {
      emit(SignInLoadingState());
    });
  }
}