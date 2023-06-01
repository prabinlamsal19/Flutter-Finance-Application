import 'package:flutter_test/flutter_test.dart';
import 'package:personal_finance/signup/presentation/bloc/sign_in_bloc.dart';

void main() {
  late SignInBloc signInBloc;

  setUp(() {
    signInBloc = SignInBloc();
  });

  tearDown(() {
    signInBloc.close();
  });

  test('initial state is SignInInitialState', () {
    expect(signInBloc.state, SignInInitialState() as SignInState);
  });

  test('emits SignInPasswordErrorState when password is weak', () {
    const password = 'weak'; // Weak password

    signInBloc.add(SignInPasswordTextChangedEvent(password));

    expect(
      signInBloc.stream,
      emits(isA<SignInPasswordErrorState>()),
    );
  });

  test('emits SignInValidState when password is strong', () {
    const password = 'strongpassword'; // Strong password

    signInBloc.add(SignInPasswordTextChangedEvent(password));

    expect(
      signInBloc.stream,
      emits(isA<SignInValidState>()),
    );
  });

  test('emits SignInConfirmPasswordErrorState when password is weak', () {
    const password = 'weak'; // Weak password

    signInBloc.add(SignInConfirmPasswordTextChangedEvent(password));

    expect(
      signInBloc.stream,
      emits(isA<SignInConfirmPasswordErrorState>()),
    );
  });

  test('emits SignInValidState when password is strong', () {
    const password = 'strongpassword'; // Strong password

    signInBloc.add(SignInConfirmPasswordTextChangedEvent(password));

    expect(
      signInBloc.stream,
      emits(isA<SignInValidState>()),
    );
  });

  test('emits SignInLoadingState when submitted', () {
    signInBloc
        .add(SignInSubmittedEvent("validemail@example.com", "validPassword"));

    expect(
      signInBloc.stream,
      emits(isA<SignInLoadingState>()),
    );
  });
}
