import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:party_potion/app/cubit/auth_cubit.dart';
import 'package:party_potion/features/account/account_page.dart';
import 'package:party_potion/common_widgets/background_image_widget.dart';
import 'package:party_potion/repositories/auth_repository.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    Key? key,
  }) : super(key: key);
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(AuthRepository())..start(),
      child: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          if (state.errorMessage.isNotEmpty) {
            final errorMessage = state.errorMessage;
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(errorMessage),
                backgroundColor: Colors.red,
              ),
            );
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
                        state.isCreatingAccount ? 'Register' : 'Login',
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
                      ElevatedButton(
                        onPressed: () async {
                          if (state.isCreatingAccount) {
                            try {
                              await context.read<AuthCubit>().signUp(
                                    email: emailController.text,
                                    password: passwordController.text,
                                  );
                            } catch (error) {
                              setState(() {
                                state.errorMessage.toString();
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
                                state.errorMessage.toString();
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
                          state.isCreatingAccount ? 'Register' : 'Login',
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                      if (state.isCreatingAccount == false) ...[
                        TextButton(
                          onPressed: () {
                            setState(() {
                              state.isCreatingAccount = true;
                            });
                          },
                          child: const Text('Create account'),
                        ),
                      ],
                      if (state.isCreatingAccount) ...[
                        TextButton(
                          onPressed: () {
                            setState(() {
                              state.isCreatingAccount = false;
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
