part of 'friends_list_cubit.dart';

@immutable
class FriendsListState {
  final List<QueryDocumentSnapshot<Object?>> documents;
  final bool isLoading;
  final String errorMessage;

  const FriendsListState({
    required this.documents,
    required this.isLoading,
    required this.errorMessage,
  });
}
