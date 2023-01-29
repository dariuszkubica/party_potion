import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:party_potion/app/cubit/auth_cubit.dart';
import 'package:party_potion/features/account/account_page.dart';
import 'package:party_potion/common_widgets/background_image_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    Key? key,
  }) : super(key: key);
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var errorMessage = '';
  bool isCreatingAccount = false;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit()..start(),
      child: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          if (state.errorMessage.isNotEmpty) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(state.errorMessage),
              backgroundColor: Colors.red,
            ));
          }
        },
        builder: (context, state) {
          final user = state.user;
          if (user == null) {
            return BackgroundImageWidget(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: SingleChildScrollView(
                  reverse: true,
                  child: Column(
                    children: [
                      Text(
                        isCreatingAccount == true ? 'Register' : 'Login',
                        style: const TextStyle(
                          color: Colors.red,
                          fontSize: 32,
                        ),
                      ),
                      const SizedBox(height: 100),
                      TextField(
                        controller: emailController,
                        decoration: const InputDecoration(
                          icon: Icon(
                            Icons.login,
                            color: Colors.white,
                          ),
                          labelText: 'E-mail',
                          labelStyle: TextStyle(color: Colors.white),
                          floatingLabelStyle: TextStyle(color: Colors.red),
                        ),
                        style: const TextStyle(color: Colors.red),
                      ),
                      TextField(
                        controller: passwordController,
                        decoration: const InputDecoration(
                          icon: Icon(
                            Icons.password,
                            color: Colors.white,
                          ),
                          labelText: 'Password',
                          labelStyle: TextStyle(color: Colors.white),
                          floatingLabelStyle: TextStyle(color: Colors.red),
                        ),
                        style: const TextStyle(color: Colors.red),
                        obscureText: true,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        errorMessage,
                        style: const TextStyle(color: Colors.white),
                      ),
                      ElevatedButton(
                        onPressed: () async {
                          if (isCreatingAccount == true) {
                            try {
                              await context.read<AuthCubit>().register(
                                    email: emailController.text,
                                    password: passwordController.text,
                                  );
                            } catch (error) {
                              setState(() {
                                errorMessage = error.toString();
                              });
                            }
                          } else {
                            try {
                              await context.read<AuthCubit>().signIn(
                                    email: emailController.text,
                                    password: passwordController.text,
                                  );
                            } catch (error) {
                              setState(() {
                                errorMessage = error.toString();
                              });
                            }
                          }
                        },
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              side: const BorderSide(color: Colors.red),
                            ),
                          ),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xFF250000)),
                        ),
                        child: Text(
                          isCreatingAccount == true ? 'Register' : 'Login',
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                      if (isCreatingAccount == false) ...[
                        TextButton(
                          onPressed: () {
                            setState(() {
                              isCreatingAccount = true;
                            });
                          },
                          child: const Text('Create account'),
                        ),
                      ],
                      if (isCreatingAccount == true) ...[
                        TextButton(
                          onPressed: () {
                            setState(() {
                              isCreatingAccount = false;
                            });
                          },
                          child: const Text('You have account?'),
                        ),
                      ],
                    ],
                  ),
                ),
              ),
            );
          }
          return Account(user: user.email);
        },
      ),
    );
  }
}
