// ignore_for_file: invalid_annotation_target

import 'package:party_potion/app/core/ingredients_converter.dart';
import 'package:party_potion/models/ingredient_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cocktail_model.g.dart';
part 'cocktail_model.freezed.dart';

@freezed
class CocktailModel with _$CocktailModel {
  factory CocktailModel(
    @JsonKey(name: 'strDrink') String name,
    @JsonKey(name: 'strInstructions') String instructions,
    @JsonKey(name: 'strDrinkThumb') String imageURL,
    @IngredientsConverter() List<IngredientModel> ingredientsList,
    //final List<CocktailModel>? drinksList;
  ) = _CocktailModel;

  factory CocktailModel.fromJson(Map<String, dynamic> json) =>
      _$CocktailModelFromJson(json);
}
