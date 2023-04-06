// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_cocktail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchCocktailState {
  Status get status => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  CocktailModel? get model => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchCocktailStateCopyWith<SearchCocktailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchCocktailStateCopyWith<$Res> {
  factory $SearchCocktailStateCopyWith(
          SearchCocktailState value, $Res Function(SearchCocktailState) then) =
      _$SearchCocktailStateCopyWithImpl<$Res, SearchCocktailState>;
  @useResult
  $Res call({Status status, String? errorMessage, CocktailModel? model});

  $CocktailModelCopyWith<$Res>? get model;
}

/// @nodoc
class _$SearchCocktailStateCopyWithImpl<$Res, $Val extends SearchCocktailState>
    implements $SearchCocktailStateCopyWith<$Res> {
  _$SearchCocktailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errorMessage = freezed,
    Object? model = freezed,
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
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as CocktailModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CocktailModelCopyWith<$Res>? get model {
    if (_value.model == null) {
      return null;
    }

    return $CocktailModelCopyWith<$Res>(_value.model!, (value) {
      return _then(_value.copyWith(model: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SearchCocktailStateCopyWith<$Res>
    implements $SearchCocktailStateCopyWith<$Res> {
  factory _$$_SearchCocktailStateCopyWith(_$_SearchCocktailState value,
          $Res Function(_$_SearchCocktailState) then) =
      __$$_SearchCocktailStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Status status, String? errorMessage, CocktailModel? model});

  @override
  $CocktailModelCopyWith<$Res>? get model;
}

/// @nodoc
class __$$_SearchCocktailStateCopyWithImpl<$Res>
    extends _$SearchCocktailStateCopyWithImpl<$Res, _$_SearchCocktailState>
    implements _$$_SearchCocktailStateCopyWith<$Res> {
  __$$_SearchCocktailStateCopyWithImpl(_$_SearchCocktailState _value,
      $Res Function(_$_SearchCocktailState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errorMessage = freezed,
    Object? model = freezed,
  }) {
    return _then(_$_SearchCocktailState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as CocktailModel?,
    ));
  }
}

/// @nodoc

class _$_SearchCocktailState implements _SearchCocktailState {
  _$_SearchCocktailState(
      {this.status = Status.initial, this.errorMessage, this.model});

  @override
  @JsonKey()
  final Status status;
  @override
  final String? errorMessage;
  @override
  final CocktailModel? model;

  @override
  String toString() {
    return 'SearchCocktailState(status: $status, errorMessage: $errorMessage, model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchCocktailState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, errorMessage, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchCocktailStateCopyWith<_$_SearchCocktailState> get copyWith =>
      __$$_SearchCocktailStateCopyWithImpl<_$_SearchCocktailState>(
          this, _$identity);
}

abstract class _SearchCocktailState implements SearchCocktailState {
  factory _SearchCocktailState(
      {final Status status,
      final String? errorMessage,
      final CocktailModel? model}) = _$_SearchCocktailState;

  @override
  Status get status;
  @override
  String? get errorMessage;
  @override
  CocktailModel? get model;
  @override
  @JsonKey(ignore: true)
  _$$_SearchCocktailStateCopyWith<_$_SearchCocktailState> get copyWith =>
      throw _privateConstructorUsedError;
}
