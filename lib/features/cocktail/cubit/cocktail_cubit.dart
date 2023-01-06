import 'package:bloc/bloc.dart';
import 'package:party_potion/app/core/enums.dart';
import 'package:party_potion/models/cocktail_model.dart';
import 'package:party_potion/repositories/cocktail_ingredient_repository.dart';

part 'cocktail_state.dart';

class CocktailCubit extends Cubit<CocktailState> {
  CocktailCubit(this._cocktailIngredientRepository)
      : super(const CocktailState());

  final CocktailIngredientRepository _cocktailIngredientRepository;

  Future<void> getCocktailModelByAlcohol({
    required String alcoholName,
  }) async {
    emit(const CocktailState(status: Status.loading));
    try {
      final cocktailModel = await _cocktailIngredientRepository
          .getCocktailModelByAlcohol(alcoholName: alcoholName);
      emit(
        CocktailState(
          model: cocktailModel,
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
