import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:party_potion/data/remote_data_source/cocktail_ingredient_remote_retrofit_data_source.dart';
import 'package:party_potion/models/drinks_dto.dart';
import 'package:party_potion/repositories/cocktail_ingredient_repository.dart';

class MockCocktailIngredientDataSource extends Mock implements CocktailIngredientRemoteRetroFitDataSource {}

void main() {
  late CocktailIngredientRepository sut;
  late MockCocktailIngredientDataSource dataSource;

  setUp(() {
    dataSource = MockCocktailIngredientDataSource();
    sut = CocktailIngredientRepository(cocktailIngredientRemoteRetroFitDataSource: dataSource);
  });

  group('getCocktailModelsByAlcohol', () {
    test('should call remoteDataSource.getCocktailDataByAlcohol(alcoholName) method', () async {
      // 1
      when(() => dataSource.getCocktailDataByAlcohol('vodka')).thenAnswer((_) async => const DrinksDTO(drinks: [
            DrinkDTO(strDrink: 'avalon', strDrinkThumb: 'ImageURL1', idDrink: '1'),
            DrinkDTO(strDrink: 'cosmopolitan', strDrinkThumb: 'ImageURL2', idDrink: '2'),
            DrinkDTO(strDrink: 'kamikaze', strDrinkThumb: 'ImageURL3', idDrink: '3'),
          ]));
      // 2
      await sut.getCocktailModelsByAlcohol(alcoholName: 'vodka');
      // 3
      verify(() => dataSource.getCocktailDataByAlcohol('vodka')).called(1);
    });

    test('should filter data source results with provided alcohol name', () async {
      // 1
      when(() => dataSource.getCocktailDataByAlcohol('vodka')).thenAnswer((_) async => const DrinksDTO(drinks: [
            DrinkDTO(strDrink: 'avalon', strDrinkThumb: 'ImageURL1', idDrink: '1'),
            DrinkDTO(strDrink: 'cosmopolitan', strDrinkThumb: 'ImageURL2', idDrink: '2'),
            DrinkDTO(strDrink: 'kamikaze', strDrinkThumb: 'ImageURL3', idDrink: '3'),
          ]));
      // 2
      final results = await sut.getCocktailModelsByAlcohol(alcoholName: 'vodka');
      // 3
      expect(
          results,
          const DrinksDTO(drinks: [
            DrinkDTO(strDrink: 'avalon', strDrinkThumb: 'ImageURL1', idDrink: '1'),
            DrinkDTO(strDrink: 'cosmopolitan', strDrinkThumb: 'ImageURL2', idDrink: '2'),
            DrinkDTO(strDrink: 'kamikaze', strDrinkThumb: 'ImageURL3', idDrink: '3'),
          ]));
    });
  });
}
