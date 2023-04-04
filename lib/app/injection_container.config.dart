// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:party_potion/app/injection_container.dart' as _i10;
import 'package:party_potion/data/remote_data_source/cocktail_ingredient_remote_retrofit_data_source.dart'
    as _i4;
import 'package:party_potion/data/remote_data_source/cocktail_search_remote_retrofit_data_source.dart'
    as _i6;
import 'package:party_potion/features/cocktail/cubit/cocktail_cubit.dart'
    as _i9;
import 'package:party_potion/features/search/cubit/search_cocktail_cubit.dart'
    as _i8;
import 'package:party_potion/repositories/cocktail_ingredient_repository.dart'
    as _i5;
import 'package:party_potion/repositories/cocktail_search_repository.dart'
    as _i7;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.factory<String>(
      () => registerModule.baseUrl,
      instanceName: 'BaseUrl',
    );
    gh.lazySingleton<_i3.Dio>(
        () => registerModule.dio(gh<String>(instanceName: 'BaseUrl')));
    gh.factory<_i4.CocktailIngredientRemoteRetroFitDataSource>(
        () => _i4.CocktailIngredientRemoteRetroFitDataSource(gh<_i3.Dio>()));
    gh.factory<_i5.CocktailIngredientRepository>(() =>
        _i5.CocktailIngredientRepository(
            cocktailIngredientRemoteRetroFitDataSource:
                gh<_i4.CocktailIngredientRemoteRetroFitDataSource>()));
    gh.factory<_i6.CocktailSearchRemoteRetroFitDataSource>(
        () => _i6.CocktailSearchRemoteRetroFitDataSource(gh<_i3.Dio>()));
    gh.factory<_i7.CocktailSearchRepository>(() => _i7.CocktailSearchRepository(
        cocktailSearchRemoteRetroFitDataSource:
            gh<_i6.CocktailSearchRemoteRetroFitDataSource>()));
    gh.factory<_i8.SearchCocktailCubit>(
        () => _i8.SearchCocktailCubit(gh<_i7.CocktailSearchRepository>()));
    gh.factory<_i9.CocktailCubit>(
        () => _i9.CocktailCubit(gh<_i5.CocktailIngredientRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i10.RegisterModule {}
