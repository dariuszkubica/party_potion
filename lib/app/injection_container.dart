import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:party_potion/data/remote_data_source/cocktail_ingredient_remote_retrofit_data_source.dart';
import 'package:party_potion/data/remote_data_source/cocktail_search_remote_retrofit_data_source.dart';
import 'package:party_potion/features/cocktail/cubit/cocktail_cubit.dart';
import 'package:party_potion/features/search/cubit/search_cocktail_cubit.dart';
import 'package:party_potion/repositories/cocktail_ingredient_repository.dart';
import 'package:party_potion/repositories/cocktail_search_repository.dart';

final getIt = GetIt.instance;

void configureDependencies() {
  // Bloc
  getIt.registerFactory(() => CocktailCubit(getIt()));
  getIt.registerFactory(() => SearchCocktailCubit(getIt()));

  // Repositories
  getIt.registerFactory(() => CocktailIngredientRepository(getIt()));
  getIt.registerFactory(() => CocktailSearchRepository(getIt()));

  // DataSources
  getIt
      .registerFactory(() => CocktailIngredientRemoteRetroFitDataSource(Dio()));
  getIt.registerFactory(() => CocktailSearchRemoteRetroFitDataSource(Dio()));
}
