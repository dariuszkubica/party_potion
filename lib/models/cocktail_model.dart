class CocktailModel {
  const CocktailModel({
    required this.name,
    required this.instructions,
    required this.imageURL,
  });

  final String name;
  final String instructions;
  final String imageURL;

  CocktailModel.fromJson(Map<String, dynamic> json)
      : name = json['drinks'][0]['strDrink'],
        instructions = json['drinks'][0]['strInstructions'],
        imageURL = json['drinks'][0]['strDrinkThumb'];
}
