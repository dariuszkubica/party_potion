import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:party_potion/models/cocktail_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'cocktail_search_remote_retrofit_data_source.g.dart';

@injectable
@RestApi()
abstract class CocktailSearchRemoteRetroFitDataSource {
  @factoryMethod
  factory CocktailSearchRemoteRetroFitDataSource(Dio dio) =
      _CocktailSearchRemoteRetroFitDataSource;
  @GET('/1/search.php')
  Future<CocktailsDto> getCocktailDataByName(
    @Query('s') String cocktailName,
  );
}
