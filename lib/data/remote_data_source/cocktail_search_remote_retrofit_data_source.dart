import 'package:dio/dio.dart';
import 'package:party_potion/models/cocktail_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'cocktail_search_remote_retrofit_data_source.g.dart';

@RestApi(baseUrl: 'https://www.thecocktaildb.com/api/json/v1')
abstract class CocktailSearchRemoteRetroFitDataSource {
  factory CocktailSearchRemoteRetroFitDataSource(Dio dio, {String baseUrl}) =
      _CocktailSearchRemoteRetroFitDataSource;
  @GET('/1/search.php')
  Future<CocktailsDto> getCocktailDataByName(
    @Query('s') String cocktailName,
  );
}
