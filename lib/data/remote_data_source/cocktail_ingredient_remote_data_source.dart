import 'package:dio/dio.dart';
import 'package:party_potion/app/core/config.dart';

class CocktailIngredientRemoteDataSource {
  Future<Map<String, dynamic>?> getCocktailData({
    required String alcoholName,
  }) async {
    try {
      final response = await Dio().get<Map<String, dynamic>>(
          '${Config.cocktailIngredientRemoteDataSource}$alcoholName');
      return response.data;
    } on DioError catch (error) {
      throw Exception(error.response?.data ?? 'Unknow error');
    }
  }
}
