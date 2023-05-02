import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:party_potion/app/core/enums.dart';
import 'package:party_potion/features/cocktail/cubit/cocktail_cubit.dart';
import 'package:party_potion/models/cocktail_dto.dart';
import 'package:party_potion/repositories/cocktail_ingredient_repository.dart';

class MockCocktailIngredientRepository extends Mock
    implements CocktailIngredientRepository {}

void main() {
  late CocktailCubit sut;
  late MockCocktailIngredientRepository repository;

  setUp(() {
    repository = MockCocktailIngredientRepository();
    sut = CocktailCubit(cocktailIngredientRepository: repository);
  });

  group('getCocktailModelsByAlcohol', () {
    group('success', () {
      setUp(() {
        when(() => repository.getCocktailModelsByAlcohol(alcoholName: 'vodka'))
            .thenAnswer(
          (_) async => const CocktailsDto(
            drinks: [
              CocktailDto(
                strDrink: 'avalon',
                strDrinkThumb: '',
                strInstructions: '',
              ),
              CocktailDto(
                strDrink: 'cosmopolitan',
                strDrinkThumb: '',
                strInstructions: '',
              ),
              CocktailDto(
                strDrink: 'kamikaze',
                strDrinkThumb: '',
                strInstructions: '',
              ),
            ],
          ),
        );
      });
      blocTest(
        'emits Status.loading then Status.success with results',
        build: () => sut,
        act: (cubit) => cubit.getCocktailModelsByAlcohol(alcoholName: 'vodka'),
        expect: () => [
          CocktailState(
            status: Status.loading,
          ),
          CocktailState(
            status: Status.success,
            alcohol: 'vodka',
            model: const CocktailsDto(
              drinks: [
                CocktailDto(
                  strDrink: 'avalon',
                  strDrinkThumb: '',
                  strInstructions: '',
                ),
                CocktailDto(
                  strDrink: 'cosmopolitan',
                  strDrinkThumb: '',
                  strInstructions: '',
                ),
                CocktailDto(
                  strDrink: 'kamikaze',
                  strDrinkThumb: '',
                  strInstructions: '',
                ),
              ],
            ),
          ),
        ],
      );
    });
    group('failure', () {
      setUp(() {
        when(() => repository.getCocktailModelsByAlcohol(alcoholName: 'vodka'))
            .thenThrow(Exception('test-exception-error'));
      });
      blocTest(
        'emits Status.loading then Status.error with error message',
        build: () => sut,
        act: (cubit) => cubit.getCocktailModelsByAlcohol(alcoholName: 'vodka'),
        expect: () => [
          CocktailState(
            status: Status.loading,
          ),
          CocktailState(
            status: Status.error,
            errorMessage: 'Exception: test-exception-error',
          )
        ],
      );
    });
  });
}
