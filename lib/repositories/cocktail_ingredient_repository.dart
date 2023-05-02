import 'package:injectable/injectable.dart';
import 'package:party_potion/data/remote_data_source/cocktail_ingredient_remote_retrofit_data_source.dart';
import 'package:party_potion/models/cocktail_dto.dart';

@injectable
class CocktailIngredientRepository {
  CocktailIngredientRepository({
    required this.cocktailIngredientRemoteRetroFitDataSource,
  });

  final CocktailIngredientRemoteRetroFitDataSource
      cocktailIngredientRemoteRetroFitDataSource;

  Future<CocktailsDto> getCocktailModelsByAlcohol({
    required String alcoholName,
  }) async {
    try {
      return cocktailIngredientRemoteRetroFitDataSource
          .getCocktailDataByAlcohol(
        alcoholName,
      );
    } catch (error) {
      throw Exception('Unknown error on the API side');
    }
  }
}
