part of 'friends_list_cubit.dart';

@immutable
class FriendsListState {
  const FriendsListState({
    this.docs = const [],
    this.isLoading = false,
    this.errorMessage = '',
  });

  final List<FriendModel> docs;
  final bool isLoading;
  final String errorMessage;
}
