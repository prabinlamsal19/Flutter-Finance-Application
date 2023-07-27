part of 'sign_in_bloc.dart';

@immutable
abstract class SignInEvent {}

class SignInPasswordTextChangedEvent extends SignInEvent{
  
  final String password;

  SignInPasswordTextChangedEvent(this.password);
}
class SignInConfirmPasswordTextChangedEvent extends SignInEvent{
  
  final String password;

  SignInConfirmPasswordTextChangedEvent(this.password);
}
class SignInEmailTextChangedEvent extends SignInEvent{
  
  final String email;

  SignInEmailTextChangedEvent(this.email);
}

class SignInSubmittedEvent extends SignInEvent{ 
  final String email;
  final String password;

  SignInSubmittedEvent(this.email,this.password);
  }