import 'package:party_potion/data/remote_data_source/cocktail_ingredient_remote_data_source.dart';
import 'package:party_potion/models/cocktail_model.dart';

class CocktailIngredientRepository {
  CocktailIngredientRepository(this._cocktailIngredientRemoteDataSource);

  final CocktailIngredientRemoteDataSource _cocktailIngredientRemoteDataSource;

  Future<List<CocktailModel>> getCocktailModelsByAlcohol({
    required String alcoholName,
  }) async {
    final json = await _cocktailIngredientRemoteDataSource.getCocktailData(
      alcoholName: alcoholName,
    );
    if (json == null) {
      return [];
    }
    try {
      final drinks = json['drinks'] as List;

      return drinks.map((e) => CocktailModel.fromJson(e)).toList();
    } catch (e) {
      return [];
    }
  }
}
