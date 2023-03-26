import 'package:party_potion/data/remote_data_source/cocktail_ingredient_remote_data_source.dart';
import 'package:party_potion/models/drinks_dto.dart';

class CocktailIngredientRepository {
  CocktailIngredientRepository(this._cocktailIngredientRemoteDataSource);

  final CocktailIngredientRemoteRetroFitDataSource
      _cocktailIngredientRemoteDataSource;

  Future<DrinksDTO> getCocktailModelsByAlcohol({
    required String alcoholName,
  }) async {
    return _cocktailIngredientRemoteDataSource.getCocktailData(
      alcoholName,
    );
  }
}
