part of 'friends_list_cubit.dart';

@freezed
@immutable
class FriendsListState with _$FriendsListState {
  const factory FriendsListState({
    @Default(false) bool saved,
    @Default('') String errorMessage,
    @Default([]) List<FriendModel> items,
    @Default(false) bool loadingErrorOccured,
    @Default(false) bool removingErrorOccured,
  }) = _FriendsListState;
}
