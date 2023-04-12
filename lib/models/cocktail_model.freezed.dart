// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cocktail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CocktailModel _$CocktailModelFromJson(Map<String, dynamic> json) {
  return _CocktailModel.fromJson(json);
}

/// @nodoc
mixin _$CocktailModel {
  String get cocktailName => throw _privateConstructorUsedError;
  String? get instructions => throw _privateConstructorUsedError;
  String? get imageURL => throw _privateConstructorUsedError;
  List<IngredientModel>? get ingredientsList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CocktailModelCopyWith<CocktailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CocktailModelCopyWith<$Res> {
  factory $CocktailModelCopyWith(
          CocktailModel value, $Res Function(CocktailModel) then) =
      _$CocktailModelCopyWithImpl<$Res, CocktailModel>;
  @useResult
  $Res call(
      {String cocktailName,
      String? instructions,
      String? imageURL,
      List<IngredientModel>? ingredientsList});
}

/// @nodoc
class _$CocktailModelCopyWithImpl<$Res, $Val extends CocktailModel>
    implements $CocktailModelCopyWith<$Res> {
  _$CocktailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cocktailName = null,
    Object? instructions = freezed,
    Object? imageURL = freezed,
    Object? ingredientsList = freezed,
  }) {
    return _then(_value.copyWith(
      cocktailName: null == cocktailName
          ? _value.cocktailName
          : cocktailName // ignore: cast_nullable_to_non_nullable
              as String,
      instructions: freezed == instructions
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String?,
      imageURL: freezed == imageURL
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String?,
      ingredientsList: freezed == ingredientsList
          ? _value.ingredientsList
          : ingredientsList // ignore: cast_nullable_to_non_nullable
              as List<IngredientModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CocktailModelCopyWith<$Res>
    implements $CocktailModelCopyWith<$Res> {
  factory _$$_CocktailModelCopyWith(
          _$_CocktailModel value, $Res Function(_$_CocktailModel) then) =
      __$$_CocktailModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String cocktailName,
      String? instructions,
      String? imageURL,
      List<IngredientModel>? ingredientsList});
}

/// @nodoc
class __$$_CocktailModelCopyWithImpl<$Res>
    extends _$CocktailModelCopyWithImpl<$Res, _$_CocktailModel>
    implements _$$_CocktailModelCopyWith<$Res> {
  __$$_CocktailModelCopyWithImpl(
      _$_CocktailModel _value, $Res Function(_$_CocktailModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cocktailName = null,
    Object? instructions = freezed,
    Object? imageURL = freezed,
    Object? ingredientsList = freezed,
  }) {
    return _then(_$_CocktailModel(
      cocktailName: null == cocktailName
          ? _value.cocktailName
          : cocktailName // ignore: cast_nullable_to_non_nullable
              as String,
      instructions: freezed == instructions
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String?,
      imageURL: freezed == imageURL
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String?,
      ingredientsList: freezed == ingredientsList
          ? _value._ingredientsList
          : ingredientsList // ignore: cast_nullable_to_non_nullable
              as List<IngredientModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CocktailModel implements _CocktailModel {
  _$_CocktailModel(
      {required this.cocktailName,
      this.instructions = 'Instruction',
      this.imageURL = 'ImageURL',
      final List<IngredientModel>? ingredientsList})
      : _ingredientsList = ingredientsList;

  factory _$_CocktailModel.fromJson(Map<String, dynamic> json) =>
      _$$_CocktailModelFromJson(json);

  @override
  final String cocktailName;
  @override
  @JsonKey()
  final String? instructions;
  @override
  @JsonKey()
  final String? imageURL;
  final List<IngredientModel>? _ingredientsList;
  @override
  List<IngredientModel>? get ingredientsList {
    final value = _ingredientsList;
    if (value == null) return null;
    if (_ingredientsList is EqualUnmodifiableListView) return _ingredientsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CocktailModel(cocktailName: $cocktailName, instructions: $instructions, imageURL: $imageURL, ingredientsList: $ingredientsList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CocktailModel &&
            (identical(other.cocktailName, cocktailName) ||
                other.cocktailName == cocktailName) &&
            (identical(other.instructions, instructions) ||
                other.instructions == instructions) &&
            (identical(other.imageURL, imageURL) ||
                other.imageURL == imageURL) &&
            const DeepCollectionEquality()
                .equals(other._ingredientsList, _ingredientsList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, cocktailName, instructions,
      imageURL, const DeepCollectionEquality().hash(_ingredientsList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CocktailModelCopyWith<_$_CocktailModel> get copyWith =>
      __$$_CocktailModelCopyWithImpl<_$_CocktailModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CocktailModelToJson(
      this,
    );
  }
}

abstract class _CocktailModel implements CocktailModel {
  factory _CocktailModel(
      {required final String cocktailName,
      final String? instructions,
      final String? imageURL,
      final List<IngredientModel>? ingredientsList}) = _$_CocktailModel;

  factory _CocktailModel.fromJson(Map<String, dynamic> json) =
      _$_CocktailModel.fromJson;

  @override
  String get cocktailName;
  @override
  String? get instructions;
  @override
  String? get imageURL;
  @override
  List<IngredientModel>? get ingredientsList;
  @override
  @JsonKey(ignore: true)
  _$$_CocktailModelCopyWith<_$_CocktailModel> get copyWith =>
      throw _privateConstructorUsedError;
}
