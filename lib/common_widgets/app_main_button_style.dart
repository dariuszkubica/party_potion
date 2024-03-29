import 'package:flutter/material.dart';

class AppMainButtonStyle extends StatelessWidget {
  const AppMainButtonStyle({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  final Function onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
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
      onPressed: () {
        onPressed();
      },
      child: SizedBox(
        width: 180,
        height: 40,
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
