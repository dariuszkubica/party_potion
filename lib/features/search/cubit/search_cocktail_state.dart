part of 'search_cocktail_cubit.dart';

@freezed
class SearchCocktailState with _$SearchCocktailState {
  factory SearchCocktailState({
    @Default(Status.initial) Status status,
    String? errorMessage,
    CocktailModel? model,
  }) = _SearchCocktailState;
}
