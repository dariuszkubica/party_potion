import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:party_potion/app/core/enums.dart';
import 'package:party_potion/common_widgets/background_image_widget.dart';
import 'package:party_potion/data/remote_data_source/cocktail_search_remote_data_source.dart';
import 'package:party_potion/features/cocktail/cubit/cocktail_cubit.dart';
import 'package:party_potion/models/cocktail_model.dart';
import 'package:party_potion/repositories/cocktail_repository.dart';
//import 'package:party_potion/common_widgets/background_image_widget.dart';

class SearchCoctailPage extends StatelessWidget {
  const SearchCoctailPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CocktailCubit(
        CocktailRepository(
          CocktailSearchRemoteDataSource(),
        ),
      ),
      child: BlocListener<CocktailCubit, CocktailState>(
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
        child: BlocBuilder<CocktailCubit, CocktailState>(
          builder: (context, state) {
            final cocktailModel = state.model;
            return BackgroundImageWidget(
              /*  appBar: AppBar(
                title: const Text('Cocktail'),
              ), */
              child: Builder(builder: (context) {
                if (state.status == Status.loading) {
                  return const Text('Loading');
                }
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    if (cocktailModel != null)
                      _DisplayCocktailWidget(
                        cocktailModel: cocktailModel,
                      ),
                    _SearchWidget(),
                  ],
                );
              }),
            );
          },
        ),
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
    return BlocBuilder<CocktailCubit, CocktailState>(
      builder: (context, state) {
        return Column(
          children: [
            Text(
              cocktailModel.name,
              style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              cocktailModel.instructions,
              style: const TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
                color: Colors.white,
              ),
            ),
          ],
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
                    .read<CocktailCubit>()
                    .getCocktailModel(cocktailName: _controller.text);
              },
              child: const Text('Get'),
            ),
          ),
        ],
      ),
    );
  }
}
