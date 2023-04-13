part of 'alcohol_list_cubit.dart';

@freezed
class AlcoholListState with _$AlcoholListState {
  factory AlcoholListState({
    @Default(Status.initial) Status status,
    @Default('') String errorMessage,
    @Default([]) List<AlcoholModel> items,
  }) = _AlcoholListState;
}
