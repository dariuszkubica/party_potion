part of 'search_cocktail_cubit.dart';

class SearchCocktailState {
  const SearchCocktailState({
    this.model,
    this.status = Status.initial,
    this.errorMessage,
  });
  final CocktailModel? model;
  final Status status;
  final String? errorMessage;
}
