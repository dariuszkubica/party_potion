import 'package:flutter/material.dart';
import 'package:party_potion/common_widgets/background_image_widget.dart';

class AlcoholWindowDetails extends StatelessWidget {
  const AlcoholWindowDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF202020),
      body: BackgroundImageWidget(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8, 56, 8, 62),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.red.withOpacity(0.1),
                    border: Border.all(
                      width: 2,
                      color: Colors.black,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(50),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.2),
                        spreadRadius: 0,
                        blurRadius: 50,
                        offset: const Offset(0, 0),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(
                              child: AspectRatio(
                                aspectRatio: 1,
                                child: CircleAvatar(
                                  backgroundColor:
                                      Colors.black.withOpacity(0.3),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: Column(
                                  children: const [
                                    Text(
                                      'Drink Name',
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      'Drink Description Drink Description Drink Description Drink Description Drink Description Drink Description Drink Description Drink Description Drink Description Drink Description ',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        Expanded(
                          child: ListView(
                            padding: const EdgeInsets.all(8.0),
                            children: [
                              Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Column(
                                        children: const [
                                          Text(
                                            'Lista składników:',
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 16),
                                          ),
                                          SizedBox(height: 5),
                                          Text(
                                            'Składnik 1',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          Text(
                                            'Składnik 2',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          Text(
                                            'Składnik 3',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          Text(
                                            'Składnik 4',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          Text(
                                            'Składnik 5',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          Text(
                                            'Składnik 6',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          Text(
                                            'Składnik 7',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          Text(
                                            'Składnik 8',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          Text(
                                            'Składnik 9',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          children: const [
                                            Text(
                                              'Sposób przygotowania:',
                                              style: TextStyle(
                                                  color: Colors.red,
                                                  fontSize: 16),
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                              'Drink Description Drink Description Drink Description Drink Description Drink Description Drink Description Drink Description Drink Description Drink Description Drink Description Drink Description Drink Description Drink Description Drink Description Drink Description Drink Description Drink Description Drink Description Drink Description Drink Description Drink Description Drink Description Drink Description Drink Description Drink Description Drink Description Drink Description Drink Description Drink Description Drink Description ',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
