import 'package:injectable/injectable.dart';

import '../repository/auth_repository.dart';
import 'base_use_case.dart';

abstract class SignOutUseCase
    implements BaseUseCase<Future<void>, SignOutArgs> {}

@Injectable(as: SignOutUseCase)
class SignOutUseCaseImpl implements SignOutUseCase {
  const SignOutUseCaseImpl(this._authRepository);

  final AuthRepository _authRepository;

  @override
  Future<void> call(SignOutArgs args) async {
    await _authRepository.signOut();
  }
}

class SignOutArgs {}
