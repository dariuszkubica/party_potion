import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:party_potion/models/friend_model.dart';
import 'package:party_potion/repositories/friends_repository.dart';

part 'friends_list_state.dart';

class FriendsListCubit extends Cubit<FriendsListState> {
  FriendsListCubit(this._friendsRepository) : super(const FriendsListState());

  final FriendsRepository _friendsRepository;

  StreamSubscription? _streamSubscription;

  Future<void> start() async {
    emit(
      const FriendsListState(
        docs: [],
        errorMessage: '',
        isLoading: true,
      ),
    );

    _streamSubscription = _friendsRepository.getFriendsStream().listen((data) {
      emit(
        FriendsListState(
          docs: data,
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

  Future<void> addFriend(String friendName) async {
    await _friendsRepository.add(friendName, '', '');
  }

  Future<void> deleteFriend({required String documentID}) async {
    await _friendsRepository.delete(id: documentID);
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }
}
