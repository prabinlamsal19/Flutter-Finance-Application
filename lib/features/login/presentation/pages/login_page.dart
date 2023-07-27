import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_finance/config/routes/routes_imports.gr.dart';

import '../../../../features/signup/presentation/cubits/cubit/pw_cubit.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController nameController1 = TextEditingController();

  TextEditingController passwordController1 = TextEditingController();

  bool hideShowPassword1 = false;
  final _formKey = GlobalKey<FormState>();
  bool pwIcon = false;

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
          child: Container(
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 237, 238, 236),
                borderRadius: BorderRadius.circular(7)),
            height: MediaQuery.of(context).size.height / 1.8,
            width: MediaQuery.of(context).size.width / 1.2,
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    "Login",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  //username textfield
                  Container(
                    margin: const EdgeInsets.all(15),
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter some text";
                        }
                        return null;
                      },
                      controller: nameController1,
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
                    child: BlocConsumer<PwCubit, PwState>(
                      listener: (context, state) {
                        pwIcon = state.showPw;
                      },
                      builder: (context, state) => TextFormField(
                        validator: (value) {
                          if (value == null ||
                              value.isEmpty ||
                              value.length < 8) {
                            return "Please enter a valid password";
                          }
                          return null;
                        },
                        controller: passwordController1,
                        obscureText: pwIcon,
                        decoration: InputDecoration(
                            iconColor: const Color.fromARGB(255, 85, 86, 171),
                            suffixIcon: GestureDetector(
                                // onTap: () {
                                //   setState(() {
                                //     hideShowPassword1 = !hideShowPassword1;
                                //   });
                                // },
                                onTap: () => {
                                      if (pwIcon == false)
                                        {
                                          BlocProvider.of<PwCubit>(context)
                                              .showPassword()
                                        }
                                      else
                                        {
                                          BlocProvider.of<PwCubit>(context)
                                              .hidePassword()
                                        }
                                    },
                                child: hideShowPassword1
                                    ? const Icon(Icons.remove_red_eye)
                                    : const Icon(
                                        Icons.remove_red_eye_outlined)),
                            hintText: "Password",
                            contentPadding: const EdgeInsets.only(left: 20),
                            border: const UnderlineInputBorder()),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) =>
                          //             const HomePage("Prabin Lamsal")));

                          AutoRouter.of(context).push(const HomePageRoute());
                        }
                      },
                      child: const Text("Submit"))
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
