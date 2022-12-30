import 'package:flutter/material.dart';
import 'package:party_potion/features/cocktail/details/cocktail_window_details.dart';

class CocktailWindowSmall extends StatelessWidget {
  const CocktailWindowSmall({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (_) => const CocktailWindowDetails()));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          color: Colors.black87,
          image: const DecorationImage(
            image: AssetImage('images/me.jpg'),
            fit: BoxFit.cover,
            opacity: 0.3,
          ),
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
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  'Drink name',
                  style: TextStyle(color: Colors.white),
                ),
                Column(
                  children: [
                    const Text(
                      'Ingredients:',
                      style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(height: 5),
                    SizedBox(
                      width: 100,
                      child: Column(
                        children: const [
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
