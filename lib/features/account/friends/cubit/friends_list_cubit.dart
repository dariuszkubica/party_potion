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
    _streamSubscription = _friendsRepository.getFriendsStream().listen(
      (items) {
        emit(FriendsListState(items: items));
      },
    )..onError(
        (error) {
          emit(const FriendsListState(loadingErrorOccured: true));
        },
      );
  }

  Future<void> addFriend(
    String name,
    String? favDrink,
    String? avatarImageURL,
  ) async {
    try {
      await _friendsRepository.add(name, favDrink, avatarImageURL);
      emit(const FriendsListState(saved: true));
    } catch (error) {
      emit(FriendsListState(errorMessage: error.toString()));
    }
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
