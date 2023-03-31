// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cocktail_search_remote_retrofit_data_source.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _CocktailSearchRemoteRetroFitDataSource
    implements CocktailSearchRemoteRetroFitDataSource {
  _CocktailSearchRemoteRetroFitDataSource(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'https://www.thecocktaildb.com/api/json/v1';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<CocktailsDto> getCocktailDataByName(cocktailName) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r's': cocktailName};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<CocktailsDto>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/1/search.php',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CocktailsDto.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
