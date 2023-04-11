import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepository {
  final FirebaseAuth _firebaseAuth;

  AuthRepository({FirebaseAuth? firebaseAuth})
      : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance;

  StreamSubscription<User?>? _authStateChangesSubscription;

  Future<User?> signUp({
    required String email,
    required String password,
  }) async {
    try {
      UserCredential userCredential =
          await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user;
    } on FirebaseAuthException catch (error) {
      if (error.code == 'weak-password') {
        throw Exception('The password provided is too weak.');
      } else if (error.code == 'email-already-in-use') {
        throw Exception('The account already exists for that email.');
      }
      throw Exception('The email address is badly formatted.');
    } catch (error) {
      throw Exception(error.toString());
    }
  }

  Future<User?> signIn({
    required String email,
    required String password,
  }) async {
    try {
      UserCredential userCredential =
          await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user;
    } on FirebaseAuthException catch (error) {
      if (error.code == 'user-not-found') {
        throw Exception('No user found for that email.');
      } else if (error.code == 'wrong-password') {
        throw Exception('Wrong password provided for that user.');
      }
      throw Exception('The email address is badly formatted.');
    }
  }

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

  Stream<User?> authStateChanges() {
    return _firebaseAuth.authStateChanges();
  }

  void listenAuthStateChanges() {
    _authStateChangesSubscription = authStateChanges().listen((user) {
      throw Exception('Auth state changed: $user');
    });
  }

  void cancelAuthStateChanges() {
    _authStateChangesSubscription?.cancel();
  }
}
