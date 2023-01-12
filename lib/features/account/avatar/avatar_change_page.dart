import 'package:flutter/material.dart';
import 'package:party_potion/common_widgets/background_image_widget.dart';

class ChangeAvatar extends StatelessWidget {
  const ChangeAvatar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackgroundImageWidget(
      child: Column(
        children: [
          Container(
            height: 400,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/work_in_progress.png'),
                fit: BoxFit.fill,
                opacity: 0.3,
              ),
            ),
          ),
          Stack(
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
        ],
      ),
    );
  }
}
