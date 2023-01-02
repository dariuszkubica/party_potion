import 'package:dio/dio.dart';

class CocktailIngredientRemoteDataSource {
  Future<Map<String, dynamic>?> getCocktailData({
    required String alcoholName,
  }) async {
    try {
      final reponse = await Dio().get<Map<String, dynamic>>(
          'https://www.thecocktaildb.com/api/json/v1/1/filter.php?i=$alcoholName');
      return reponse.data;
    } on DioError catch (error) {
      throw Exception(error.response?.data ?? 'Unknow error');
    }
  }
}
