import 'package:injectable/injectable.dart';
import 'package:party_potion/data/remote_data_source/cocktail_search_remote_retrofit_data_source.dart';
import 'package:party_potion/models/cocktail_dto.dart';
import 'package:party_potion/models/cocktail_model.dart';

@injectable
class CocktailSearchRepository {
  CocktailSearchRepository({required this.cocktailSearchRemoteRetroFitDataSource});

  final CocktailSearchRemoteRetroFitDataSource cocktailSearchRemoteRetroFitDataSource;

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
    try {
      final coctailsDto = await cocktailSearchRemoteRetroFitDataSource.getCocktailDataByName(
        cocktailName,
      );
      if (coctailsDto.drinks.any((element) => false)) {
        throw Exception('Not found');
      } else {
        return CocktailModel(
            cocktailName: coctailsDto.drinks.first.strDrink.toString(),
            instructions: coctailsDto.drinks.first.strInstructions,
            imageURL: coctailsDto.drinks.first.strDrinkThumb);
      }
    } catch (error) {
      throw Exception('Unknown error on the API side');
    }

    // Implement if() for check any elements in drinks (drinks > 0)
  }
}
