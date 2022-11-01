import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../core/exceptions/failure.dart';
import '../repository/auth_repository.dart';
import '../entity/user.dart';
import 'base_use_case.dart';

abstract class SignInUseCase
    implements BaseUseCase<Future<Either<Failure, User>>, SignInArgs> {}

@Injectable(as: SignInUseCase)
class SignInUseCaseImpl implements SignInUseCase {
  const SignInUseCaseImpl(this._authRepository);

  final AuthRepository _authRepository;

  @override
  Future<Either<Failure, User>> call(SignInArgs args) async {
    try {
      final userId = await _authRepository.signIn(
          email: args.email, password: args.password);

      // In real app here use UserRepository
      final user = User(id: userId);

      return Right(user);
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }
}

class SignInArgs {
  const SignInArgs({
    required this.email,
    required this.password,
  });

  final String email;

  final String password;
}
