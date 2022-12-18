import 'package:flutter/material.dart';
import 'package:party_potion/models/friend_model.dart';

class AddFriends extends StatelessWidget {
  const AddFriends({
    required this.friendModel,
    Key? key,
  }) : super(key: key);

  final FriendModel friendModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF250000).withOpacity(0.5),
          border: Border.all(
            width: 1,
            color: Colors.red,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(25),
          ),
        ),
        width: double.infinity,
        height: 100,
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(friendModel.avatarURL),
              radius: 40,
              backgroundColor: Colors.white30,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  friendModel.friendName,
                  style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  friendModel.favDrink,
                  style: const TextStyle(color: Colors.grey, fontSize: 16),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
