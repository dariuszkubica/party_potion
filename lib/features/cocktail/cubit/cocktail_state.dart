part of 'cocktail_cubit.dart';

class CocktailState {
  const CocktailState({
    this.status = Status.initial,
    this.errorMessage,
    this.models = const DrinksDTO(drinks: []),
    this.alcohol = '',
  });
  final Status status;
  final String? errorMessage;
  final DrinksDTO? models;
  final String alcohol;
}
