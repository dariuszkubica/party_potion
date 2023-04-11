//Not Finish 30.01.2023
//Prepare for change password
//Set basic TextField
//Set ElevatedButton with unfinished function

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:party_potion/app/cubit/auth_cubit.dart';
import 'package:party_potion/common_widgets/background_image_widget.dart';
import 'package:party_potion/repositories/auth_repository.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({
    Key? key,
  }) : super(key: key);
  @override
  State<ChangePasswordPage> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePasswordPage> {
  var errorMessage = '';
  final String newPass = '';

  get user => FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(AuthRepository()),
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
          return BackgroundImageWidget(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(
                          color: Color(0xFF000000),
                          width: 1,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(
                          color: Color(0xFFFF0000),
                        ),
                      ),
                      labelText: 'Old password',
                      labelStyle: TextStyle(
                        color: Colors.white60,
                      ),
                      floatingLabelStyle: TextStyle(color: Colors.white),
                    ),
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                    obscureText: true,
                  ),
                ),
                const SizedBox(height: 20),
                const SizedBox(
                  height: 50,
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(
                          color: Color(0xFF000000),
                          width: 1,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(
                          color: Color(0xFFFF0000),
                        ),
                      ),
                      labelText: 'New password',
                      labelStyle: TextStyle(
                        color: Colors.white60,
                      ),
                      floatingLabelStyle: TextStyle(color: Colors.white),
                    ),
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                    obscureText: true,
                  ),
                ),
                const SizedBox(height: 20),
                const SizedBox(
                  height: 50,
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(
                          color: Color(0xFF000000),
                          width: 1,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(
                          color: Color(0xFFFF0000),
                        ),
                      ),
                      labelText: 'Repeat new password',
                      labelStyle: TextStyle(
                        color: Colors.white60,
                      ),
                      floatingLabelStyle: TextStyle(color: Colors.white),
                    ),
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                    obscureText: true,
                  ),
                ),
                const SizedBox(height: 100),
                //
                //
                //if(controller old password == auth.password && new pass == repeat new pass)
                //uptade pass to firebase.auth
                //else throw Exception (error)
                //
                //
                SizedBox(
                  height: 40,
                  width: 300,
                  child: ElevatedButton.icon(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          side: const BorderSide(color: Colors.red),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xFF250000)),
                    ),
                    icon: const Icon(Icons.lock_open),
                    onPressed: () async {
                      try {
                        await user?.updatePassword(newPass);
                      } catch (error) {
                        setState(() {
                          errorMessage = error.toString();
                        });
                      }
                    },
                    label: const Text('Change Password'),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
