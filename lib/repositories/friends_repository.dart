import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:party_potion/models/friend_model.dart';

class FriendsRepository {
  Stream<List<FriendModel>> getFriendsStream() {
    return FirebaseFirestore.instance
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
    await FirebaseFirestore.instance.collection('friendslist').add(
      {
        'friendName': friendName,
        'favDrink': favDrink ?? 'Brak',
        'avatar_url': avatarURL ??
            'https://icon-library.com/images/avatar-icon-images/avatar-icon-images-4.jpg',
      },
    );
  }

  Future<void> delete({required String id}) {
    return FirebaseFirestore.instance
        .collection('friendslist')
        .doc(id)
        .delete();
  }
}
