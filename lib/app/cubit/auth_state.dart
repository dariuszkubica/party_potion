part of 'auth_cubit.dart';

@immutable
class AuthState {
  const AuthState({
    this.user,
    this.isLoading,
    this.errorMessage = '',
  });

  final User? user;
  final bool? isLoading;
  final String errorMessage;
}
