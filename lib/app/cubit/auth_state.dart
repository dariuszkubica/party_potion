part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    User? user,
    @Default(Status.initial) Status status,
    @Default(false) bool isCreatingAccount,
    @Default('') String errorMessage,
  }) = _AuthState;
}
