import 'package:bloc/bloc.dart';
import 'package:party_potion/app/core/enums.dart';
import 'package:party_potion/models/cocktail_model.dart';
import 'package:party_potion/repositories/cocktail_repository.dart';

part 'cocktail_state.dart';

class CocktailCubit extends Cubit<CocktailState> {
  CocktailCubit(this._cocktailRepository) : super(const CocktailState());

  final CocktailRepository _cocktailRepository;

  Future<void> getCocktailModel({
    required String cocktailName,
  }) async {
    emit(const CocktailState(status: Status.loading));
    try {
      final cocktailModel = await _cocktailRepository.getCocktailModel(
          cocktailName: cocktailName);
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
