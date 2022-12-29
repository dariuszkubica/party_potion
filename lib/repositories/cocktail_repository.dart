import 'package:party_potion/data/remote_data_source/cocktail_search_remote_data_source.dart';
import 'package:party_potion/models/cocktail_model.dart';

class CocktailRepository {
  CocktailRepository(this._cocktailSearchRemoteDataSource);

  final CocktailSearchRemoteDataSource _cocktailSearchRemoteDataSource;

  Future<CocktailModel?> getCocktailModel({
    required String cocktailName,
  }) async {
    final responseData = await _cocktailSearchRemoteDataSource.getCocktailData(
      cocktailName: cocktailName,
    );

    if (responseData == null) {
      return null;
    }

    final name = responseData['drinks'][0]['strDrink'];
    final instruction = responseData['drinks'][0]['strInstructions'];

    return CocktailModel(
      name: name,
      instructions: instruction,
    );
  }
}
