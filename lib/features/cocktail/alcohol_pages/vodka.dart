import 'package:flutter/material.dart';
import 'package:party_potion/common_widgets/cocktail_windows_small.dart';

class Vodka extends StatelessWidget {
  const Vodka({super.key});

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
                children: [
                  for (int i = 0; i < 5; i++) ...[
                    const CocktailWindowSmall(),
                  ]
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
