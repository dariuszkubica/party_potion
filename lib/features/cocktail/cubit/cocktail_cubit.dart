import 'package:bloc/bloc.dart';
import 'package:party_potion/app/core/enums.dart';
import 'package:party_potion/models/drinks_dto.dart';
import 'package:party_potion/repositories/cocktail_ingredient_repository.dart';

part 'cocktail_state.dart';

class CocktailCubit extends Cubit<CocktailState> {
  CocktailCubit(this._cocktailIngredientRepository)
      : super(const CocktailState());

  final CocktailIngredientRepository _cocktailIngredientRepository;

  Future<void> getCocktailModelsByAlcohol({
    required String alcoholName,
  }) async {
    emit(const CocktailState(status: Status.loading));
    try {
      final drinks = await _cocktailIngredientRepository
          .getCocktailModelsByAlcohol(alcoholName: alcoholName);
      emit(
        CocktailState(
          alcohol: alcoholName,
          models: drinks,
          status: Status.success,
        ),
      );
    } catch (error) {
      emit(
        CocktailState(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }
}
