import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:party_potion/models/alcohol_model.dart';

class AlcoholListRepository {
  Stream<List<AlcoholModel>> getAlcoholStream() {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    return FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('alcohol_list')
        .orderBy('id')
        .snapshots()
        .map((querySnapshot) {
      return querySnapshot.docs.map(
        (doc) {
          return AlcoholModel(
            id: doc.id,
            alcoholName: doc['alcoholName'],
            alcoholUrl: doc['alcoholUrl'],
            have: doc['have'],
          );
        },
      ).toList();
    });
  }

  Future<void> add() async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    final alcoholListRef = FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('alcohol_list');
    for (var alcohol in [
      AlcoholModel(
          id: '1',
          alcoholName: 'Vodka',
          alcoholUrl:
              'https://www.absolut.com/wp-content/uploads/absolut-vodka-original-2021-against-white-background.jpg'),
      AlcoholModel(
          id: '2',
          alcoholName: 'Rum',
          alcoholUrl:
              'https://propaganda24h.pl/environment/cache/images/0_0_productGfx_17b01ac7b12ae0ac4a7fce945dcddc9e.jpg'),
      AlcoholModel(
          id: '3',
          alcoholName: 'Tequila',
          alcoholUrl:
              'https://winoteqa.pl/wp-content/uploads/2020/10/Tequila-Sierra-Silver.png'),
      AlcoholModel(
          id: '4',
          alcoholName: 'Whisky',
          alcoholUrl:
              'https://premiumspirits.pl/wp-content/uploads/2022/02/WHISKY-JOHNNIE-WALKER-RED-500ML.jpg'),
      AlcoholModel(
          id: '5',
          alcoholName: 'Gin',
          alcoholUrl:
              'https://www.gourmetencasa-tcm.com/20047/gin-tanqueray-70cl.jpg'),
      AlcoholModel(
          id: '6',
          alcoholName: 'Wine',
          alcoholUrl:
              'https://image.cnbcfm.com/api/v1/image/106880066-1620413243866PetrusWineBottle-jpg?v=1620413548'),
      AlcoholModel(
          id: '7',
          alcoholName: 'Brandy',
          alcoholUrl:
              'https://www.euro-wino.pl/images/0_budafok-premium-500ml_9d713d59.png')
    ]) {
      await alcoholListRef
          .doc(alcohol.alcoholName.toLowerCase())
          .set(alcohol.toJson());
    }
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
        bool: have,
      },
    );
  }
}
