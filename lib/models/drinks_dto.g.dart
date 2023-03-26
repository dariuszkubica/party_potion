// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drinks_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DrinksDTO _$$_DrinksDTOFromJson(Map<String, dynamic> json) => _$_DrinksDTO(
      drinks: (json['drinks'] as List<dynamic>)
          .map((e) => DrinkDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DrinksDTOToJson(_$_DrinksDTO instance) =>
    <String, dynamic>{
      'drinks': instance.drinks,
    };

_$_DrinkDTO _$$_DrinkDTOFromJson(Map<String, dynamic> json) => _$_DrinkDTO(
      strDrink: json['strDrink'] as String,
      strDrinkThumb: json['strDrinkThumb'] as String?,
      idDrink: json['idDrink'] as String?,
    );

Map<String, dynamic> _$$_DrinkDTOToJson(_$_DrinkDTO instance) =>
    <String, dynamic>{
      'strDrink': instance.strDrink,
      'strDrinkThumb': instance.strDrinkThumb,
      'idDrink': instance.idDrink,
    };
