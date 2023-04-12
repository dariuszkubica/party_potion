import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:party_potion/app/core/enums.dart';
import 'package:party_potion/features/search/cubit/search_cocktail_cubit.dart';
import 'package:party_potion/models/cocktail_model.dart';
import 'package:party_potion/repositories/cocktail_search_repository.dart';

class MockCocktailSearchRepository extends Mock
    implements CocktailSearchRepository {}

void main() {
  late SearchCocktailCubit sut;
  late MockCocktailSearchRepository repository;

  setUp(() {
    repository = MockCocktailSearchRepository();
    sut = SearchCocktailCubit(cocktailSearchRepository: repository);
  });

  group('getCocktailModelByName', () {
    group('success', () {
      setUp(() {
        when(() => repository.getCocktailModelByName(cocktailName: 'mojito'))
            .thenAnswer(
          (_) async => CocktailModel(
            cocktailName: 'mojito',
            instructions: '',
            imageURL: 'imageURL',
            ingredientsList: [],
          ),
        );
      });
      blocTest(
        'emits Status.loading then Status.success with results',
        build: () => sut,
        act: (cubit) => cubit.getCocktailModelByName(cocktailName: 'mojito'),
        expect: () => [
          SearchCocktailState(
            status: Status.loading,
          ),
          SearchCocktailState(
            status: Status.success,
            model: CocktailModel(
              cocktailName: 'mojito',
              instructions: '',
              imageURL: 'imageURL',
              ingredientsList: [],
            ),
          ),
        ],
      );
    });
    group('failure', () {
      setUp(() {
        when(() => repository.getCocktailModelByName(cocktailName: 'mojito'))
            .thenThrow(Exception('test-exception-error'));
      });
      blocTest(
        'emits Status.loading then Status.error with error message',
        build: () => sut,
        act: (cubit) => cubit.getCocktailModelByName(cocktailName: 'mojito'),
        expect: () => [
          SearchCocktailState(
            status: Status.loading,
          ),
          SearchCocktailState(
            status: Status.error,
            errorMessage: 'Exception: test-exception-error',
          )
        ],
      );
    });
  });
}
