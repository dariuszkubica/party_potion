import 'package:flutter/material.dart';
import 'package:party_potion/common_widgets/alcohol_windows_small.dart';

class Brandy extends StatelessWidget {
  const Brandy({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Colors.red,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(50),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        child: ShaderMask(
          shaderCallback: (Rect rect) {
            return const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.red,
                Colors.transparent,
                Colors.transparent,
                Colors.red,
              ],
              stops: [0.0, 0.05, 0.95, 1.0],
            ).createShader(rect);
          },
          blendMode: BlendMode.dstOut,
          child: ListView(
            children: [
              Column(
                children: const [
                  AlcoholWindowSmall(),
                  AlcoholWindowSmall(),
                  AlcoholWindowSmall(),
                  AlcoholWindowSmall(),
                  AlcoholWindowSmall(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
