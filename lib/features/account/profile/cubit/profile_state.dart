part of 'profile_cubit.dart';

@freezed
class ProfileState with _$ProfileState {
  factory ProfileState({
    required ProfileModel profileModel,
    @Default(Status.initial) Status status,
    @Default('') String errorMessage,
  }) = _ProfileState;
}
