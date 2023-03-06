part of 'cocktail_cubit.dart';

class CocktailState {
  const CocktailState({
    this.status = Status.initial,
    this.errorMessage,
    this.models = const [],
    this.alcohol = '',
  });
  final Status status;
  final String? errorMessage;
  final List<CocktailModel> models;
  final String alcohol;
}
