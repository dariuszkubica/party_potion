// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'friends_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FriendsListState {
  bool get saved => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  List<FriendModel> get items => throw _privateConstructorUsedError;
  bool get loadingErrorOccured => throw _privateConstructorUsedError;
  bool get removingErrorOccured => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FriendsListStateCopyWith<FriendsListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendsListStateCopyWith<$Res> {
  factory $FriendsListStateCopyWith(
          FriendsListState value, $Res Function(FriendsListState) then) =
      _$FriendsListStateCopyWithImpl<$Res, FriendsListState>;
  @useResult
  $Res call(
      {bool saved,
      String errorMessage,
      List<FriendModel> items,
      bool loadingErrorOccured,
      bool removingErrorOccured});
}

/// @nodoc
class _$FriendsListStateCopyWithImpl<$Res, $Val extends FriendsListState>
    implements $FriendsListStateCopyWith<$Res> {
  _$FriendsListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saved = null,
    Object? errorMessage = null,
    Object? items = null,
    Object? loadingErrorOccured = null,
    Object? removingErrorOccured = null,
  }) {
    return _then(_value.copyWith(
      saved: null == saved
          ? _value.saved
          : saved // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<FriendModel>,
      loadingErrorOccured: null == loadingErrorOccured
          ? _value.loadingErrorOccured
          : loadingErrorOccured // ignore: cast_nullable_to_non_nullable
              as bool,
      removingErrorOccured: null == removingErrorOccured
          ? _value.removingErrorOccured
          : removingErrorOccured // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FriendsListStateCopyWith<$Res>
    implements $FriendsListStateCopyWith<$Res> {
  factory _$$_FriendsListStateCopyWith(
          _$_FriendsListState value, $Res Function(_$_FriendsListState) then) =
      __$$_FriendsListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool saved,
      String errorMessage,
      List<FriendModel> items,
      bool loadingErrorOccured,
      bool removingErrorOccured});
}

/// @nodoc
class __$$_FriendsListStateCopyWithImpl<$Res>
    extends _$FriendsListStateCopyWithImpl<$Res, _$_FriendsListState>
    implements _$$_FriendsListStateCopyWith<$Res> {
  __$$_FriendsListStateCopyWithImpl(
      _$_FriendsListState _value, $Res Function(_$_FriendsListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saved = null,
    Object? errorMessage = null,
    Object? items = null,
    Object? loadingErrorOccured = null,
    Object? removingErrorOccured = null,
  }) {
    return _then(_$_FriendsListState(
      saved: null == saved
          ? _value.saved
          : saved // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<FriendModel>,
      loadingErrorOccured: null == loadingErrorOccured
          ? _value.loadingErrorOccured
          : loadingErrorOccured // ignore: cast_nullable_to_non_nullable
              as bool,
      removingErrorOccured: null == removingErrorOccured
          ? _value.removingErrorOccured
          : removingErrorOccured // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_FriendsListState implements _FriendsListState {
  const _$_FriendsListState(
      {this.saved = false,
      this.errorMessage = '',
      final List<FriendModel> items = const [],
      this.loadingErrorOccured = false,
      this.removingErrorOccured = false})
      : _items = items;

  @override
  @JsonKey()
  final bool saved;
  @override
  @JsonKey()
  final String errorMessage;
  final List<FriendModel> _items;
  @override
  @JsonKey()
  List<FriendModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey()
  final bool loadingErrorOccured;
  @override
  @JsonKey()
  final bool removingErrorOccured;

  @override
  String toString() {
    return 'FriendsListState(saved: $saved, errorMessage: $errorMessage, items: $items, loadingErrorOccured: $loadingErrorOccured, removingErrorOccured: $removingErrorOccured)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FriendsListState &&
            (identical(other.saved, saved) || other.saved == saved) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.loadingErrorOccured, loadingErrorOccured) ||
                other.loadingErrorOccured == loadingErrorOccured) &&
            (identical(other.removingErrorOccured, removingErrorOccured) ||
                other.removingErrorOccured == removingErrorOccured));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      saved,
      errorMessage,
      const DeepCollectionEquality().hash(_items),
      loadingErrorOccured,
      removingErrorOccured);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FriendsListStateCopyWith<_$_FriendsListState> get copyWith =>
      __$$_FriendsListStateCopyWithImpl<_$_FriendsListState>(this, _$identity);
}

abstract class _FriendsListState implements FriendsListState {
  const factory _FriendsListState(
      {final bool saved,
      final String errorMessage,
      final List<FriendModel> items,
      final bool loadingErrorOccured,
      final bool removingErrorOccured}) = _$_FriendsListState;

  @override
  bool get saved;
  @override
  String get errorMessage;
  @override
  List<FriendModel> get items;
  @override
  bool get loadingErrorOccured;
  @override
  bool get removingErrorOccured;
  @override
  @JsonKey(ignore: true)
  _$$_FriendsListStateCopyWith<_$_FriendsListState> get copyWith =>
      throw _privateConstructorUsedError;
}
