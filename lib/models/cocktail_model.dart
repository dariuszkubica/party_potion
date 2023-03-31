//import 'package:party_potion/app/core/ingredients_converter.dart';
//import 'package:party_potion/models/ingredient_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cocktail_model.freezed.dart';

@freezed
class CocktailModel with _$CocktailModel {
  factory CocktailModel({
    required String cocktailName,
    required String? instructions,
    required String? imageURL,
    //@IngredientsConverter() List<IngredientModel>? ingredientsList,
  }) = _CocktailModel;
}
