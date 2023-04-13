import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:party_potion/models/alcohol_model.dart';

class AlcoholListRepository {
  Stream<List<AlcoholModel>> getFriendsStream() {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    return FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('alcohol_list')
        .snapshots()
        .map((querySnapshot) {
      return querySnapshot.docs.map(
        (doc) {
          return AlcoholModel(
            id: doc.id,
            alcoholName: doc['alcohol_name'],
            alcoholUrl: doc['alcohol_url'],
            have: false,
          );
        },
      ).toList();
    });
  }

  Future<void> update({
    required String id,
    required bool have,
  }) {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    return FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('alcohol_list')
        .doc(id)
        .update(
      {
        'user_name': have,
      },
    );
  }
}
