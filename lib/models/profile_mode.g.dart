// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_mode.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileModel _$$_ProfileModelFromJson(Map<String, dynamic> json) =>
    _$_ProfileModel(
      userName: json['userName'] as String,
      userAvatar: json['userAvatar'] as String? ??
          'https://icon-library.com/images/avatar-icon-images/avatar-icon-images-4.jpg',
    );

Map<String, dynamic> _$$_ProfileModelToJson(_$_ProfileModel instance) =>
    <String, dynamic>{
      'userName': instance.userName,
      'userAvatar': instance.userAvatar,
    };
