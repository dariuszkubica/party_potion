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
      strMeasure1: json['strMeasure1'] as String?,
      strMeasure2: json['strMeasure2'] as String?,
      strMeasure3: json['strMeasure3'] as String?,
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
      'strMeasure1': instance.strMeasure1,
      'strMeasure2': instance.strMeasure2,
      'strMeasure3': instance.strMeasure3,
      'strImageSource': instance.strImageSource,
      'strImageAttribution': instance.strImageAttribution,
      'strCreativeCommonsConfirmed': instance.strCreativeCommonsConfirmed,
      'dateModified': instance.dateModified?.toIso8601String(),
    };
