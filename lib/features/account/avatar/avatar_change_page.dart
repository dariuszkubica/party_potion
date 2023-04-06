import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:party_potion/common_widgets/background_image_widget.dart';
import 'dart:io' as io;

class ChangeAvatarPage extends StatelessWidget {
  ChangeAvatarPage({
    Key? key,
  }) : super(key: key);
  final userID = FirebaseAuth.instance.currentUser?.uid;
  @override
  Widget build(BuildContext context) {
    return BackgroundImageWidget(
      child: Stack(
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
                  try {
                    final XFile? file = await picker.pickImage(
                      source: ImageSource.gallery,
                      maxWidth: 200,
                      maxHeight: 200,
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
                    var ref =
                        FirebaseStorage.instance.ref().child('user/').child(userID!).child('avatars/${file.name}');
                    UploadTask uploadTask;
                    if (kIsWeb) {
                      uploadTask = ref.putData(await file.readAsBytes(), metadata);
                    } else {
                      uploadTask = ref.putFile(io.File(file.path), metadata);
                    }
                    await Future.value(uploadTask);
                  } catch (error) {
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
    );
  }
}
