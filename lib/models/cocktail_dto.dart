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
    String? idDrink,
    required String? strDrink,
    String? strTags,
    String? strCategory,
    String? strIba,
    String? strAlcoholic,
    String? strGlass,
    required String? strInstructions,
    String? strInstructionsDe,
    String? strInstructionsIt,
    required String? strDrinkThumb,
    String? strIngredient1,
    String? strIngredient2,
    String? strIngredient3,
    String? strIngredient4,
    String? strIngredient5,
    String? strIngredient6,
    String? strIngredient7,
    String? strIngredient8,
    String? strIngredient9,
    String? strIngredient10,
    String? strIngredient11,
    String? strIngredient12,
    String? strIngredient13,
    String? strIngredient14,
    String? strIngredient15,
    String? strMeasure1,
    String? strMeasure2,
    String? strMeasure3,
    String? strMeasure4,
    String? strMeasure5,
    String? strMeasure6,
    String? strMeasure7,
    String? strMeasure8,
    String? strMeasure9,
    String? strMeasure10,
    String? strMeasure11,
    String? strMeasure12,
    String? strMeasure13,
    String? strMeasure14,
    String? strMeasure15,
    String? strImageSource,
    String? strImageAttribution,
    String? strCreativeCommonsConfirmed,
    DateTime? dateModified,
  }) = _CocktailDto;

  factory CocktailDto.fromJson(Map<String, dynamic> json) =>
      _$CocktailDtoFromJson(json);
}
