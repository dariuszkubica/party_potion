import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:party_potion/data/remote_data_source/cocktail_search_remote_retrofit_data_source.dart';
import 'package:party_potion/models/cocktail_dto.dart';
import 'package:party_potion/models/cocktail_model.dart';
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
              strDrinkThumb: 'imageURL')
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
              strDrinkThumb: 'imageURL')
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
            ingredientsList: [],
          ));
    });
  });
}
