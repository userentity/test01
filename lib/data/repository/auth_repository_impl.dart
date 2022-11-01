import 'package:injectable/injectable.dart';
import 'package:test_flutter/data/data_source/firebase_data_source.dart';

import '../../domain/repository/auth_repository.dart';

@Singleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  const AuthRepositoryImpl(this._firebaseDataSource);

  final FirebaseDataSource _firebaseDataSource;

  @override
  Future<String> signIn(
      {required String email, required String password}) async {
    final userId =
        await _firebaseDataSource.signIn(email: email, password: password);
    return userId;
  }

  @override
  Future<String> signUp(
      {required String email, required String password}) async {
    final userId =
        await _firebaseDataSource.signUp(email: email, password: password);
    return userId;
  }

  @override
  Future<void> signOut() async {
    await _firebaseDataSource.signOut();
  }
}
