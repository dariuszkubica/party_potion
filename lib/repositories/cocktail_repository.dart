import 'package:party_potion/models/cocktail_model.dart';

class CocktailRepository {
  Future<CocktailModel?> getCocktailModel({
    required String cocktailName,
  }) async {
    //www.thecocktaildb.com/api/json/v1/1/search.php?s=margarita
    return const CocktailModel(
      cocktailName: 'Mojito',
      cocktailDescription: 'Mint and Freshing Cocktail. Your favorite',
    );
  }
}
