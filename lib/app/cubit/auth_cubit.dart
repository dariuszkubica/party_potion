import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:party_potion/repositories/auth_repository.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this.authRepository)
      : super(
          AuthState(
            user: null,
            isLoading: false,
            errorMessage: '',
          ),
        );

  final AuthRepository authRepository;

  StreamSubscription? _streamSubscription;

  Future<void> signUp({
    required String email,
    required String password,
  }) async {
    try {
      await authRepository.signUp(
        email: email,
        password: password,
      );
    } catch (error) {
      emit(AuthState(
        errorMessage: error.toString(),
      ));
    }
  }

  Future<void> signIn({
    required String email,
    required String password,
  }) async {
    try {
      await authRepository.signIn(
        email: email,
        password: password,
      );
    } catch (error) {
      emit(AuthState(
        errorMessage: error.toString(),
      ));
    }
  }

  Future<void> signOut() async {
    authRepository.signOut();
  }

  Future<void> start() async {
    emit(
      AuthState(
        user: null,
        isLoading: true,
        errorMessage: '',
      ),
    );
    _streamSubscription = authRepository.authStateChanges().listen((user) {
      emit(
        AuthState(
          user: user,
          isLoading: false,
          errorMessage: '',
        ),
      );
    })
      ..onError((error) {
        emit(
          AuthState(
            user: null,
            isLoading: false,
            errorMessage: error.toString(),
          ),
        );
      });
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }
}
