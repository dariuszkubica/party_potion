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
      return null;
    }
    return CocktailModel.fromJson(json['drinks'][0]);
  }
}
