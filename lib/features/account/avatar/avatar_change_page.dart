import 'package:flutter/material.dart';
import 'package:party_potion/models/background_image_widget.dart';

class ChangeAvatar extends StatelessWidget {
  const ChangeAvatar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackgroundImageWidget(
      child: Stack(
        children: [
          const CircleAvatar(
            radius: 150,
            backgroundColor: Colors.red,
            child: CircleAvatar(
              radius: 145,
              backgroundColor: Color(0xFF250000),
              backgroundImage: AssetImage('images/me.jpg'),
            ),
          ),
          Positioned(
            bottom: 15,
            right: 15,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Colors.red,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(
                    50,
                  ),
                ),
                color: const Color(0xFF250000),
              ),
              child: IconButton(
                iconSize: 24,
                onPressed: () {},
                icon: const Icon(
                  Icons.add_a_photo,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Add ability to change avatar