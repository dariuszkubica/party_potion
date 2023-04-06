part of 'cocktail_cubit.dart';

@freezed
class CocktailState with _$CocktailState {
  factory CocktailState({
    @Default(Status.initial) Status status,
    String? errorMessage,
    @Default('') String alcohol,
    DrinksDTO? models,
  }) = _CocktailState;
}
