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
            avatarURL: doc['avatar_url'],
            favDrink: doc['favDrink'],
          );
        },
      ).toList();
    });
  }

  Future<void> add(
    String friendName,
    String? avatarURL,
    String? favDrink,
  ) async {
    await FirebaseFirestore.instance.collection('friendslist').add(
      {
        'friendName': friendName,
        'avatar_url':
            'https://cdn.imgbin.com/2/4/15/imgbin-computer-icons-portable-network-graphics-avatar-icon-design-avatar-DsZ54Du30hTrKfxBG5PbwvzgE.jpg',
        'favDrink': '',
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
