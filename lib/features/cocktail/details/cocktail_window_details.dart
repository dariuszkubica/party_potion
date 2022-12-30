import 'package:flutter/material.dart';
import 'package:party_potion/common_widgets/background_image_widget.dart';

class CocktailWindowDetails extends StatelessWidget {
  const CocktailWindowDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackgroundImageWidget(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8, 32, 8, 32),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black54,
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
                Expanded(
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: CircleAvatar(
                      backgroundImage: const AssetImage('images/me.jpg'),
                      backgroundColor: Colors.black.withOpacity(0.3),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                const Text(
                  'Drink Name',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                Expanded(
                  child: ListView(
                    padding: const EdgeInsets.all(8.0),
                    children: [
                      Column(
                        children: const [
                          Text(
                            'Ingrediens:',
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text('Ingredient 1',
                              style: TextStyle(color: Colors.white)),
                          Text('Ingredient 2',
                              style: TextStyle(color: Colors.white)),
                          Text('Ingredient 3',
                              style: TextStyle(color: Colors.white)),
                          Text('Ingredient 4',
                              style: TextStyle(color: Colors.white)),
                          Text('Ingredient 5',
                              style: TextStyle(color: Colors.white)),
                          SizedBox(height: 10),
                          Text(
                            'Instruction:',
                            style: TextStyle(color: Colors.red, fontSize: 16),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Drink Instruction Drink Instruction Drink Instruction Drink Instruction Drink Instruction Drink Instruction Drink Instruction Drink Instruction Drink Instruction Drink Instruction Drink Instruction Drink Instruction Drink Instruction Drink Instruction Drink Instruction Drink Instruction Drink Instruction Drink Instruction',
                            style: TextStyle(color: Colors.white),
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
    );
  }
}
