import 'package:party_potion/models/ingredient_model.dart';

class CocktailModel {
  const CocktailModel({
    required this.name,
    this.instructions,
    required this.imageURL,
    this.ingredientsList,
    this.drinksList,
  });

  final String name;
  final String? instructions;
  final String imageURL;
  final List<IngredientModel>? ingredientsList;
  final List<CocktailModel>? drinksList;

  CocktailModel.fromJson(Map<String, dynamic> json)
      : name = json['strDrink'],
        instructions = json['strInstructions'],
        imageURL = json['strDrinkThumb'],
        ingredientsList = _getIngredients(json),
        drinksList = [];

  static List<IngredientModel> _getIngredients(
    Map<String, dynamic> json,
  ) {
    List<IngredientModel> ingredientsList = [];

    for (var i = 1; i <= 16; i++) {
      if (json['strIngredient$i'] == null) {
        continue;
      }
      if (json['strMeasure$i'] == null) {
        continue;
      }
      ingredientsList.add(
        IngredientModel(
          ingredientName: json['strIngredient$i'],
          ingredientMesure: json['strMeasure$i'],
        ),
      );
    }
    return ingredientsList;
  }
}
