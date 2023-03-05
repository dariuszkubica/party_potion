// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cocktail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CocktailModel _$$_CocktailModelFromJson(Map<String, dynamic> json) =>
    _$_CocktailModel(
      json['strDrink'] as String,
      json['strInstructions'] as String?,
      json['strDrinkThumb'] as String,
      _$JsonConverterFromJson<Map<String?, String?>, List<IngredientModel>>(
          json['ingredientsList'], const IngredientsConverter().fromJson),
      _$JsonConverterFromJson<Map<String?, String?>, List<DrinkModel>>(
          json['drinksList'], const CocktailsConverter().fromJson),
    );

Map<String, dynamic> _$$_CocktailModelToJson(_$_CocktailModel instance) =>
    <String, dynamic>{
      'strDrink': instance.name,
      'strInstructions': instance.instructions,
      'strDrinkThumb': instance.imageURL,
      'ingredientsList':
          _$JsonConverterToJson<Map<String?, String?>, List<IngredientModel>>(
              instance.ingredientsList, const IngredientsConverter().toJson),
      'drinksList':
          _$JsonConverterToJson<Map<String?, String?>, List<DrinkModel>>(
              instance.drinksList, const CocktailsConverter().toJson),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
