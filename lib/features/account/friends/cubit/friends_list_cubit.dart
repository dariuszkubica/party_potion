import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';

part 'friends_list_state.dart';

class FriendsListCubit extends Cubit<FriendsListState> {
  FriendsListCubit()
      : super(
          const FriendsListState(
            documents: [],
            errorMessage: '',
            isLoading: false,
          ),
        );

  StreamSubscription? _streamSubscription;

  Future<void> deleteFriend(String id) async {
    FirebaseFirestore.instance.collection('friendslist').doc(id).delete();
  }

  Future<void> addFriend(String text) async {
    FirebaseFirestore.instance
        .collection('friendslist')
        .add({'friendname': text});
  }

  Future<void> start() async {
    emit(
      const FriendsListState(
        documents: [],
        errorMessage: '',
        isLoading: true,
      ),
    );

    _streamSubscription = FirebaseFirestore.instance
        .collection('friendslist')
        .orderBy('friendname')
        .snapshots()
        .listen((data) {
      emit(
        FriendsListState(
          documents: data.docs,
          isLoading: false,
          errorMessage: '',
        ),
      );
    })
      ..onError((error) {
        emit(
          FriendsListState(
            documents: const [],
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
