// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alcohol_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AlcoholModel _$$_AlcoholModelFromJson(Map<String, dynamic> json) =>
    _$_AlcoholModel(
      id: json['id'] as String,
      alcoholName: json['alcoholName'] as String,
      alcoholUrl: json['alcoholUrl'] as String,
      have: json['have'] as String? ?? '0',
    );

Map<String, dynamic> _$$_AlcoholModelToJson(_$_AlcoholModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'alcoholName': instance.alcoholName,
      'alcoholUrl': instance.alcoholUrl,
      'have': instance.have,
    };
