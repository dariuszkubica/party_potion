part of 'alcohol_list_cubit.dart';

@freezed
class AlcoholListState with _$AlcoholListState {
  factory AlcoholListState({
    @Default(Status.initial) Status status,
    String? errorMessage,
  }) = _AlcoholListState;
}
