import 'package:injectable/injectable.dart';
import 'package:party_potion/data/remote_data_source/cocktail_search_remote_retrofit_data_source.dart';
import 'package:party_potion/models/cocktail_dto.dart';
import 'package:party_potion/models/cocktail_model.dart';
import 'package:party_potion/models/ingredient_model.dart';

@injectable
class CocktailSearchRepository {
  CocktailSearchRepository(
      {required this.cocktailSearchRemoteRetroFitDataSource});

  final CocktailSearchRemoteRetroFitDataSource
      cocktailSearchRemoteRetroFitDataSource;

  List<CocktailModel> convertToCocktailModel(CocktailsDto cocktailsDto) {
    return cocktailsDto.drinks.map((drink) {
      return CocktailModel(
        cocktailName: drink.strDrink ?? '',
        instructions: drink.strInstructions ?? '',
        imageURL: drink.strDrinkThumb ?? '',
        ingredientsList: [],
      );
    }).toList();
  }

  Future<CocktailModel?> getCocktailModelByName({
    required String cocktailName,
  }) async {
    try {
      final coctailsDto =
          await cocktailSearchRemoteRetroFitDataSource.getCocktailDataByName(
        cocktailName,
      );
      if (coctailsDto.drinks.any((element) => false)) {
        throw Exception('Not found');
      } else {
        return CocktailModel(
            cocktailName: coctailsDto.drinks.first.strDrink.toString(),
            instructions: coctailsDto.drinks.first.strInstructions,
            imageURL: coctailsDto.drinks.first.strDrinkThumb,
            ingredientsList: [
              IngredientModel(
                ingredientName:
                    coctailsDto.drinks.first.strIngredient1.toString(),
                ingredientMesure:
                    coctailsDto.drinks.first.strMeasure1.toString(),
              ),
              IngredientModel(
                ingredientName:
                    coctailsDto.drinks.first.strIngredient2.toString(),
                ingredientMesure:
                    coctailsDto.drinks.first.strMeasure2.toString(),
              ),
              IngredientModel(
                ingredientName:
                    coctailsDto.drinks.first.strIngredient3.toString(),
                ingredientMesure:
                    coctailsDto.drinks.first.strMeasure3.toString(),
              ),
              IngredientModel(
                ingredientName:
                    coctailsDto.drinks.first.strIngredient4.toString(),
                ingredientMesure:
                    coctailsDto.drinks.first.strMeasure4.toString(),
              ),
              IngredientModel(
                ingredientName:
                    coctailsDto.drinks.first.strIngredient5.toString(),
                ingredientMesure:
                    coctailsDto.drinks.first.strMeasure5.toString(),
              ),
              IngredientModel(
                ingredientName:
                    coctailsDto.drinks.first.strIngredient6.toString(),
                ingredientMesure:
                    coctailsDto.drinks.first.strMeasure6.toString(),
              ),
              IngredientModel(
                ingredientName:
                    coctailsDto.drinks.first.strIngredient7.toString(),
                ingredientMesure:
                    coctailsDto.drinks.first.strMeasure7.toString(),
              ),
              IngredientModel(
                ingredientName:
                    coctailsDto.drinks.first.strIngredient8.toString(),
                ingredientMesure:
                    coctailsDto.drinks.first.strMeasure8.toString(),
              ),
              IngredientModel(
                ingredientName:
                    coctailsDto.drinks.first.strIngredient9.toString(),
                ingredientMesure:
                    coctailsDto.drinks.first.strMeasure9.toString(),
              ),
              IngredientModel(
                ingredientName:
                    coctailsDto.drinks.first.strIngredient10.toString(),
                ingredientMesure:
                    coctailsDto.drinks.first.strMeasure10.toString(),
              ),
              IngredientModel(
                ingredientName:
                    coctailsDto.drinks.first.strIngredient11.toString(),
                ingredientMesure:
                    coctailsDto.drinks.first.strMeasure11.toString(),
              ),
              IngredientModel(
                ingredientName:
                    coctailsDto.drinks.first.strIngredient12.toString(),
                ingredientMesure:
                    coctailsDto.drinks.first.strMeasure12.toString(),
              ),
              IngredientModel(
                ingredientName:
                    coctailsDto.drinks.first.strIngredient13.toString(),
                ingredientMesure:
                    coctailsDto.drinks.first.strMeasure13.toString(),
              ),
              IngredientModel(
                ingredientName:
                    coctailsDto.drinks.first.strIngredient14.toString(),
                ingredientMesure:
                    coctailsDto.drinks.first.strMeasure14.toString(),
              ),
              IngredientModel(
                ingredientName:
                    coctailsDto.drinks.first.strIngredient15.toString(),
                ingredientMesure:
                    coctailsDto.drinks.first.strMeasure15.toString(),
              )
            ]);
      }
    } catch (error) {
      throw Exception('Unknown error on the API side');
    }

    // Implement if() for check any elements in drinks (drinks > 0)
  }
}
