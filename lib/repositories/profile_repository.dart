import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:party_potion/models/profile_model.dart';
import 'dart:io' as io;

class ProfileRepository {
  Stream<ProfileModel> getProfileStream() {
    final currentUser = FirebaseAuth.instance.currentUser?.uid;
    if (currentUser == null) {
      throw Exception('User is not logged in');
    }
    return FirebaseFirestore.instance
        .collection('users')
        .doc(currentUser)
        .snapshots()
        .map((documentSnapshot) {
      if (documentSnapshot.exists) {
        return ProfileModel(
          userID: currentUser,
          userName: documentSnapshot.data()?['user_name'],
          userAvatar: documentSnapshot.data()?['photo_url'],
        );
      } else {
        throw Exception('Data not found.');
      }
    });
  }

  Future<void> updateUserName({required String userName}) async {
    final currentUser = FirebaseAuth.instance.currentUser?.uid;
    if (currentUser == null) {
      throw Exception('User is not logged in');
    }
    await FirebaseFirestore.instance
        .collection('users')
        .doc(currentUser)
        .update(
      {
        'user_name': userName,
      },
    );
  }

  Future<String> updateUserAvatar({
    required String filePath,
    required Uint8List fileBytes,
  }) async {
    final currentUser = FirebaseAuth.instance.currentUser?.uid;
    if (currentUser == null) {
      throw Exception('User is not logged in');
    }
    final metadata = SettableMetadata(
      contentType: 'image/jpeg',
      customMetadata: {'picked-file-path': filePath},
    );
    final ref = FirebaseStorage.instance
        .ref()
        .child('users')
        .child(currentUser)
        .child('avatars/avatar.jpg');
    UploadTask uploadTask;
    if (kIsWeb) {
      uploadTask = ref.putData(fileBytes, metadata);
    } else {
      uploadTask = ref.putFile(io.File(filePath), metadata);
    }
    final taskSnapshot = await Future.value(uploadTask);
    final userAvatar = await taskSnapshot.ref.getDownloadURL();

    await FirebaseFirestore.instance
        .collection('users')
        .doc(currentUser)
        .update(
      {
        'photo_url': userAvatar,
      },
    );
    return userAvatar;
  }
}
