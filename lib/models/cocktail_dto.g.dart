// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cocktail_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CocktailsDto _$$_CocktailsDtoFromJson(Map<String, dynamic> json) =>
    _$_CocktailsDto(
      drinks: (json['drinks'] as List<dynamic>)
          .map((e) => CocktailDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CocktailsDtoToJson(_$_CocktailsDto instance) =>
    <String, dynamic>{
      'drinks': instance.drinks,
    };

_$_CocktailDto _$$_CocktailDtoFromJson(Map<String, dynamic> json) =>
    _$_CocktailDto(
      idDrink: json['idDrink'] as String?,
      strDrink: json['strDrink'] as String?,
      strTags: json['strTags'] as String?,
      strCategory: json['strCategory'] as String?,
      strIba: json['strIba'] as String?,
      strAlcoholic: json['strAlcoholic'] as String?,
      strGlass: json['strGlass'] as String?,
      strInstructions: json['strInstructions'] as String?,
      strInstructionsDe: json['strInstructionsDe'] as String?,
      strInstructionsIt: json['strInstructionsIt'] as String?,
      strDrinkThumb: json['strDrinkThumb'] as String?,
      strIngredient1: json['strIngredient1'] as String?,
      strIngredient2: json['strIngredient2'] as String?,
      strIngredient3: json['strIngredient3'] as String?,
      strIngredient4: json['strIngredient4'] as String?,
      strIngredient5: json['strIngredient5'] as String?,
      strIngredient6: json['strIngredient6'] as String?,
      strIngredient7: json['strIngredient7'] as String?,
      strIngredient8: json['strIngredient8'] as String?,
      strIngredient9: json['strIngredient9'] as String?,
      strIngredient10: json['strIngredient10'] as String?,
      strIngredient11: json['strIngredient11'] as String?,
      strIngredient12: json['strIngredient12'] as String?,
      strIngredient13: json['strIngredient13'] as String?,
      strIngredient14: json['strIngredient14'] as String?,
      strIngredient15: json['strIngredient15'] as String?,
      strMeasure1: json['strMeasure1'] as String?,
      strMeasure2: json['strMeasure2'] as String?,
      strMeasure3: json['strMeasure3'] as String?,
      strMeasure4: json['strMeasure4'] as String?,
      strMeasure5: json['strMeasure5'] as String?,
      strMeasure6: json['strMeasure6'] as String?,
      strMeasure7: json['strMeasure7'] as String?,
      strMeasure8: json['strMeasure8'] as String?,
      strMeasure9: json['strMeasure9'] as String?,
      strMeasure10: json['strMeasure10'] as String?,
      strMeasure11: json['strMeasure11'] as String?,
      strMeasure12: json['strMeasure12'] as String?,
      strMeasure13: json['strMeasure13'] as String?,
      strMeasure14: json['strMeasure14'] as String?,
      strMeasure15: json['strMeasure15'] as String?,
      strImageSource: json['strImageSource'] as String?,
      strImageAttribution: json['strImageAttribution'] as String?,
      strCreativeCommonsConfirmed:
          json['strCreativeCommonsConfirmed'] as String?,
      dateModified: json['dateModified'] == null
          ? null
          : DateTime.parse(json['dateModified'] as String),
    );

Map<String, dynamic> _$$_CocktailDtoToJson(_$_CocktailDto instance) =>
    <String, dynamic>{
      'idDrink': instance.idDrink,
      'strDrink': instance.strDrink,
      'strTags': instance.strTags,
      'strCategory': instance.strCategory,
      'strIba': instance.strIba,
      'strAlcoholic': instance.strAlcoholic,
      'strGlass': instance.strGlass,
      'strInstructions': instance.strInstructions,
      'strInstructionsDe': instance.strInstructionsDe,
      'strInstructionsIt': instance.strInstructionsIt,
      'strDrinkThumb': instance.strDrinkThumb,
      'strIngredient1': instance.strIngredient1,
      'strIngredient2': instance.strIngredient2,
      'strIngredient3': instance.strIngredient3,
      'strIngredient4': instance.strIngredient4,
      'strIngredient5': instance.strIngredient5,
      'strIngredient6': instance.strIngredient6,
      'strIngredient7': instance.strIngredient7,
      'strIngredient8': instance.strIngredient8,
      'strIngredient9': instance.strIngredient9,
      'strIngredient10': instance.strIngredient10,
      'strIngredient11': instance.strIngredient11,
      'strIngredient12': instance.strIngredient12,
      'strIngredient13': instance.strIngredient13,
      'strIngredient14': instance.strIngredient14,
      'strIngredient15': instance.strIngredient15,
      'strMeasure1': instance.strMeasure1,
      'strMeasure2': instance.strMeasure2,
      'strMeasure3': instance.strMeasure3,
      'strMeasure4': instance.strMeasure4,
      'strMeasure5': instance.strMeasure5,
      'strMeasure6': instance.strMeasure6,
      'strMeasure7': instance.strMeasure7,
      'strMeasure8': instance.strMeasure8,
      'strMeasure9': instance.strMeasure9,
      'strMeasure10': instance.strMeasure10,
      'strMeasure11': instance.strMeasure11,
      'strMeasure12': instance.strMeasure12,
      'strMeasure13': instance.strMeasure13,
      'strMeasure14': instance.strMeasure14,
      'strMeasure15': instance.strMeasure15,
      'strImageSource': instance.strImageSource,
      'strImageAttribution': instance.strImageAttribution,
      'strCreativeCommonsConfirmed': instance.strCreativeCommonsConfirmed,
      'dateModified': instance.dateModified?.toIso8601String(),
    };
