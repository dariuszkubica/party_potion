import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:party_potion/app/core/enums.dart';
import 'package:party_potion/common_widgets/cocktail_windows_small.dart';
import 'package:party_potion/common_widgets/background_image_widget.dart';
import 'package:party_potion/data/remote_data_source/cocktail_ingredient_remote_data_source.dart';
import 'package:party_potion/features/cocktail/cubit/cocktail_cubit.dart';
import 'package:party_potion/repositories/cocktail_ingredient_repository.dart';

class CocktailsPage extends StatelessWidget {
  const CocktailsPage({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CocktailCubit(
        CocktailIngredientRepository(
          CocktailIngredientRemoteDataSource(),
        ),
      )..getCocktailModelsByAlcohol(alcoholName: 'vodka'),
      child: BlocConsumer<CocktailCubit, CocktailState>(
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
          return BackgroundImageWidget(
            child: Builder(
              builder: (context) {
                if (state.status == Status.loading) {
                  return const CircularProgressIndicator();
                }
                return Column(
                  children: [
                    const _Filters(),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Colors.red,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(50),
                          ),
                        ),
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
                          child: const _DisplayCocktails(),
                        ),
                      ),
                    ),
                    const _CocktailSelectByAlcohol(),
                  ],
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class _Filters extends StatelessWidget {
  const _Filters({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text(
          'Filtry',
          style: TextStyle(
            color: Colors.white,
          ),
        )
      ],
    );
  }
}

class _DisplayCocktails extends StatelessWidget {
  const _DisplayCocktails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CocktailCubit, CocktailState>(
      builder: (context, state) {
        return ListView(
          children: [
            Column(
              children: [
                for (final cocktailModel in state.models) ...[
                  CocktailWindowSmall(
                    cocktailModel: cocktailModel,
                  ),
                ],
              ],
            ),
          ],
        );
      },
    );
  }
}

class _CocktailSelectByAlcohol extends StatelessWidget {
  const _CocktailSelectByAlcohol({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(
          onPressed: () {
            context
                .read<CocktailCubit>()
                .getCocktailModelsByAlcohol(alcoholName: 'vodka');
          },
          icon: const Icon(Icons.local_drink),
          color: Colors.white,
        ),
        IconButton(
          onPressed: () {
            context
                .read<CocktailCubit>()
                .getCocktailModelsByAlcohol(alcoholName: 'rum');
          },
          icon: const Icon(Icons.local_drink),
          color: Colors.white,
        ),
        IconButton(
          onPressed: () {
            context
                .read<CocktailCubit>()
                .getCocktailModelsByAlcohol(alcoholName: 'tequila');
          },
          icon: const Icon(Icons.local_drink),
          color: Colors.white,
        ),
        IconButton(
          onPressed: () {
            context
                .read<CocktailCubit>()
                .getCocktailModelsByAlcohol(alcoholName: 'whisky');
          },
          icon: const Icon(Icons.local_drink),
          color: Colors.white,
        ),
        IconButton(
          onPressed: () {
            context
                .read<CocktailCubit>()
                .getCocktailModelsByAlcohol(alcoholName: 'gin');
          },
          icon: const Icon(Icons.local_drink),
          color: Colors.white,
        ),
        IconButton(
          onPressed: () {
            context
                .read<CocktailCubit>()
                .getCocktailModelsByAlcohol(alcoholName: 'wine');
          },
          icon: const Icon(Icons.local_drink),
          color: Colors.white,
        ),
        IconButton(
          onPressed: () {
            context
                .read<CocktailCubit>()
                .getCocktailModelsByAlcohol(alcoholName: 'brandy');
          },
          icon: const Icon(Icons.local_drink),
          color: Colors.white,
        ),
      ],
    );
  }
}
