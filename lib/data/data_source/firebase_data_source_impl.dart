import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

import '../../core/exceptions/exceptions.dart';
import 'firebase_data_source.dart';

@Singleton(as: FirebaseDataSource)
class FirebaseDataSourceImpl implements FirebaseDataSource {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  @override
  Future<String> signIn(
      {required String email, required String password}) async {
    try {
      User? firebaseUser = (await _firebaseAuth.signInWithEmailAndPassword(
              email: email, password: password))
          .user;

      if (firebaseUser == null) throw SignInInvalidCredentialsException();

      return firebaseUser.uid;
    } on FirebaseAuthException catch (exception) {
      if (exception.code == "invalid-email") {
        throw SignInInvalidEmailException();
      }
      throw SignInInvalidCredentialsException();
    }
  }

  @override
  Future<String> signUp(
      {required String email, required String password}) async {
    try {
      User? firebaseUser = (await _firebaseAuth.createUserWithEmailAndPassword(
              email: email, password: password))
          .user;

      if (firebaseUser == null) throw SignUpUserEmptyException();

      return firebaseUser.uid;
    } on FirebaseAuthException catch (exception) {
      if (exception.code == "email-already-in-use") {
        throw SignUpEmailAlreadyInUseException();
      } else if (exception.code == "invalid-email") {
        throw SignUpInvalidEmailException();
      } else if (exception.code == "weak-password") {
        throw SignUpWeakPasswordException();
      } else {
        throw SignUpUserEmptyException();
      }
    }
  }

  @override
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }
}
