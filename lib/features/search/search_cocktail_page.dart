import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:party_potion/app/core/enums.dart';
import 'package:party_potion/app/injection_container.dart';
import 'package:party_potion/common_widgets/background_image_widget.dart';
// import 'package:party_potion/common_widgets/ingredient_widget.dart';
import 'package:party_potion/features/search/cubit/search_cocktail_cubit.dart';
import 'package:party_potion/models/cocktail_model.dart';

class SearchCoctailPage extends StatelessWidget {
  const SearchCoctailPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SearchCocktailCubit>(
      create: (context) {
        return getIt();
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
            child: Builder(builder: (context) {
              if (state.status == Status.loading) {
                return const Text('Loading');
              }
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    if (cocktailModel != null)
                      _DisplayCocktailWidget(
                        cocktailModel: cocktailModel,
                      ),
                    _SearchWidget(),
                  ],
                ),
              );
            }),
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
          child: Padding(
            padding: const EdgeInsets.only(bottom: 16),
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
                    AspectRatio(
                      aspectRatio: 1.3,
                      child: CircleAvatar(
                        backgroundImage:
                            NetworkImage(cocktailModel.imageURL ?? ''),
                        backgroundColor: Colors.white.withOpacity(0.3),
                      ),
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
                          // const IngredientWidget(
                          //   cocktailModel.ingredientsList ?? [],
                          // ),
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
          ),
        );
      },
    );
  }
}

class _SearchWidget extends StatelessWidget {
  _SearchWidget({
    Key? key,
  }) : super(key: key);

  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _controller,
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderSide: BorderSide(
                    color: Color(0xFFFFFFFF),
                    width: 1,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderSide: BorderSide(
                    color: Color(0xFFFF0000),
                  ),
                ),
                labelText: 'Cocktail Name',
                labelStyle: TextStyle(color: Colors.white),
                floatingLabelStyle: TextStyle(color: Colors.white),
              ),
              style: const TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(width: 20),
          SizedBox(
            width: 80,
            child: ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    side: const BorderSide(color: Colors.red),
                  ),
                ),
                backgroundColor:
                    MaterialStateProperty.all<Color>(const Color(0xFF250000)),
              ),
              onPressed: () {
                context
                    .read<SearchCocktailCubit>()
                    .getCocktailModelByName(cocktailName: _controller.text)
                    .toString();
              },
              child: const Text('Get'),
            ),
          ),
        ],
      ),
    );
  }
}
