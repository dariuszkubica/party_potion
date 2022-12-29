part of 'cocktail_cubit.dart';

class CocktailState {
  const CocktailState({
    this.model,
    this.status = Status.initial,
    this.errorMessage,
  });
  final CocktailModel? model;
  final Status status;
  final String? errorMessage;
}
