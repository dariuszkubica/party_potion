import 'package:dio/dio.dart';
import 'package:party_potion/app/core/config.dart';

class CocktailSearchRemoteDataSource {
  Future<Map<String, dynamic>?> getCocktailData({
    required String cocktailName,
  }) async {
    try {
      final reponse = await Dio().get<Map<String, dynamic>>(
          '${Config.cocktailSearchRemoteDataSource}$cocktailName');
      return reponse.data;
    } on DioError catch (error) {
      throw Exception(error.response?.data ?? 'Unknow error');
    }
  }
}
