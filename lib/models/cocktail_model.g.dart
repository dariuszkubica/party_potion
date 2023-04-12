// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cocktail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CocktailModel _$$_CocktailModelFromJson(Map<String, dynamic> json) =>
    _$_CocktailModel(
      cocktailName: json['cocktailName'] as String,
      instructions: json['instructions'] as String? ?? 'Instruction',
      imageURL: json['imageURL'] as String? ?? 'ImageURL',
      ingredientsList: (json['ingredientsList'] as List<dynamic>?)
          ?.map((e) => IngredientModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CocktailModelToJson(_$_CocktailModel instance) =>
    <String, dynamic>{
      'cocktailName': instance.cocktailName,
      'instructions': instance.instructions,
      'imageURL': instance.imageURL,
      'ingredientsList': instance.ingredientsList,
    };
