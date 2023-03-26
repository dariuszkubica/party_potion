import 'package:dio/dio.dart';
// import 'package:party_potion/app/core/config.dart';
// import 'package:party_potion/models/cocktail_model.dart';
import 'package:party_potion/models/drinks_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'cocktail_ingredient_remote_data_source.g.dart';

@RestApi(baseUrl: 'https://www.thecocktaildb.com/api/json/v1')
abstract class CocktailIngredientRemoteRetroFitDataSource {
  factory CocktailIngredientRemoteRetroFitDataSource(Dio dio,
      {String baseUrl}) = _CocktailIngredientRemoteRetroFitDataSource;
  @GET("/1/filter.php")
  Future<DrinksDTO> getCocktailData(
    @Query("i") String alcoholName,
  );
}
