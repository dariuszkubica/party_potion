part of 'auth_cubit.dart';

class AuthState {
  AuthState({
    this.user,
    this.isLoading,
    this.errorMessage = '',
    this.isCreatingAccount = false,
  });

  final User? user;
  final bool? isLoading;
  final String errorMessage;
  bool isCreatingAccount;
}
