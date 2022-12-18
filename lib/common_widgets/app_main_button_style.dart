import 'package:flutter/material.dart';

class AppMainButtonStyle extends StatelessWidget {
  final Function onPressed;
  const AppMainButtonStyle({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

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
        width: 200,
        height: 25,
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
