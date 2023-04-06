import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:party_potion/app/core/enums.dart';
import 'package:party_potion/models/drinks_dto.dart';
import 'package:party_potion/repositories/cocktail_ingredient_repository.dart';

part 'cocktail_state.dart';
part 'cocktail_cubit.freezed.dart';

@injectable
class CocktailCubit extends Cubit<CocktailState> {
  CocktailCubit({required this.cocktailIngredientRepository}) : super(CocktailState());

  final CocktailIngredientRepository cocktailIngredientRepository;

  Future<void> getCocktailModelsByAlcohol({
    required String alcoholName,
  }) async {
    emit(
      CocktailState(status: Status.loading),
    );
    try {
      final drinks = await cocktailIngredientRepository.getCocktailModelsByAlcohol(alcoholName: alcoholName);
      emit(
        CocktailState(
          status: Status.success,
          alcohol: alcoholName,
          models: drinks,
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
