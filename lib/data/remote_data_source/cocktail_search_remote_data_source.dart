import 'package:dio/dio.dart';

class CocktailSearchRemoteDataSource {
  Future<Map<String, dynamic>?> getCocktailData({
    required String cocktailName,
  }) async {
    try {
      final reponse = await Dio().get<Map<String, dynamic>>(
          'https://www.thecocktaildb.com/api/json/v1/1/search.php?s=$cocktailName');
      return reponse.data;
    } on DioError catch (error) {
      throw Exception(error.response?.data ?? 'Unknow error');
    }
  }
}
