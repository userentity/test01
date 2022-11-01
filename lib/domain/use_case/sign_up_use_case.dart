import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../core/exceptions/failure.dart';
import '../entity/user.dart';
import '../repository/auth_repository.dart';
import 'base_use_case.dart';

abstract class SignUpUseCase
    implements BaseUseCase<Future<Either<Failure, User>>, SignUpArgs> {}

@Injectable(as: SignUpUseCase)
class SignUpUseCaseImpl implements SignUpUseCase {
  const SignUpUseCaseImpl(this._authRepository);

  final AuthRepository _authRepository;

  @override
  Future<Either<Failure, User>> call(SignUpArgs args) async {
    try {
      final userId = await _authRepository.signUp(
          email: args.email, password: args.password);

      // In real app here use UserRepository
      final user = User(id: userId);

      return Right(user);
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }
}

class SignUpArgs {
  const SignUpArgs({
    required this.email,
    required this.password,
  });

  final String email;

  final String password;
}
