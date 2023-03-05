import 'package:party_potion/data/remote_data_source/cocktail_search_remote_data_source.dart';
import 'package:party_potion/models/cocktail_model.dart';

class CocktailSearchRepository {
  CocktailSearchRepository(this._cocktailSearchRemoteDataSource);

  final CocktailSearchRemoteDataSource _cocktailSearchRemoteDataSource;

  Future<CocktailModel?> getCocktailModelByName({
    required String cocktailName,
  }) async {
    final json = await _cocktailSearchRemoteDataSource.getCocktailData(
      cocktailName: cocktailName,
    );
    if (json == null) {
      throw Exception('Cocktail does not exist. Please enter a valid name');
    }
    return CocktailModel.fromJson(json);
  }
}
