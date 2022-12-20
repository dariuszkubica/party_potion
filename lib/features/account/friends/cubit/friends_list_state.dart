part of 'friends_list_cubit.dart';

@immutable
class FriendsListState {
  const FriendsListState({
    this.saved = false,
    this.errorMessage = '',
    this.items = const [],
    this.loadingErrorOccured = false,
    this.removingErrorOccured = false,
  });

  final bool saved;
  final String errorMessage;
  final List<FriendModel> items;
  final bool loadingErrorOccured;
  final bool removingErrorOccured;
}
