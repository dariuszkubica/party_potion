import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:party_potion/models/friend_model.dart';

class FriendsRepository {
  Stream<List<FriendModel>> getFriendsStream() {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    return FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('friendslist')
        .orderBy('friendName')
        .snapshots()
        .map((querySnapshot) {
      return querySnapshot.docs.map(
        (doc) {
          return FriendModel(
            id: doc.id,
            friendName: doc['friendName'],
            favDrink: doc['favDrink'],
            avatarURL: doc['avatar_url'],
          );
        },
      ).toList();
    });
  }

  Future<void> add(
    String friendName,
    String? favDrink,
    String? avatarURL,
  ) async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    await FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('friendslist')
        .add(
      {
        'friendName': friendName,
        'favDrink': favDrink ?? 'Brak ulubionego drinka',
        'avatar_url': avatarURL ??
            'https://icon-library.com/images/avatar-icon-images/avatar-icon-images-4.jpg',
      },
    );
  }

  Future<void> delete({required String id}) {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    return FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('friendslist')
        .doc(id)
        .delete();
  }
}
