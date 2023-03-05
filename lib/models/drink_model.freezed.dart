// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'drink_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DrinkModel {
  String get drinkName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DrinkModelCopyWith<DrinkModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrinkModelCopyWith<$Res> {
  factory $DrinkModelCopyWith(
          DrinkModel value, $Res Function(DrinkModel) then) =
      _$DrinkModelCopyWithImpl<$Res, DrinkModel>;
  @useResult
  $Res call({String drinkName});
}

/// @nodoc
class _$DrinkModelCopyWithImpl<$Res, $Val extends DrinkModel>
    implements $DrinkModelCopyWith<$Res> {
  _$DrinkModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? drinkName = null,
  }) {
    return _then(_value.copyWith(
      drinkName: null == drinkName
          ? _value.drinkName
          : drinkName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DrinkModelCopyWith<$Res>
    implements $DrinkModelCopyWith<$Res> {
  factory _$$_DrinkModelCopyWith(
          _$_DrinkModel value, $Res Function(_$_DrinkModel) then) =
      __$$_DrinkModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String drinkName});
}

/// @nodoc
class __$$_DrinkModelCopyWithImpl<$Res>
    extends _$DrinkModelCopyWithImpl<$Res, _$_DrinkModel>
    implements _$$_DrinkModelCopyWith<$Res> {
  __$$_DrinkModelCopyWithImpl(
      _$_DrinkModel _value, $Res Function(_$_DrinkModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? drinkName = null,
  }) {
    return _then(_$_DrinkModel(
      drinkName: null == drinkName
          ? _value.drinkName
          : drinkName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DrinkModel implements _DrinkModel {
  _$_DrinkModel({required this.drinkName});

  @override
  final String drinkName;

  @override
  String toString() {
    return 'DrinkModel(drinkName: $drinkName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DrinkModel &&
            (identical(other.drinkName, drinkName) ||
                other.drinkName == drinkName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, drinkName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DrinkModelCopyWith<_$_DrinkModel> get copyWith =>
      __$$_DrinkModelCopyWithImpl<_$_DrinkModel>(this, _$identity);
}

abstract class _DrinkModel implements DrinkModel {
  factory _DrinkModel({required final String drinkName}) = _$_DrinkModel;

  @override
  String get drinkName;
  @override
  @JsonKey(ignore: true)
  _$$_DrinkModelCopyWith<_$_DrinkModel> get copyWith =>
      throw _privateConstructorUsedError;
}
