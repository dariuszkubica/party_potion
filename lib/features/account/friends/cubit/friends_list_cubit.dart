import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';
import 'package:party_potion/models/friend_model.dart';

part 'friends_list_state.dart';

class FriendsListCubit extends Cubit<FriendsListState> {
  FriendsListCubit()
      : super(
          const FriendsListState(
            docs: [],
            errorMessage: '',
            isLoading: false,
          ),
        );

  StreamSubscription? _streamSubscription;

  Future<void> deleteFriend(String id) async {
    FirebaseFirestore.instance.collection('friendslist').doc(id).delete();
  }

  Future<void> addFriend(String text) async {
    FirebaseFirestore.instance.collection('friendslist').add(
      {
        'friendName': text,
        'avatar_url': '',
        'favDrink': '',
      },
    );
  }

  Future<void> start() async {
    emit(
      const FriendsListState(
        docs: [],
        errorMessage: '',
        isLoading: true,
      ),
    );

    _streamSubscription = FirebaseFirestore.instance
        .collection('friendslist')
        .orderBy('friendName')
        .snapshots()
        .listen((data) {
      final friendModel = data.docs.map((doc) {
        return FriendModel(
          id: doc.id,
          friendName: doc['friendName'],
          avatarURL: doc['avatar_url'],
          favDrink: doc['favDrink'],
        );
      }).toList();
      emit(
        FriendsListState(
          docs: friendModel,
          isLoading: false,
          errorMessage: '',
        ),
      );
    })
      ..onError((error) {
        emit(
          FriendsListState(
            docs: const [],
            isLoading: false,
            errorMessage: error.toString(),
          ),
        );
      });
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }
}
