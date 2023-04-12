import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:party_potion/data/remote_data_source/cocktail_search_remote_retrofit_data_source.dart';
import 'package:party_potion/models/cocktail_dto.dart';
import 'package:party_potion/models/cocktail_model.dart';
import 'package:party_potion/models/ingredient_model.dart';
import 'package:party_potion/repositories/cocktail_search_repository.dart';

class MockCocktailSearchDataSource extends Mock
    implements CocktailSearchRemoteRetroFitDataSource {}

void main() {
  late CocktailSearchRepository sut;
  late MockCocktailSearchDataSource dataSource;

  setUp(() {
    dataSource = MockCocktailSearchDataSource();
    sut = CocktailSearchRepository(
        cocktailSearchRemoteRetroFitDataSource: dataSource);
  });

  group('getCocktailModelByName', () {
    test(
        'should call remoteDataSource.getCocktailDataByName(cocktailName) method',
        () async {
      // 1
      when(() => dataSource.getCocktailDataByName('mojito')).thenAnswer(
        (_) async => const CocktailsDto(drinks: [
          CocktailDto(
            strDrink: 'mojito',
            strInstructions: '',
            strDrinkThumb: 'imageURL',
            strIngredient1: '',
            strIngredient2: '',
            strIngredient3: '',
            strIngredient4: '',
            strIngredient5: '',
            strIngredient6: '',
            strIngredient7: '',
            strIngredient8: '',
            strIngredient9: '',
            strIngredient10: '',
            strIngredient11: '',
            strIngredient12: '',
            strIngredient13: '',
            strIngredient14: '',
            strIngredient15: '',
            strMeasure1: '',
            strMeasure2: '',
            strMeasure3: '',
            strMeasure4: '',
            strMeasure5: '',
            strMeasure6: '',
            strMeasure7: '',
            strMeasure8: '',
            strMeasure9: '',
            strMeasure10: '',
            strMeasure11: '',
            strMeasure12: '',
            strMeasure13: '',
            strMeasure14: '',
            strMeasure15: '',
          )
        ]),
      );
      // 2
      await sut.getCocktailModelByName(cocktailName: 'mojito');
      // 3
      verify(() => dataSource.getCocktailDataByName('mojito')).called(1);
    });

    test('should filter data source results with provided cocktailName',
        () async {
      // 1
      when(() => dataSource.getCocktailDataByName('mojito')).thenAnswer(
        (_) async => const CocktailsDto(drinks: [
          CocktailDto(
            strDrink: 'mojito',
            strInstructions: '',
            strDrinkThumb: 'imageURL',
            strIngredient1: '',
            strIngredient2: '',
            strIngredient3: '',
            strIngredient4: '',
            strIngredient5: '',
            strIngredient6: '',
            strIngredient7: '',
            strIngredient8: '',
            strIngredient9: '',
            strIngredient10: '',
            strIngredient11: '',
            strIngredient12: '',
            strIngredient13: '',
            strIngredient14: '',
            strIngredient15: '',
            strMeasure1: '',
            strMeasure2: '',
            strMeasure3: '',
            strMeasure4: '',
            strMeasure5: '',
            strMeasure6: '',
            strMeasure7: '',
            strMeasure8: '',
            strMeasure9: '',
            strMeasure10: '',
            strMeasure11: '',
            strMeasure12: '',
            strMeasure13: '',
            strMeasure14: '',
            strMeasure15: '',
          )
        ]),
      );
      // 2
      final results = await sut.getCocktailModelByName(cocktailName: 'mojito');
      // 3
      expect(
          results,
          CocktailModel(
            cocktailName: 'mojito',
            instructions: '',
            imageURL: 'imageURL',
            ingredientsList: [
              IngredientModel(ingredientName: '', ingredientMesure: ''),
              IngredientModel(ingredientName: '', ingredientMesure: ''),
              IngredientModel(ingredientName: '', ingredientMesure: ''),
              IngredientModel(ingredientName: '', ingredientMesure: ''),
              IngredientModel(ingredientName: '', ingredientMesure: ''),
              IngredientModel(ingredientName: '', ingredientMesure: ''),
              IngredientModel(ingredientName: '', ingredientMesure: ''),
              IngredientModel(ingredientName: '', ingredientMesure: ''),
              IngredientModel(ingredientName: '', ingredientMesure: ''),
              IngredientModel(ingredientName: '', ingredientMesure: ''),
              IngredientModel(ingredientName: '', ingredientMesure: ''),
              IngredientModel(ingredientName: '', ingredientMesure: ''),
              IngredientModel(ingredientName: '', ingredientMesure: ''),
              IngredientModel(ingredientName: '', ingredientMesure: ''),
              IngredientModel(ingredientName: '', ingredientMesure: ''),
            ],
          ));
    });
  });
}
