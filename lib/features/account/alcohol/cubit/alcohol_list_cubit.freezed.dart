// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alcohol_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AlcoholListState {
  Status get status => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  List<AlcoholModel> get items => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AlcoholListStateCopyWith<AlcoholListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlcoholListStateCopyWith<$Res> {
  factory $AlcoholListStateCopyWith(
          AlcoholListState value, $Res Function(AlcoholListState) then) =
      _$AlcoholListStateCopyWithImpl<$Res, AlcoholListState>;
  @useResult
  $Res call({Status status, String errorMessage, List<AlcoholModel> items});
}

/// @nodoc
class _$AlcoholListStateCopyWithImpl<$Res, $Val extends AlcoholListState>
    implements $AlcoholListStateCopyWith<$Res> {
  _$AlcoholListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errorMessage = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<AlcoholModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AlcoholListStateCopyWith<$Res>
    implements $AlcoholListStateCopyWith<$Res> {
  factory _$$_AlcoholListStateCopyWith(
          _$_AlcoholListState value, $Res Function(_$_AlcoholListState) then) =
      __$$_AlcoholListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Status status, String errorMessage, List<AlcoholModel> items});
}

/// @nodoc
class __$$_AlcoholListStateCopyWithImpl<$Res>
    extends _$AlcoholListStateCopyWithImpl<$Res, _$_AlcoholListState>
    implements _$$_AlcoholListStateCopyWith<$Res> {
  __$$_AlcoholListStateCopyWithImpl(
      _$_AlcoholListState _value, $Res Function(_$_AlcoholListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errorMessage = null,
    Object? items = null,
  }) {
    return _then(_$_AlcoholListState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<AlcoholModel>,
    ));
  }
}

/// @nodoc

class _$_AlcoholListState implements _AlcoholListState {
  _$_AlcoholListState(
      {this.status = Status.initial,
      this.errorMessage = '',
      final List<AlcoholModel> items = const []})
      : _items = items;

  @override
  @JsonKey()
  final Status status;
  @override
  @JsonKey()
  final String errorMessage;
  final List<AlcoholModel> _items;
  @override
  @JsonKey()
  List<AlcoholModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'AlcoholListState(status: $status, errorMessage: $errorMessage, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AlcoholListState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, errorMessage,
      const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AlcoholListStateCopyWith<_$_AlcoholListState> get copyWith =>
      __$$_AlcoholListStateCopyWithImpl<_$_AlcoholListState>(this, _$identity);
}

abstract class _AlcoholListState implements AlcoholListState {
  factory _AlcoholListState(
      {final Status status,
      final String errorMessage,
      final List<AlcoholModel> items}) = _$_AlcoholListState;

  @override
  Status get status;
  @override
  String get errorMessage;
  @override
  List<AlcoholModel> get items;
  @override
  @JsonKey(ignore: true)
  _$$_AlcoholListStateCopyWith<_$_AlcoholListState> get copyWith =>
      throw _privateConstructorUsedError;
}
