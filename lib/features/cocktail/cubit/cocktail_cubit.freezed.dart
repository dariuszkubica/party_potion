// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cocktail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CocktailState {
  Status get status => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  String get alcohol => throw _privateConstructorUsedError;
  DrinksDTO? get models => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CocktailStateCopyWith<CocktailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CocktailStateCopyWith<$Res> {
  factory $CocktailStateCopyWith(
          CocktailState value, $Res Function(CocktailState) then) =
      _$CocktailStateCopyWithImpl<$Res, CocktailState>;
  @useResult
  $Res call(
      {Status status, String? errorMessage, String alcohol, DrinksDTO? models});

  $DrinksDTOCopyWith<$Res>? get models;
}

/// @nodoc
class _$CocktailStateCopyWithImpl<$Res, $Val extends CocktailState>
    implements $CocktailStateCopyWith<$Res> {
  _$CocktailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errorMessage = freezed,
    Object? alcohol = null,
    Object? models = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      alcohol: null == alcohol
          ? _value.alcohol
          : alcohol // ignore: cast_nullable_to_non_nullable
              as String,
      models: freezed == models
          ? _value.models
          : models // ignore: cast_nullable_to_non_nullable
              as DrinksDTO?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DrinksDTOCopyWith<$Res>? get models {
    if (_value.models == null) {
      return null;
    }

    return $DrinksDTOCopyWith<$Res>(_value.models!, (value) {
      return _then(_value.copyWith(models: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CocktailStateCopyWith<$Res>
    implements $CocktailStateCopyWith<$Res> {
  factory _$$_CocktailStateCopyWith(
          _$_CocktailState value, $Res Function(_$_CocktailState) then) =
      __$$_CocktailStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Status status, String? errorMessage, String alcohol, DrinksDTO? models});

  @override
  $DrinksDTOCopyWith<$Res>? get models;
}

/// @nodoc
class __$$_CocktailStateCopyWithImpl<$Res>
    extends _$CocktailStateCopyWithImpl<$Res, _$_CocktailState>
    implements _$$_CocktailStateCopyWith<$Res> {
  __$$_CocktailStateCopyWithImpl(
      _$_CocktailState _value, $Res Function(_$_CocktailState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errorMessage = freezed,
    Object? alcohol = null,
    Object? models = freezed,
  }) {
    return _then(_$_CocktailState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      alcohol: null == alcohol
          ? _value.alcohol
          : alcohol // ignore: cast_nullable_to_non_nullable
              as String,
      models: freezed == models
          ? _value.models
          : models // ignore: cast_nullable_to_non_nullable
              as DrinksDTO?,
    ));
  }
}

/// @nodoc

class _$_CocktailState implements _CocktailState {
  _$_CocktailState(
      {this.status = Status.initial,
      this.errorMessage,
      this.alcohol = '',
      this.models});

  @override
  @JsonKey()
  final Status status;
  @override
  final String? errorMessage;
  @override
  @JsonKey()
  final String alcohol;
  @override
  final DrinksDTO? models;

  @override
  String toString() {
    return 'CocktailState(status: $status, errorMessage: $errorMessage, alcohol: $alcohol, models: $models)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CocktailState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.alcohol, alcohol) || other.alcohol == alcohol) &&
            (identical(other.models, models) || other.models == models));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, errorMessage, alcohol, models);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CocktailStateCopyWith<_$_CocktailState> get copyWith =>
      __$$_CocktailStateCopyWithImpl<_$_CocktailState>(this, _$identity);
}

abstract class _CocktailState implements CocktailState {
  factory _CocktailState(
      {final Status status,
      final String? errorMessage,
      final String alcohol,
      final DrinksDTO? models}) = _$_CocktailState;

  @override
  Status get status;
  @override
  String? get errorMessage;
  @override
  String get alcohol;
  @override
  DrinksDTO? get models;
  @override
  @JsonKey(ignore: true)
  _$$_CocktailStateCopyWith<_$_CocktailState> get copyWith =>
      throw _privateConstructorUsedError;
}
