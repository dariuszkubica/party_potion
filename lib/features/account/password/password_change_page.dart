import 'package:flutter/material.dart';
import 'package:party_potion/models/background_image_widget.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackgroundImageWidget(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 40,
            width: 300,
            child: ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    side: const BorderSide(color: Colors.red),
                  ),
                ),
                backgroundColor:
                    MaterialStateProperty.all<Color>(const Color(0xFF250000)),
              ),
              onPressed: () {},
              child: const Text('podaj stare hasło'),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 40,
            width: 300,
            child: ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    side: const BorderSide(color: Colors.red),
                  ),
                ),
                backgroundColor:
                    MaterialStateProperty.all<Color>(const Color(0xFF250000)),
              ),
              onPressed: () {},
              child: const Text('podaj nowe hasło'),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 40,
            width: 300,
            child: ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    side: const BorderSide(color: Colors.red),
                  ),
                ),
                backgroundColor:
                    MaterialStateProperty.all<Color>(const Color(0xFF250000)),
              ),
              onPressed: () {},
              child: const Text('powtórz nowe hasło'),
            ),
          ),
          const SizedBox(height: 100),
          SizedBox(
            height: 40,
            width: 300,
            child: ElevatedButton.icon(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    side: const BorderSide(color: Colors.red),
                  ),
                ),
                backgroundColor:
                    MaterialStateProperty.all<Color>(const Color(0xFF250000)),
              ),
              icon: const Icon(Icons.lock_open),
              onPressed: () {
                const Text('Hasło zostało zmienione');
              },
              label: const Text('Zmień Hasło'),
            ),
          ),
        ],
      ),
    );
  }
}


//Add ability to change password