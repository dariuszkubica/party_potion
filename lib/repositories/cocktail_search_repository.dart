import 'package:party_potion/data/remote_data_source/cocktail_search_remote_retrofit_data_source.dart';
import 'package:party_potion/models/cocktail_dto.dart';
import 'package:party_potion/models/cocktail_model.dart';

class CocktailSearchRepository {
  CocktailSearchRepository(this._cocktailSearchRemoteRetroFitDataSource);

  final CocktailSearchRemoteRetroFitDataSource
      _cocktailSearchRemoteRetroFitDataSource;

  List<CocktailModel> convertToCocktailModel(CocktailsDto cocktailsDto) {
    return cocktailsDto.drinks.map((drink) {
      return CocktailModel(
        cocktailName: drink.strDrink ?? '',
        instructions: drink.strInstructions ?? '',
        imageURL: drink.strDrinkThumb ?? '',
      );
    }).toList();
  }

  Future<CocktailModel?> getCocktailModelByName({
    required String cocktailName,
  }) async {
    final coctailsDto =
        await _cocktailSearchRemoteRetroFitDataSource.getCocktailDataByName(
      cocktailName,
    );
    // Implement if() for check any elements in drinks (drinks > 0)
    return CocktailModel(
        cocktailName: coctailsDto.drinks.first.strDrink.toString(),
        instructions: coctailsDto.drinks.first.strInstructions,
        imageURL: coctailsDto.drinks.first.strDrinkThumb);
  }
}
