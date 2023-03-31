import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:party_potion/app/core/enums.dart';
import 'package:party_potion/models/cocktail_model.dart';
import 'package:party_potion/repositories/cocktail_search_repository.dart';

part 'search_cocktail_state.dart';

@injectable
class SearchCocktailCubit extends Cubit<SearchCocktailState> {
  SearchCocktailCubit(this._cocktailSearchRepository)
      : super(const SearchCocktailState());

  final CocktailSearchRepository _cocktailSearchRepository;

  Future<void> getCocktailModelByName({
    required String cocktailName,
  }) async {
    emit(const SearchCocktailState(status: Status.loading));
    try {
      final cocktailModel = await _cocktailSearchRepository
          .getCocktailModelByName(cocktailName: cocktailName);
      emit(
        SearchCocktailState(
          model: cocktailModel,
          status: Status.success,
        ),
      );
    } catch (error) {
      emit(
        SearchCocktailState(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }
}
