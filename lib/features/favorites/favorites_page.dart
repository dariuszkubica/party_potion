import 'package:flutter/material.dart';
import 'package:party_potion/common_widgets/background_image_widget.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackgroundImageWidget(
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/work_in_progress.png'),
            fit: BoxFit.fill,
            opacity: 0.3,
          ),
        ),
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
      ),
    );
  }
}
