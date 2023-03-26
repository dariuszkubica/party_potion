// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'drinks_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DrinksDTO _$DrinksDTOFromJson(Map<String, dynamic> json) {
  return _DrinksDTO.fromJson(json);
}

/// @nodoc
mixin _$DrinksDTO {
  List<DrinkDTO> get drinks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DrinksDTOCopyWith<DrinksDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrinksDTOCopyWith<$Res> {
  factory $DrinksDTOCopyWith(DrinksDTO value, $Res Function(DrinksDTO) then) =
      _$DrinksDTOCopyWithImpl<$Res, DrinksDTO>;
  @useResult
  $Res call({List<DrinkDTO> drinks});
}

/// @nodoc
class _$DrinksDTOCopyWithImpl<$Res, $Val extends DrinksDTO>
    implements $DrinksDTOCopyWith<$Res> {
  _$DrinksDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? drinks = null,
  }) {
    return _then(_value.copyWith(
      drinks: null == drinks
          ? _value.drinks
          : drinks // ignore: cast_nullable_to_non_nullable
              as List<DrinkDTO>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DrinksDTOCopyWith<$Res> implements $DrinksDTOCopyWith<$Res> {
  factory _$$_DrinksDTOCopyWith(
          _$_DrinksDTO value, $Res Function(_$_DrinksDTO) then) =
      __$$_DrinksDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DrinkDTO> drinks});
}

/// @nodoc
class __$$_DrinksDTOCopyWithImpl<$Res>
    extends _$DrinksDTOCopyWithImpl<$Res, _$_DrinksDTO>
    implements _$$_DrinksDTOCopyWith<$Res> {
  __$$_DrinksDTOCopyWithImpl(
      _$_DrinksDTO _value, $Res Function(_$_DrinksDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? drinks = null,
  }) {
    return _then(_$_DrinksDTO(
      drinks: null == drinks
          ? _value._drinks
          : drinks // ignore: cast_nullable_to_non_nullable
              as List<DrinkDTO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DrinksDTO implements _DrinksDTO {
  const _$_DrinksDTO({required final List<DrinkDTO> drinks}) : _drinks = drinks;

  factory _$_DrinksDTO.fromJson(Map<String, dynamic> json) =>
      _$$_DrinksDTOFromJson(json);

  final List<DrinkDTO> _drinks;
  @override
  List<DrinkDTO> get drinks {
    if (_drinks is EqualUnmodifiableListView) return _drinks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_drinks);
  }

  @override
  String toString() {
    return 'DrinksDTO(drinks: $drinks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DrinksDTO &&
            const DeepCollectionEquality().equals(other._drinks, _drinks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_drinks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DrinksDTOCopyWith<_$_DrinksDTO> get copyWith =>
      __$$_DrinksDTOCopyWithImpl<_$_DrinksDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DrinksDTOToJson(
      this,
    );
  }
}

abstract class _DrinksDTO implements DrinksDTO {
  const factory _DrinksDTO({required final List<DrinkDTO> drinks}) =
      _$_DrinksDTO;

  factory _DrinksDTO.fromJson(Map<String, dynamic> json) =
      _$_DrinksDTO.fromJson;

  @override
  List<DrinkDTO> get drinks;
  @override
  @JsonKey(ignore: true)
  _$$_DrinksDTOCopyWith<_$_DrinksDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

DrinkDTO _$DrinkDTOFromJson(Map<String, dynamic> json) {
  return _DrinkDTO.fromJson(json);
}

/// @nodoc
mixin _$DrinkDTO {
  String get strDrink => throw _privateConstructorUsedError;
  String? get strDrinkThumb => throw _privateConstructorUsedError;
  String? get idDrink => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DrinkDTOCopyWith<DrinkDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrinkDTOCopyWith<$Res> {
  factory $DrinkDTOCopyWith(DrinkDTO value, $Res Function(DrinkDTO) then) =
      _$DrinkDTOCopyWithImpl<$Res, DrinkDTO>;
  @useResult
  $Res call({String strDrink, String? strDrinkThumb, String? idDrink});
}

/// @nodoc
class _$DrinkDTOCopyWithImpl<$Res, $Val extends DrinkDTO>
    implements $DrinkDTOCopyWith<$Res> {
  _$DrinkDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? strDrink = null,
    Object? strDrinkThumb = freezed,
    Object? idDrink = freezed,
  }) {
    return _then(_value.copyWith(
      strDrink: null == strDrink
          ? _value.strDrink
          : strDrink // ignore: cast_nullable_to_non_nullable
              as String,
      strDrinkThumb: freezed == strDrinkThumb
          ? _value.strDrinkThumb
          : strDrinkThumb // ignore: cast_nullable_to_non_nullable
              as String?,
      idDrink: freezed == idDrink
          ? _value.idDrink
          : idDrink // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DrinkDTOCopyWith<$Res> implements $DrinkDTOCopyWith<$Res> {
  factory _$$_DrinkDTOCopyWith(
          _$_DrinkDTO value, $Res Function(_$_DrinkDTO) then) =
      __$$_DrinkDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String strDrink, String? strDrinkThumb, String? idDrink});
}

/// @nodoc
class __$$_DrinkDTOCopyWithImpl<$Res>
    extends _$DrinkDTOCopyWithImpl<$Res, _$_DrinkDTO>
    implements _$$_DrinkDTOCopyWith<$Res> {
  __$$_DrinkDTOCopyWithImpl(
      _$_DrinkDTO _value, $Res Function(_$_DrinkDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? strDrink = null,
    Object? strDrinkThumb = freezed,
    Object? idDrink = freezed,
  }) {
    return _then(_$_DrinkDTO(
      strDrink: null == strDrink
          ? _value.strDrink
          : strDrink // ignore: cast_nullable_to_non_nullable
              as String,
      strDrinkThumb: freezed == strDrinkThumb
          ? _value.strDrinkThumb
          : strDrinkThumb // ignore: cast_nullable_to_non_nullable
              as String?,
      idDrink: freezed == idDrink
          ? _value.idDrink
          : idDrink // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DrinkDTO implements _DrinkDTO {
  const _$_DrinkDTO({required this.strDrink, this.strDrinkThumb, this.idDrink});

  factory _$_DrinkDTO.fromJson(Map<String, dynamic> json) =>
      _$$_DrinkDTOFromJson(json);

  @override
  final String strDrink;
  @override
  final String? strDrinkThumb;
  @override
  final String? idDrink;

  @override
  String toString() {
    return 'DrinkDTO(strDrink: $strDrink, strDrinkThumb: $strDrinkThumb, idDrink: $idDrink)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DrinkDTO &&
            (identical(other.strDrink, strDrink) ||
                other.strDrink == strDrink) &&
            (identical(other.strDrinkThumb, strDrinkThumb) ||
                other.strDrinkThumb == strDrinkThumb) &&
            (identical(other.idDrink, idDrink) || other.idDrink == idDrink));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, strDrink, strDrinkThumb, idDrink);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DrinkDTOCopyWith<_$_DrinkDTO> get copyWith =>
      __$$_DrinkDTOCopyWithImpl<_$_DrinkDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DrinkDTOToJson(
      this,
    );
  }
}

abstract class _DrinkDTO implements DrinkDTO {
  const factory _DrinkDTO(
      {required final String strDrink,
      final String? strDrinkThumb,
      final String? idDrink}) = _$_DrinkDTO;

  factory _DrinkDTO.fromJson(Map<String, dynamic> json) = _$_DrinkDTO.fromJson;

  @override
  String get strDrink;
  @override
  String? get strDrinkThumb;
  @override
  String? get idDrink;
  @override
  @JsonKey(ignore: true)
  _$$_DrinkDTOCopyWith<_$_DrinkDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
