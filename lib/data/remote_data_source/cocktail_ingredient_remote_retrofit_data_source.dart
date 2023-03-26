import 'package:dio/dio.dart';
import 'package:party_potion/models/drinks_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'cocktail_ingredient_remote_retrofit_data_source.g.dart';

@RestApi(baseUrl: 'https://www.thecocktaildb.com/api/json/v1')
abstract class CocktailIngredientRemoteRetroFitDataSource {
  factory CocktailIngredientRemoteRetroFitDataSource(Dio dio,
      {String baseUrl}) = _CocktailIngredientRemoteRetroFitDataSource;
  @GET("/1/filter.php")
  Future<DrinksDTO> getCocktailDataByAlcohol(
    @Query("i") String alcoholName,
  );
}
