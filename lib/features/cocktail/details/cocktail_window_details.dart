import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:party_potion/app/core/enums.dart';
import 'package:party_potion/app/injection_container.dart';
import 'package:party_potion/common_widgets/background_image_widget.dart';
import 'package:party_potion/common_widgets/ingredient_widget.dart';
import 'package:party_potion/features/search/cubit/search_cocktail_cubit.dart';
import 'package:party_potion/models/cocktail_model.dart';

class CocktailWindowDetails extends StatelessWidget {
  const CocktailWindowDetails({
    Key? key,
    required this.cocktailName,
  }) : super(key: key);

  final String cocktailName;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SearchCocktailCubit>(
      create: (context) {
        return getIt()..getCocktailModelByName(cocktailName: cocktailName);
      },
      child: BlocConsumer<SearchCocktailCubit, SearchCocktailState>(
        listener: (context, state) {
          if (state.status == Status.error) {
            final errorMessage = state.errorMessage ?? 'Unkown error';
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(errorMessage),
                backgroundColor: Colors.red,
              ),
            );
          }
        },
        builder: (context, state) {
          final cocktailModel = state.model;
          return BackgroundImageWidget(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 32, 8, 32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  if (cocktailModel != null)
                    _DisplayCocktailWidget(
                      cocktailModel: cocktailModel,
                    ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class _DisplayCocktailWidget extends StatelessWidget {
  const _DisplayCocktailWidget({
    Key? key,
    required this.cocktailModel,
  }) : super(key: key);

  final CocktailModel cocktailModel;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCocktailCubit, SearchCocktailState>(
      builder: (context, state) {
        return Expanded(
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
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Stack(
                    alignment: const AlignmentDirectional(0.95, -1),
                    children: [
                      IconButton(
                        isSelected: true,
                        icon: const Icon(
                          Icons.favorite,
                          color: Colors.white,
                          size: 40,
                        ),
                        onPressed: () {},
                        selectedIcon: const Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 40,
                        ),
                      ),
                      AspectRatio(
                        aspectRatio: 1.3,
                        child: CircleAvatar(
                          backgroundImage:
                              NetworkImage(cocktailModel.imageURL ?? ''),
                          backgroundColor: Colors.white.withOpacity(0.3),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Text(
                    cocktailModel.cocktailName,
                    style: const TextStyle(
                        color: Colors.red,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  Expanded(
                    child: ListView(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      children: [
                        const Text(
                          'Ingredients:',
                          style: TextStyle(color: Colors.red, fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 5),
                        IngredientWidget(
                          ingredientsList: cocktailModel.ingredientsList ?? [],
                        ),
                        const SizedBox(height: 15),
                        const Text(
                          'Instruction:',
                          style: TextStyle(color: Colors.red, fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          cocktailModel.instructions ?? '',
                          style: const TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
