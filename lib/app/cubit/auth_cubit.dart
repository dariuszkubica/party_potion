import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:party_potion/app/core/enums.dart';
import 'package:party_potion/repositories/auth_repository.dart';

part 'auth_state.dart';

part 'auth_cubit.freezed.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this.authRepository)
      : super(
          const AuthState(
            user: null,
            status: Status.initial,
            errorMessage: '',
          ),
        );

  final AuthRepository authRepository;

  StreamSubscription? _streamSubscription;

  Future<void> creatingAccount() async {
    emit(
      const AuthState(
        user: null,
        isCreatingAccount: true,
      ),
    );
  }

  Future<void> notCreatingAccount() async {
    emit(
      const AuthState(
        user: null,
        isCreatingAccount: false,
      ),
    );
  }

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
      const AuthState(
        user: null,
        status: Status.initial,
        isCreatingAccount: false,
        errorMessage: '',
      ),
    );
    _streamSubscription = authRepository.authStateChanges().listen((user) {
      emit(
        AuthState(
          user: user,
          status: Status.success,
        ),
      );
    })
      ..onError((error) {
        emit(
          AuthState(
            user: null,
            status: Status.error,
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
