// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cocktail_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CocktailsDto _$CocktailsDtoFromJson(Map<String, dynamic> json) {
  return _CocktailsDto.fromJson(json);
}

/// @nodoc
mixin _$CocktailsDto {
  List<CocktailDto> get drinks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CocktailsDtoCopyWith<CocktailsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CocktailsDtoCopyWith<$Res> {
  factory $CocktailsDtoCopyWith(
          CocktailsDto value, $Res Function(CocktailsDto) then) =
      _$CocktailsDtoCopyWithImpl<$Res, CocktailsDto>;
  @useResult
  $Res call({List<CocktailDto> drinks});
}

/// @nodoc
class _$CocktailsDtoCopyWithImpl<$Res, $Val extends CocktailsDto>
    implements $CocktailsDtoCopyWith<$Res> {
  _$CocktailsDtoCopyWithImpl(this._value, this._then);

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
              as List<CocktailDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CocktailsDtoCopyWith<$Res>
    implements $CocktailsDtoCopyWith<$Res> {
  factory _$$_CocktailsDtoCopyWith(
          _$_CocktailsDto value, $Res Function(_$_CocktailsDto) then) =
      __$$_CocktailsDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CocktailDto> drinks});
}

/// @nodoc
class __$$_CocktailsDtoCopyWithImpl<$Res>
    extends _$CocktailsDtoCopyWithImpl<$Res, _$_CocktailsDto>
    implements _$$_CocktailsDtoCopyWith<$Res> {
  __$$_CocktailsDtoCopyWithImpl(
      _$_CocktailsDto _value, $Res Function(_$_CocktailsDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? drinks = null,
  }) {
    return _then(_$_CocktailsDto(
      drinks: null == drinks
          ? _value._drinks
          : drinks // ignore: cast_nullable_to_non_nullable
              as List<CocktailDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CocktailsDto implements _CocktailsDto {
  const _$_CocktailsDto({required final List<CocktailDto> drinks})
      : _drinks = drinks;

  factory _$_CocktailsDto.fromJson(Map<String, dynamic> json) =>
      _$$_CocktailsDtoFromJson(json);

  final List<CocktailDto> _drinks;
  @override
  List<CocktailDto> get drinks {
    if (_drinks is EqualUnmodifiableListView) return _drinks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_drinks);
  }

  @override
  String toString() {
    return 'CocktailsDto(drinks: $drinks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CocktailsDto &&
            const DeepCollectionEquality().equals(other._drinks, _drinks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_drinks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CocktailsDtoCopyWith<_$_CocktailsDto> get copyWith =>
      __$$_CocktailsDtoCopyWithImpl<_$_CocktailsDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CocktailsDtoToJson(
      this,
    );
  }
}

abstract class _CocktailsDto implements CocktailsDto {
  const factory _CocktailsDto({required final List<CocktailDto> drinks}) =
      _$_CocktailsDto;

  factory _CocktailsDto.fromJson(Map<String, dynamic> json) =
      _$_CocktailsDto.fromJson;

  @override
  List<CocktailDto> get drinks;
  @override
  @JsonKey(ignore: true)
  _$$_CocktailsDtoCopyWith<_$_CocktailsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

CocktailDto _$CocktailDtoFromJson(Map<String, dynamic> json) {
  return _CocktailDto.fromJson(json);
}

/// @nodoc
mixin _$CocktailDto {
  String? get idDrink => throw _privateConstructorUsedError;
  String? get strDrink => throw _privateConstructorUsedError;
  String? get strTags => throw _privateConstructorUsedError;
  String? get strCategory => throw _privateConstructorUsedError;
  String? get strIba => throw _privateConstructorUsedError;
  String? get strAlcoholic => throw _privateConstructorUsedError;
  String? get strGlass => throw _privateConstructorUsedError;
  String? get strInstructions => throw _privateConstructorUsedError;
  String? get strInstructionsDe => throw _privateConstructorUsedError;
  String? get strInstructionsIt => throw _privateConstructorUsedError;
  String? get strDrinkThumb => throw _privateConstructorUsedError;
  String? get strIngredient1 => throw _privateConstructorUsedError;
  String? get strIngredient2 => throw _privateConstructorUsedError;
  String? get strIngredient3 => throw _privateConstructorUsedError;
  String? get strIngredient4 => throw _privateConstructorUsedError;
  String? get strMeasure1 => throw _privateConstructorUsedError;
  String? get strMeasure2 => throw _privateConstructorUsedError;
  String? get strMeasure3 => throw _privateConstructorUsedError;
  String? get strImageSource => throw _privateConstructorUsedError;
  String? get strImageAttribution => throw _privateConstructorUsedError;
  String? get strCreativeCommonsConfirmed => throw _privateConstructorUsedError;
  DateTime? get dateModified => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CocktailDtoCopyWith<CocktailDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CocktailDtoCopyWith<$Res> {
  factory $CocktailDtoCopyWith(
          CocktailDto value, $Res Function(CocktailDto) then) =
      _$CocktailDtoCopyWithImpl<$Res, CocktailDto>;
  @useResult
  $Res call(
      {String? idDrink,
      String? strDrink,
      String? strTags,
      String? strCategory,
      String? strIba,
      String? strAlcoholic,
      String? strGlass,
      String? strInstructions,
      String? strInstructionsDe,
      String? strInstructionsIt,
      String? strDrinkThumb,
      String? strIngredient1,
      String? strIngredient2,
      String? strIngredient3,
      String? strIngredient4,
      String? strMeasure1,
      String? strMeasure2,
      String? strMeasure3,
      String? strImageSource,
      String? strImageAttribution,
      String? strCreativeCommonsConfirmed,
      DateTime? dateModified});
}

/// @nodoc
class _$CocktailDtoCopyWithImpl<$Res, $Val extends CocktailDto>
    implements $CocktailDtoCopyWith<$Res> {
  _$CocktailDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idDrink = freezed,
    Object? strDrink = freezed,
    Object? strTags = freezed,
    Object? strCategory = freezed,
    Object? strIba = freezed,
    Object? strAlcoholic = freezed,
    Object? strGlass = freezed,
    Object? strInstructions = freezed,
    Object? strInstructionsDe = freezed,
    Object? strInstructionsIt = freezed,
    Object? strDrinkThumb = freezed,
    Object? strIngredient1 = freezed,
    Object? strIngredient2 = freezed,
    Object? strIngredient3 = freezed,
    Object? strIngredient4 = freezed,
    Object? strMeasure1 = freezed,
    Object? strMeasure2 = freezed,
    Object? strMeasure3 = freezed,
    Object? strImageSource = freezed,
    Object? strImageAttribution = freezed,
    Object? strCreativeCommonsConfirmed = freezed,
    Object? dateModified = freezed,
  }) {
    return _then(_value.copyWith(
      idDrink: freezed == idDrink
          ? _value.idDrink
          : idDrink // ignore: cast_nullable_to_non_nullable
              as String?,
      strDrink: freezed == strDrink
          ? _value.strDrink
          : strDrink // ignore: cast_nullable_to_non_nullable
              as String?,
      strTags: freezed == strTags
          ? _value.strTags
          : strTags // ignore: cast_nullable_to_non_nullable
              as String?,
      strCategory: freezed == strCategory
          ? _value.strCategory
          : strCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      strIba: freezed == strIba
          ? _value.strIba
          : strIba // ignore: cast_nullable_to_non_nullable
              as String?,
      strAlcoholic: freezed == strAlcoholic
          ? _value.strAlcoholic
          : strAlcoholic // ignore: cast_nullable_to_non_nullable
              as String?,
      strGlass: freezed == strGlass
          ? _value.strGlass
          : strGlass // ignore: cast_nullable_to_non_nullable
              as String?,
      strInstructions: freezed == strInstructions
          ? _value.strInstructions
          : strInstructions // ignore: cast_nullable_to_non_nullable
              as String?,
      strInstructionsDe: freezed == strInstructionsDe
          ? _value.strInstructionsDe
          : strInstructionsDe // ignore: cast_nullable_to_non_nullable
              as String?,
      strInstructionsIt: freezed == strInstructionsIt
          ? _value.strInstructionsIt
          : strInstructionsIt // ignore: cast_nullable_to_non_nullable
              as String?,
      strDrinkThumb: freezed == strDrinkThumb
          ? _value.strDrinkThumb
          : strDrinkThumb // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient1: freezed == strIngredient1
          ? _value.strIngredient1
          : strIngredient1 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient2: freezed == strIngredient2
          ? _value.strIngredient2
          : strIngredient2 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient3: freezed == strIngredient3
          ? _value.strIngredient3
          : strIngredient3 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient4: freezed == strIngredient4
          ? _value.strIngredient4
          : strIngredient4 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure1: freezed == strMeasure1
          ? _value.strMeasure1
          : strMeasure1 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure2: freezed == strMeasure2
          ? _value.strMeasure2
          : strMeasure2 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure3: freezed == strMeasure3
          ? _value.strMeasure3
          : strMeasure3 // ignore: cast_nullable_to_non_nullable
              as String?,
      strImageSource: freezed == strImageSource
          ? _value.strImageSource
          : strImageSource // ignore: cast_nullable_to_non_nullable
              as String?,
      strImageAttribution: freezed == strImageAttribution
          ? _value.strImageAttribution
          : strImageAttribution // ignore: cast_nullable_to_non_nullable
              as String?,
      strCreativeCommonsConfirmed: freezed == strCreativeCommonsConfirmed
          ? _value.strCreativeCommonsConfirmed
          : strCreativeCommonsConfirmed // ignore: cast_nullable_to_non_nullable
              as String?,
      dateModified: freezed == dateModified
          ? _value.dateModified
          : dateModified // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CocktailDtoCopyWith<$Res>
    implements $CocktailDtoCopyWith<$Res> {
  factory _$$_CocktailDtoCopyWith(
          _$_CocktailDto value, $Res Function(_$_CocktailDto) then) =
      __$$_CocktailDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? idDrink,
      String? strDrink,
      String? strTags,
      String? strCategory,
      String? strIba,
      String? strAlcoholic,
      String? strGlass,
      String? strInstructions,
      String? strInstructionsDe,
      String? strInstructionsIt,
      String? strDrinkThumb,
      String? strIngredient1,
      String? strIngredient2,
      String? strIngredient3,
      String? strIngredient4,
      String? strMeasure1,
      String? strMeasure2,
      String? strMeasure3,
      String? strImageSource,
      String? strImageAttribution,
      String? strCreativeCommonsConfirmed,
      DateTime? dateModified});
}

/// @nodoc
class __$$_CocktailDtoCopyWithImpl<$Res>
    extends _$CocktailDtoCopyWithImpl<$Res, _$_CocktailDto>
    implements _$$_CocktailDtoCopyWith<$Res> {
  __$$_CocktailDtoCopyWithImpl(
      _$_CocktailDto _value, $Res Function(_$_CocktailDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idDrink = freezed,
    Object? strDrink = freezed,
    Object? strTags = freezed,
    Object? strCategory = freezed,
    Object? strIba = freezed,
    Object? strAlcoholic = freezed,
    Object? strGlass = freezed,
    Object? strInstructions = freezed,
    Object? strInstructionsDe = freezed,
    Object? strInstructionsIt = freezed,
    Object? strDrinkThumb = freezed,
    Object? strIngredient1 = freezed,
    Object? strIngredient2 = freezed,
    Object? strIngredient3 = freezed,
    Object? strIngredient4 = freezed,
    Object? strMeasure1 = freezed,
    Object? strMeasure2 = freezed,
    Object? strMeasure3 = freezed,
    Object? strImageSource = freezed,
    Object? strImageAttribution = freezed,
    Object? strCreativeCommonsConfirmed = freezed,
    Object? dateModified = freezed,
  }) {
    return _then(_$_CocktailDto(
      idDrink: freezed == idDrink
          ? _value.idDrink
          : idDrink // ignore: cast_nullable_to_non_nullable
              as String?,
      strDrink: freezed == strDrink
          ? _value.strDrink
          : strDrink // ignore: cast_nullable_to_non_nullable
              as String?,
      strTags: freezed == strTags
          ? _value.strTags
          : strTags // ignore: cast_nullable_to_non_nullable
              as String?,
      strCategory: freezed == strCategory
          ? _value.strCategory
          : strCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      strIba: freezed == strIba
          ? _value.strIba
          : strIba // ignore: cast_nullable_to_non_nullable
              as String?,
      strAlcoholic: freezed == strAlcoholic
          ? _value.strAlcoholic
          : strAlcoholic // ignore: cast_nullable_to_non_nullable
              as String?,
      strGlass: freezed == strGlass
          ? _value.strGlass
          : strGlass // ignore: cast_nullable_to_non_nullable
              as String?,
      strInstructions: freezed == strInstructions
          ? _value.strInstructions
          : strInstructions // ignore: cast_nullable_to_non_nullable
              as String?,
      strInstructionsDe: freezed == strInstructionsDe
          ? _value.strInstructionsDe
          : strInstructionsDe // ignore: cast_nullable_to_non_nullable
              as String?,
      strInstructionsIt: freezed == strInstructionsIt
          ? _value.strInstructionsIt
          : strInstructionsIt // ignore: cast_nullable_to_non_nullable
              as String?,
      strDrinkThumb: freezed == strDrinkThumb
          ? _value.strDrinkThumb
          : strDrinkThumb // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient1: freezed == strIngredient1
          ? _value.strIngredient1
          : strIngredient1 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient2: freezed == strIngredient2
          ? _value.strIngredient2
          : strIngredient2 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient3: freezed == strIngredient3
          ? _value.strIngredient3
          : strIngredient3 // ignore: cast_nullable_to_non_nullable
              as String?,
      strIngredient4: freezed == strIngredient4
          ? _value.strIngredient4
          : strIngredient4 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure1: freezed == strMeasure1
          ? _value.strMeasure1
          : strMeasure1 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure2: freezed == strMeasure2
          ? _value.strMeasure2
          : strMeasure2 // ignore: cast_nullable_to_non_nullable
              as String?,
      strMeasure3: freezed == strMeasure3
          ? _value.strMeasure3
          : strMeasure3 // ignore: cast_nullable_to_non_nullable
              as String?,
      strImageSource: freezed == strImageSource
          ? _value.strImageSource
          : strImageSource // ignore: cast_nullable_to_non_nullable
              as String?,
      strImageAttribution: freezed == strImageAttribution
          ? _value.strImageAttribution
          : strImageAttribution // ignore: cast_nullable_to_non_nullable
              as String?,
      strCreativeCommonsConfirmed: freezed == strCreativeCommonsConfirmed
          ? _value.strCreativeCommonsConfirmed
          : strCreativeCommonsConfirmed // ignore: cast_nullable_to_non_nullable
              as String?,
      dateModified: freezed == dateModified
          ? _value.dateModified
          : dateModified // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CocktailDto implements _CocktailDto {
  const _$_CocktailDto(
      {this.idDrink,
      required this.strDrink,
      this.strTags,
      this.strCategory,
      this.strIba,
      this.strAlcoholic,
      this.strGlass,
      required this.strInstructions,
      this.strInstructionsDe,
      this.strInstructionsIt,
      required this.strDrinkThumb,
      this.strIngredient1,
      this.strIngredient2,
      this.strIngredient3,
      this.strIngredient4,
      this.strMeasure1,
      this.strMeasure2,
      this.strMeasure3,
      this.strImageSource,
      this.strImageAttribution,
      this.strCreativeCommonsConfirmed,
      this.dateModified});

  factory _$_CocktailDto.fromJson(Map<String, dynamic> json) =>
      _$$_CocktailDtoFromJson(json);

  @override
  final String? idDrink;
  @override
  final String? strDrink;
  @override
  final String? strTags;
  @override
  final String? strCategory;
  @override
  final String? strIba;
  @override
  final String? strAlcoholic;
  @override
  final String? strGlass;
  @override
  final String? strInstructions;
  @override
  final String? strInstructionsDe;
  @override
  final String? strInstructionsIt;
  @override
  final String? strDrinkThumb;
  @override
  final String? strIngredient1;
  @override
  final String? strIngredient2;
  @override
  final String? strIngredient3;
  @override
  final String? strIngredient4;
  @override
  final String? strMeasure1;
  @override
  final String? strMeasure2;
  @override
  final String? strMeasure3;
  @override
  final String? strImageSource;
  @override
  final String? strImageAttribution;
  @override
  final String? strCreativeCommonsConfirmed;
  @override
  final DateTime? dateModified;

  @override
  String toString() {
    return 'CocktailDto(idDrink: $idDrink, strDrink: $strDrink, strTags: $strTags, strCategory: $strCategory, strIba: $strIba, strAlcoholic: $strAlcoholic, strGlass: $strGlass, strInstructions: $strInstructions, strInstructionsDe: $strInstructionsDe, strInstructionsIt: $strInstructionsIt, strDrinkThumb: $strDrinkThumb, strIngredient1: $strIngredient1, strIngredient2: $strIngredient2, strIngredient3: $strIngredient3, strIngredient4: $strIngredient4, strMeasure1: $strMeasure1, strMeasure2: $strMeasure2, strMeasure3: $strMeasure3, strImageSource: $strImageSource, strImageAttribution: $strImageAttribution, strCreativeCommonsConfirmed: $strCreativeCommonsConfirmed, dateModified: $dateModified)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CocktailDto &&
            (identical(other.idDrink, idDrink) || other.idDrink == idDrink) &&
            (identical(other.strDrink, strDrink) ||
                other.strDrink == strDrink) &&
            (identical(other.strTags, strTags) || other.strTags == strTags) &&
            (identical(other.strCategory, strCategory) ||
                other.strCategory == strCategory) &&
            (identical(other.strIba, strIba) || other.strIba == strIba) &&
            (identical(other.strAlcoholic, strAlcoholic) ||
                other.strAlcoholic == strAlcoholic) &&
            (identical(other.strGlass, strGlass) ||
                other.strGlass == strGlass) &&
            (identical(other.strInstructions, strInstructions) ||
                other.strInstructions == strInstructions) &&
            (identical(other.strInstructionsDe, strInstructionsDe) ||
                other.strInstructionsDe == strInstructionsDe) &&
            (identical(other.strInstructionsIt, strInstructionsIt) ||
                other.strInstructionsIt == strInstructionsIt) &&
            (identical(other.strDrinkThumb, strDrinkThumb) ||
                other.strDrinkThumb == strDrinkThumb) &&
            (identical(other.strIngredient1, strIngredient1) ||
                other.strIngredient1 == strIngredient1) &&
            (identical(other.strIngredient2, strIngredient2) ||
                other.strIngredient2 == strIngredient2) &&
            (identical(other.strIngredient3, strIngredient3) ||
                other.strIngredient3 == strIngredient3) &&
            (identical(other.strIngredient4, strIngredient4) ||
                other.strIngredient4 == strIngredient4) &&
            (identical(other.strMeasure1, strMeasure1) ||
                other.strMeasure1 == strMeasure1) &&
            (identical(other.strMeasure2, strMeasure2) ||
                other.strMeasure2 == strMeasure2) &&
            (identical(other.strMeasure3, strMeasure3) ||
                other.strMeasure3 == strMeasure3) &&
            (identical(other.strImageSource, strImageSource) ||
                other.strImageSource == strImageSource) &&
            (identical(other.strImageAttribution, strImageAttribution) ||
                other.strImageAttribution == strImageAttribution) &&
            (identical(other.strCreativeCommonsConfirmed,
                    strCreativeCommonsConfirmed) ||
                other.strCreativeCommonsConfirmed ==
                    strCreativeCommonsConfirmed) &&
            (identical(other.dateModified, dateModified) ||
                other.dateModified == dateModified));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        idDrink,
        strDrink,
        strTags,
        strCategory,
        strIba,
        strAlcoholic,
        strGlass,
        strInstructions,
        strInstructionsDe,
        strInstructionsIt,
        strDrinkThumb,
        strIngredient1,
        strIngredient2,
        strIngredient3,
        strIngredient4,
        strMeasure1,
        strMeasure2,
        strMeasure3,
        strImageSource,
        strImageAttribution,
        strCreativeCommonsConfirmed,
        dateModified
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CocktailDtoCopyWith<_$_CocktailDto> get copyWith =>
      __$$_CocktailDtoCopyWithImpl<_$_CocktailDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CocktailDtoToJson(
      this,
    );
  }
}

abstract class _CocktailDto implements CocktailDto {
  const factory _CocktailDto(
      {final String? idDrink,
      required final String? strDrink,
      final String? strTags,
      final String? strCategory,
      final String? strIba,
      final String? strAlcoholic,
      final String? strGlass,
      required final String? strInstructions,
      final String? strInstructionsDe,
      final String? strInstructionsIt,
      required final String? strDrinkThumb,
      final String? strIngredient1,
      final String? strIngredient2,
      final String? strIngredient3,
      final String? strIngredient4,
      final String? strMeasure1,
      final String? strMeasure2,
      final String? strMeasure3,
      final String? strImageSource,
      final String? strImageAttribution,
      final String? strCreativeCommonsConfirmed,
      final DateTime? dateModified}) = _$_CocktailDto;

  factory _CocktailDto.fromJson(Map<String, dynamic> json) =
      _$_CocktailDto.fromJson;

  @override
  String? get idDrink;
  @override
  String? get strDrink;
  @override
  String? get strTags;
  @override
  String? get strCategory;
  @override
  String? get strIba;
  @override
  String? get strAlcoholic;
  @override
  String? get strGlass;
  @override
  String? get strInstructions;
  @override
  String? get strInstructionsDe;
  @override
  String? get strInstructionsIt;
  @override
  String? get strDrinkThumb;
  @override
  String? get strIngredient1;
  @override
  String? get strIngredient2;
  @override
  String? get strIngredient3;
  @override
  String? get strIngredient4;
  @override
  String? get strMeasure1;
  @override
  String? get strMeasure2;
  @override
  String? get strMeasure3;
  @override
  String? get strImageSource;
  @override
  String? get strImageAttribution;
  @override
  String? get strCreativeCommonsConfirmed;
  @override
  DateTime? get dateModified;
  @override
  @JsonKey(ignore: true)
  _$$_CocktailDtoCopyWith<_$_CocktailDto> get copyWith =>
      throw _privateConstructorUsedError;
}
