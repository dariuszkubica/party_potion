import 'package:flutter/material.dart';
import 'package:party_potion/features/drinks/details/alcohol_window_details.dart';

class AlcoholWindowSmall extends StatelessWidget {
  const AlcoholWindowSmall({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (_) => const AlcoholWindowDetails()));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          color: Colors.red.withOpacity(0.3),
          border: Border.all(
            width: 2,
            color: Colors.black,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(50),
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.black.withOpacity(0.3),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text('Drink name'),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: const [
                        Text('Drink description'),
                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    const SizedBox(height: 15),
                    const Text('Lista składników'),
                    const SizedBox(height: 5),
                    SizedBox(
                      width: 100,
                      child: Column(
                        children: const [
                          Text('Składnik 1'),
                          Text('Składnik 2'),
                          Text('Składnik 3'),
                          Text('Składnik 4'),
                          Text('Składnik 5'),
                          Text('Składnik 6'),
                          Text('Składnik 7'),
                          Text('Składnik 8'),
                          Text('Składnik 9'),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
