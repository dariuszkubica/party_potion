import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:party_potion/models/cocktail_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'cocktail_ingredient_remote_retrofit_data_source.g.dart';

@injectable
@RestApi()
abstract class CocktailIngredientRemoteRetroFitDataSource {
  @factoryMethod
  factory CocktailIngredientRemoteRetroFitDataSource(Dio dio) =
      _CocktailIngredientRemoteRetroFitDataSource;
  @GET("/1/filter.php")
  Future<CocktailsDto> getCocktailDataByAlcohol(
    @Query("i") String alcoholName,
  );
}
