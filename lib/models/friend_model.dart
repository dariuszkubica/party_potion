class FriendModel {
  FriendModel({
    required this.id,
    required this.friendName,
    this.avatarURL = '',
    this.favDrink = '',
  });

  final String id;
  final String friendName;
  final String avatarURL;
  final String favDrink;
}
