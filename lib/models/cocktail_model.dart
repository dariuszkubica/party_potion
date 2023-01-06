import 'package:party_potion/models/ingredient_model.dart';

class CocktailModel {
  const CocktailModel({
    //required this.id,
    required this.name,
    this.instructions,
    required this.imageURL,
    required this.ingredientsList,
  });

  //final String id;
  final String name;
  final String? instructions;
  final String imageURL;
  final List<IngredientModel> ingredientsList;

  CocktailModel.fromJson(Map<String, dynamic> json)
      : //id = json['drinks'][0]['idDrink'],
        name = json['drinks'][0]['strDrink'],
        instructions = json['drinks'][0]['strInstructions'],
        imageURL = json['drinks'][0]['strDrinkThumb'],
        ingredientsList = _getIngredients(json);

  static List<IngredientModel> _getIngredients(
    Map<String, dynamic> json,
  ) {
    List<IngredientModel> ingredientsList = [];

    for (var i = 1; i <= 16; i++) {
      if (json['drinks'][0]['strIngredient$i'] == null) {
        continue;
      }
      if (json['drinks'][0]['strMeasure$i'] == null) {
        continue;
      }
      ingredientsList.add(
        IngredientModel(
          ingredientName: json['drinks'][0]['strIngredient$i'],
          ingredientMesure: json['drinks'][0]['strMeasure$i'],
        ),
      );
    }
    return ingredientsList;
  }
}
