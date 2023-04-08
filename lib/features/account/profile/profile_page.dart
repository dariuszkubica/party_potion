import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:party_potion/app/cubit/auth_cubit.dart';
import 'package:party_potion/common_widgets/app_main_button_style.dart';
import 'package:party_potion/common_widgets/background_image_widget.dart';
import 'package:party_potion/features/account/password/password_change_page.dart';
import 'dart:io' as io;

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final currentUser = context.read<AuthCubit>().state.user!.uid;
    print(currentUser);
    return BackgroundImageWidget(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          AppMainButtonStyle(
            text: 'Hello Dariusz!',
            onPressed: () {
              //suprise
            },
          ),
          Stack(
            children: [
              const CircleAvatar(
                radius: 150,
                backgroundColor: Colors.red,
                child: CircleAvatar(
                  radius: 145,
                  backgroundColor: Color(0xFF250000),
                  backgroundImage: AssetImage('images/me.jpg'),
                ),
              ),
              Positioned(
                bottom: 15,
                right: 15,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Colors.red,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(
                        50,
                      ),
                    ),
                    color: const Color(0xFF250000),
                  ),
                  child: IconButton(
                    iconSize: 24,
                    onPressed: () async {
                      final ImagePicker picker = ImagePicker();
                      final XFile? image = await picker.pickImage(source: ImageSource.gallery);
                      try {
                        final XFile? file = await picker.pickImage(
                          source: ImageSource.gallery,
                          maxWidth: 200,
                          maxHeight: 200,
                          imageQuality: 100,
                        );
                        if (file == null) {
                          // ignore: use_build_context_synchronously
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('No file was selected'),
                            ),
                          );
                          return;
                        }
                        final metadata = SettableMetadata(
                          contentType: 'image/jpeg',
                          customMetadata: {'picked-file-path': file.path},
                        );
                        final ref =
                            FirebaseStorage.instance.ref().child('users/').child(currentUser).child('/avatar.jpg');
                        UploadTask uploadTask;
                        if (kIsWeb) {
                          uploadTask = ref.putData(await file.readAsBytes(), metadata);
                        } else {
                          uploadTask = ref.putFile(io.File(file.path), metadata);
                        }
                        Future.value(uploadTask);
                      } catch (error) {
                        // ignore: use_build_context_synchronously
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(error.toString()),
                          ),
                        );
                      }
                    },
                    icon: const Icon(
                      Icons.add_a_photo,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          AppMainButtonStyle(
            text: 'Change Password',
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (_) => const ChangePasswordPage()));
            },
          ),
        ],
      ),
    );
  }
}