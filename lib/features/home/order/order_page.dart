import 'package:flutter/material.dart';
import 'package:party_potion/models/background_image_widget.dart';

class Order extends StatelessWidget {
  const Order({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackgroundImageWidget(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            'Widget dostępny po zalogowaniu',
            style: TextStyle(
              color: Colors.deepOrange,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Lista drinków wybranych przez znajomych które mam przygotować',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
