// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cocktail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CocktailModel _$$_CocktailModelFromJson(Map<String, dynamic> json) =>
    _$_CocktailModel(
      json['strDrink'] as String,
      json['strInstructions'] as String,
      json['strDrinkThumb'] as String,
      const IngredientsConverter()
          .fromJson(json['ingredientsList'] as Map<String?, String?>),
    );

Map<String, dynamic> _$$_CocktailModelToJson(_$_CocktailModel instance) =>
    <String, dynamic>{
      'strDrink': instance.name,
      'strInstructions': instance.instructions,
      'strDrinkThumb': instance.imageURL,
      'ingredientsList':
          const IngredientsConverter().toJson(instance.ingredientsList),
    };
