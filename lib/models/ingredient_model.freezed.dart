// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ingredient_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$IngredientModel {
  String get ingredientName => throw _privateConstructorUsedError;
  String get ingredientMesure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IngredientModelCopyWith<IngredientModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngredientModelCopyWith<$Res> {
  factory $IngredientModelCopyWith(
          IngredientModel value, $Res Function(IngredientModel) then) =
      _$IngredientModelCopyWithImpl<$Res, IngredientModel>;
  @useResult
  $Res call({String ingredientName, String ingredientMesure});
}

/// @nodoc
class _$IngredientModelCopyWithImpl<$Res, $Val extends IngredientModel>
    implements $IngredientModelCopyWith<$Res> {
  _$IngredientModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ingredientName = null,
    Object? ingredientMesure = null,
  }) {
    return _then(_value.copyWith(
      ingredientName: null == ingredientName
          ? _value.ingredientName
          : ingredientName // ignore: cast_nullable_to_non_nullable
              as String,
      ingredientMesure: null == ingredientMesure
          ? _value.ingredientMesure
          : ingredientMesure // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IngredientModelCopyWith<$Res>
    implements $IngredientModelCopyWith<$Res> {
  factory _$$_IngredientModelCopyWith(
          _$_IngredientModel value, $Res Function(_$_IngredientModel) then) =
      __$$_IngredientModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String ingredientName, String ingredientMesure});
}

/// @nodoc
class __$$_IngredientModelCopyWithImpl<$Res>
    extends _$IngredientModelCopyWithImpl<$Res, _$_IngredientModel>
    implements _$$_IngredientModelCopyWith<$Res> {
  __$$_IngredientModelCopyWithImpl(
      _$_IngredientModel _value, $Res Function(_$_IngredientModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ingredientName = null,
    Object? ingredientMesure = null,
  }) {
    return _then(_$_IngredientModel(
      ingredientName: null == ingredientName
          ? _value.ingredientName
          : ingredientName // ignore: cast_nullable_to_non_nullable
              as String,
      ingredientMesure: null == ingredientMesure
          ? _value.ingredientMesure
          : ingredientMesure // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_IngredientModel implements _IngredientModel {
  _$_IngredientModel(
      {required this.ingredientName, required this.ingredientMesure});

  @override
  final String ingredientName;
  @override
  final String ingredientMesure;

  @override
  String toString() {
    return 'IngredientModel(ingredientName: $ingredientName, ingredientMesure: $ingredientMesure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IngredientModel &&
            (identical(other.ingredientName, ingredientName) ||
                other.ingredientName == ingredientName) &&
            (identical(other.ingredientMesure, ingredientMesure) ||
                other.ingredientMesure == ingredientMesure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, ingredientName, ingredientMesure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IngredientModelCopyWith<_$_IngredientModel> get copyWith =>
      __$$_IngredientModelCopyWithImpl<_$_IngredientModel>(this, _$identity);
}

abstract class _IngredientModel implements IngredientModel {
  factory _IngredientModel(
      {required final String ingredientName,
      required final String ingredientMesure}) = _$_IngredientModel;

  @override
  String get ingredientName;
  @override
  String get ingredientMesure;
  @override
  @JsonKey(ignore: true)
  _$$_IngredientModelCopyWith<_$_IngredientModel> get copyWith =>
      throw _privateConstructorUsedError;
}
