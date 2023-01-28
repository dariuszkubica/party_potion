import 'package:flutter/material.dart';
import 'package:party_potion/app/core/config.dart';

class BackgroundImageWidget extends StatelessWidget {
  final Widget child;

  const BackgroundImageWidget({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Config.helloMessage),
        backgroundColor: Colors.transparent,
        toolbarOpacity: 0.4,
        toolbarHeight: 30,
      ),
      backgroundColor: const Color(0xFF202020),
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/hex1.png'),
            repeat: ImageRepeat.repeat,
            opacity: 950,
          ),
        ),
        child: SafeArea(
          child: Center(child: child),
        ),
      ),
    );
  }
}
