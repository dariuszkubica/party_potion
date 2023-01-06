import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:party_potion/common_widgets/ingredient_widget.dart';
import 'package:party_potion/features/cocktail/cubit/cocktail_cubit.dart';
import 'package:party_potion/features/cocktail/details/cocktail_window_details.dart';
import 'package:party_potion/models/cocktail_model.dart';

class CocktailWindowSmall extends StatelessWidget {
  const CocktailWindowSmall({
    Key? key,
    required this.cocktailModel,
  }) : super(key: key);

  final CocktailModel cocktailModel;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CocktailCubit, CocktailState>(
      builder: (context, state) {
        return InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (_) => const CocktailWindowDetails()));
          },
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
              color: Colors.black87,
              image: DecorationImage(
                image: NetworkImage(cocktailModel.imageURL),
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
                    Text(
                      cocktailModel.name,
                      style: const TextStyle(color: Colors.white),
                    ),
                    Column(
                      children: const [
                        Text(
                          'Ingredients:',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: 5),
                        /* IngredientWidget(
                            ingredientsList: cocktailModel.ingredientsList), */
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
