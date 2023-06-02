import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../config/routes/routes_imports.gr.dart';
import '../bloc/sign_in_bloc.dart';
import '../cubits/cubit/pw_cubit.dart';

@RoutePage()
class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool hideShowPassword = true;
  bool hideShowConfirmPassword = true;
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  bool pwIcon = false;
  bool confirmPwIcon = false;
  String errMsg = "";
  var names = [];
  final _formKey = GlobalKey<FormState>();
  String? errorText;
  String? confirmErrorText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Image.asset(
          "assets/bgg.jpeg",
          height: MediaQuery.of(context).size.height,
          fit: BoxFit.cover,
        ),
        Align(
          alignment: const Alignment(0.1, 0.5),
          child: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 237, 238, 236),
                  borderRadius: BorderRadius.circular(7)),
              height: MediaQuery.of(context).size.height / 1.35,
              width: MediaQuery.of(context).size.width / 1.2,
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      "Welcome",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      margin: const EdgeInsets.all(15),
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter some text";
                          }
                          return null;
                        },
                        controller: nameController,
                        decoration: const InputDecoration(
                            iconColor: Color.fromARGB(255, 85, 86, 171),
                            suffixIcon: Icon(Icons.person),
                            hintText: "Username",
                            contentPadding: EdgeInsets.only(left: 20),
                            border: UnderlineInputBorder()),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(15),
                      child: BlocBuilder<SignInBloc, SignInState>(
                        builder: (context, state) {
                          if (state is SignInTextErrorState) {
                            final String textError = state.errorMessage;
                            errorText = textError;
                          } else if (state is SignInPasswordErrorState) {
                            final String textError = state.errorMessage;
                            errorText = textError;
                          } else if (state is SignInValidState) {
                            errorText = null;
                          }
                          return BlocConsumer<PwCubit, PwState>(
                            listener: (context, state) {
                              pwIcon = state.showPw;
                            },
                            builder: (context, state) => TextFormField(
                              onChanged: (value) {
                                BlocProvider.of<SignInBloc>(context)
                                    .add(SignInPasswordTextChangedEvent(value));
                              },
                              controller: passwordController,
                              // obscureText: hideShowPassword ? true : false,
                              obscureText: pwIcon,
                              decoration: InputDecoration(
                                  errorText: errorText,
                                  iconColor:
                                      const Color.fromARGB(255, 85, 86, 171),
                                  suffixIcon: GestureDetector(
                                    onTap: () {
                                      // setState(() {
                                      //   hideShowPassword = !hideShowPassword;
                                      // });
                                      if (pwIcon == false) {
                                        BlocProvider.of<PwCubit>(context)
                                            .showPassword();
                                      } else {
                                        BlocProvider.of<PwCubit>(context)
                                            .hidePassword();
                                      }
                                    },
                                    child: Icon(hideShowPassword
                                        ? Icons.remove_red_eye
                                        : Icons.remove_red_eye_sharp),
                                  ),
                                  hintText: "Password",
                                  contentPadding:
                                      const EdgeInsets.only(left: 20),
                                  border: const UnderlineInputBorder()),
                            ),
                          );
                        },
                      ),
                    ),

                    //confirm pw textfield widget

                    Container(
                      margin: const EdgeInsets.all(15),
                      child: BlocBuilder<SignInBloc, SignInState>(
                        builder: (context, state) {
                          //  if (state is SignInTextErrorState) {
                          //   final String textError = state.errorMessage;
                          //   confirmErrorText = textError;
                          // } else
                          if (state is SignInConfirmPasswordErrorState) {
                            final String textError = state.errorMessage;
                            confirmErrorText = textError;
                          } else if (state is SignInValidState) {
                            confirmErrorText = null;
                          }
                          return BlocConsumer<ConfirmPwCubit, ConfirmPwState>(
                            listener: (context, state) {
                              confirmPwIcon = state.showConfirmPw;
                            },
                            builder: (context, state) {
                              return TextFormField(
                                validator: (value) {
                                  if (value != passwordController.text) {
                                    return "The password doesn't match";
                                  }
                                  return null;
                                },
                                controller: confirmPasswordController,
                                // obscureText: hideShowConfirmPassword ? true : false,
                                obscureText: confirmPwIcon,
                                onChanged: (value) {
                                  BlocProvider.of<SignInBloc>(context).add(
                                      SignInConfirmPasswordTextChangedEvent(
                                          value));
                                },

                                decoration: InputDecoration(
                                    errorText: confirmErrorText,
                                    iconColor:
                                        const Color.fromARGB(255, 85, 86, 171),
                                    suffixIcon: GestureDetector(
                                      onTap: () {
                                        // setState(() {
                                        //   hideShowConfirmPassword =
                                        //       !hideShowConfirmPassword;
                                        // });
                                        if (confirmPwIcon == false) {
                                          BlocProvider.of<ConfirmPwCubit>(
                                                  context)
                                              .showConfirmPassword();
                                        } else {
                                          BlocProvider.of<ConfirmPwCubit>(
                                                  context)
                                              .hideConfirmPassword();
                                        }
                                      },
                                      child: Icon(hideShowConfirmPassword
                                          ? Icons.remove_red_eye
                                          : Icons.remove_red_eye_sharp),
                                    ),
                                    hintText: "Confirm Password",
                                    contentPadding:
                                        const EdgeInsets.only(left: 20),
                                    border: const UnderlineInputBorder()),
                              );
                            },
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            names.add(nameController.text);
                            // for (String? user in names) {
                            //   print(user);
                            // }
                            AutoRouter.of(context).push(const LoginPageRoute());
                          }
                        },
                        child: const Text("Submit")),
                    const SizedBox(
                      height: 2,
                    ),
                    TextButton(
                        onPressed: () {
                          AutoRouter.of(context).push(const LoginPageRoute());
                        },
                        onHover: (value) => 2,
                        child: const Text(
                          "I already have an account.",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ))
                  ],
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
