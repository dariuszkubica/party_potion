import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:party_potion/features/cocktail/cubit/cocktail_cubit.dart';
import 'package:party_potion/features/cocktail/details/cocktail_window_details.dart';
import 'package:party_potion/models/cocktail_dto.dart';

class CocktailWindowSmall extends StatelessWidget {
  const CocktailWindowSmall({
    Key? key,
    required this.cocktailDto,
  }) : super(key: key);

  final CocktailDto cocktailDto;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CocktailCubit, CocktailState>(
      builder: (context, state) {
        return InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => CocktailWindowDetails(
                  cocktailName: cocktailDto.strDrink ?? '',
                ),
              ),
            );
          },
          child: Column(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(cocktailDto.strDrinkThumb ?? ''),
                backgroundColor: Colors.transparent,
                foregroundColor: Colors.black,
                radius: 60,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                cocktailDto.strDrink ?? '',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        );
      },
    );
  }
}
