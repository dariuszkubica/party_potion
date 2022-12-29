class CocktailModel {
  const CocktailModel({
    required this.name,
    required this.instructions,
  });

  final String name;
  final String instructions;

  CocktailModel.fromJson(Map<String, dynamic> json)
      : name = json['drinks'][0]['strDrink'],
        instructions = json['drinks'][0]['strInstructions'];
}
