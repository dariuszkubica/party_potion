import 'package:flutter/material.dart';

class AppInactiveButtonStyle extends StatelessWidget {
  const AppInactiveButtonStyle({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
            side: const BorderSide(color: Colors.grey),
          ),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
      ),
      onPressed: () {},
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
