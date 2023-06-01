part of 'sign_in_bloc.dart';

abstract class SignInState extends Equatable {
  @override
  List<Object> get props => [];
}

class SignInInitialState extends SignInState {}

class SignInInvalidState extends SignInState {}

class SignInValidState extends SignInState {}

class SignInTextErrorState extends SignInState {
  final String errorMessage;
  SignInTextErrorState(this.errorMessage);
}

class SignInPasswordErrorState extends SignInState {
  final String errorMessage;
  SignInPasswordErrorState(this.errorMessage);
}

class SignInConfirmPasswordErrorState extends SignInState {
  final String errorMessage;
  SignInConfirmPasswordErrorState(this.errorMessage);
}

class SignInLoadingState extends SignInState {}
