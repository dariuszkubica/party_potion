// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alcohol_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AlcoholModel _$AlcoholModelFromJson(Map<String, dynamic> json) {
  return _AlcoholModel.fromJson(json);
}

/// @nodoc
mixin _$AlcoholModel {
  String get id => throw _privateConstructorUsedError;
  String get alcoholName => throw _privateConstructorUsedError;
  String? get alcoholUrl => throw _privateConstructorUsedError;
  bool get have => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlcoholModelCopyWith<AlcoholModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlcoholModelCopyWith<$Res> {
  factory $AlcoholModelCopyWith(
          AlcoholModel value, $Res Function(AlcoholModel) then) =
      _$AlcoholModelCopyWithImpl<$Res, AlcoholModel>;
  @useResult
  $Res call({String id, String alcoholName, String? alcoholUrl, bool have});
}

/// @nodoc
class _$AlcoholModelCopyWithImpl<$Res, $Val extends AlcoholModel>
    implements $AlcoholModelCopyWith<$Res> {
  _$AlcoholModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? alcoholName = null,
    Object? alcoholUrl = freezed,
    Object? have = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      alcoholName: null == alcoholName
          ? _value.alcoholName
          : alcoholName // ignore: cast_nullable_to_non_nullable
              as String,
      alcoholUrl: freezed == alcoholUrl
          ? _value.alcoholUrl
          : alcoholUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      have: null == have
          ? _value.have
          : have // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AlcoholModelCopyWith<$Res>
    implements $AlcoholModelCopyWith<$Res> {
  factory _$$_AlcoholModelCopyWith(
          _$_AlcoholModel value, $Res Function(_$_AlcoholModel) then) =
      __$$_AlcoholModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String alcoholName, String? alcoholUrl, bool have});
}

/// @nodoc
class __$$_AlcoholModelCopyWithImpl<$Res>
    extends _$AlcoholModelCopyWithImpl<$Res, _$_AlcoholModel>
    implements _$$_AlcoholModelCopyWith<$Res> {
  __$$_AlcoholModelCopyWithImpl(
      _$_AlcoholModel _value, $Res Function(_$_AlcoholModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? alcoholName = null,
    Object? alcoholUrl = freezed,
    Object? have = null,
  }) {
    return _then(_$_AlcoholModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      alcoholName: null == alcoholName
          ? _value.alcoholName
          : alcoholName // ignore: cast_nullable_to_non_nullable
              as String,
      alcoholUrl: freezed == alcoholUrl
          ? _value.alcoholUrl
          : alcoholUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      have: null == have
          ? _value.have
          : have // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AlcoholModel implements _AlcoholModel {
  _$_AlcoholModel(
      {required this.id,
      required this.alcoholName,
      required this.alcoholUrl,
      required this.have});

  factory _$_AlcoholModel.fromJson(Map<String, dynamic> json) =>
      _$$_AlcoholModelFromJson(json);

  @override
  final String id;
  @override
  final String alcoholName;
  @override
  final String? alcoholUrl;
  @override
  final bool have;

  @override
  String toString() {
    return 'AlcoholModel(id: $id, alcoholName: $alcoholName, alcoholUrl: $alcoholUrl, have: $have)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AlcoholModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.alcoholName, alcoholName) ||
                other.alcoholName == alcoholName) &&
            (identical(other.alcoholUrl, alcoholUrl) ||
                other.alcoholUrl == alcoholUrl) &&
            (identical(other.have, have) || other.have == have));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, alcoholName, alcoholUrl, have);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AlcoholModelCopyWith<_$_AlcoholModel> get copyWith =>
      __$$_AlcoholModelCopyWithImpl<_$_AlcoholModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AlcoholModelToJson(
      this,
    );
  }
}

abstract class _AlcoholModel implements AlcoholModel {
  factory _AlcoholModel(
      {required final String id,
      required final String alcoholName,
      required final String? alcoholUrl,
      required final bool have}) = _$_AlcoholModel;

  factory _AlcoholModel.fromJson(Map<String, dynamic> json) =
      _$_AlcoholModel.fromJson;

  @override
  String get id;
  @override
  String get alcoholName;
  @override
  String? get alcoholUrl;
  @override
  bool get have;
  @override
  @JsonKey(ignore: true)
  _$$_AlcoholModelCopyWith<_$_AlcoholModel> get copyWith =>
      throw _privateConstructorUsedError;
}
