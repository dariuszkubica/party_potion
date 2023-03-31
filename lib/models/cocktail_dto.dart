import 'package:freezed_annotation/freezed_annotation.dart';

part 'cocktail_dto.g.dart';
part 'cocktail_dto.freezed.dart';

@freezed
class CocktailsDto with _$CocktailsDto {
  const factory CocktailsDto({
    required List<CocktailDto> drinks,
  }) = _CocktailsDto;

  factory CocktailsDto.fromJson(Map<String, dynamic> json) =>
      _$CocktailsDtoFromJson(json);
}

@freezed
class CocktailDto with _$CocktailDto {
  const factory CocktailDto({
    required String? idDrink,
    required String? strDrink,
    required String? strTags,
    required String? strCategory,
    required String? strIba,
    required String? strAlcoholic,
    required String? strGlass,
    required String? strInstructions,
    required String? strInstructionsDe,
    required String? strInstructionsIt,
    required String? strDrinkThumb,
    required String? strIngredient1,
    required String? strIngredient2,
    required String? strIngredient3,
    required String? strIngredient4,
    required String? strMeasure1,
    required String? strMeasure2,
    required String? strMeasure3,
    required String? strImageSource,
    required String? strImageAttribution,
    required String? strCreativeCommonsConfirmed,
    required DateTime? dateModified,
  }) = _CocktailDto;

  factory CocktailDto.fromJson(Map<String, dynamic> json) =>
      _$CocktailDtoFromJson(json);
}
