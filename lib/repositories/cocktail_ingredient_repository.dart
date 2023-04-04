import 'package:injectable/injectable.dart';
import 'package:party_potion/data/remote_data_source/cocktail_ingredient_remote_retrofit_data_source.dart';
import 'package:party_potion/models/drinks_dto.dart';

@injectable
class CocktailIngredientRepository {
  CocktailIngredientRepository(
      {required this.cocktailIngredientRemoteRetroFitDataSource});

  final CocktailIngredientRemoteRetroFitDataSource
      cocktailIngredientRemoteRetroFitDataSource;

  Future<DrinksDTO> getCocktailModelsByAlcohol({
    required String alcoholName,
  }) async {
    return cocktailIngredientRemoteRetroFitDataSource.getCocktailDataByAlcohol(
      alcoholName,
    );
  }
}
