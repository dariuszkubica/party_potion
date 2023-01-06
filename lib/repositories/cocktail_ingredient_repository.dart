import 'package:party_potion/data/remote_data_source/cocktail_ingredient_remote_data_source.dart';
import 'package:party_potion/models/cocktail_model.dart';

class CocktailIngredientRepository {
  CocktailIngredientRepository(this._cocktailIngredientRemoteDataSource);

  final CocktailIngredientRemoteDataSource _cocktailIngredientRemoteDataSource;

  Future<CocktailModel?> getCocktailModelByAlcohol({
    required String alcoholName,
  }) async {
    final json = await _cocktailIngredientRemoteDataSource.getCocktailData(
      alcoholName: alcoholName,
    );
    if (json == null) {
      return null;
    }
    return CocktailModel.fromJson(json);
  }
}
