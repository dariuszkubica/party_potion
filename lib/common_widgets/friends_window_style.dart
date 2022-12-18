import 'package:flutter/material.dart';

class AddFriends extends StatelessWidget {
  const AddFriends(
    this.friendname, {
    Key? key,
  }) : super(key: key);

  final String friendname;

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
            const CircleAvatar(
              radius: 40,
              backgroundColor: Colors.white30,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  friendname,
                  style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Ulubiony drink',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
