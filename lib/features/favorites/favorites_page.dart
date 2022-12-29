import 'package:flutter/material.dart';
import 'package:party_potion/common_widgets/background_image_widget.dart';

class Favorites extends StatelessWidget {
  const Favorites({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackgroundImageWidget(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            'Widget anavable after log in',
            style: TextStyle(
              color: Colors.deepOrange,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 20),
          Text(
            'List of your favorite cocktails',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
