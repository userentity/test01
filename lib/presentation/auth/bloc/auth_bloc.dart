import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/use_case/sign_in_use_case.dart';
import '../../../domain/use_case/sign_up_use_case.dart';
import 'auth_event.dart';
import 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this._signInUseCase, this._signUpUseCase)
      : super(const AuthInitial()) {
    on<AuthSignInPressed>((event, emit) => _onAuthSignInPressed(event, emit));

    on<AuthSignUpPressed>((event, emit) => _onAuthSignUpPressed(event, emit));
  }

  final SignInUseCase _signInUseCase;
  final SignUpUseCase _signUpUseCase;

  Future<void> _onAuthSignInPressed(
      AuthSignInPressed event, Emitter<AuthState> emit) async {
    emit(const AuthLoading());
    final result = await _signInUseCase(
        SignInArgs(email: event.email, password: event.password));
    result.fold(
      (failure) => emit(AuthError(failure.message)),
      (_) => emit(const AuthSuccess()),
    );
  }

  Future<void> _onAuthSignUpPressed(
      AuthSignUpPressed event, Emitter<AuthState> emit) async {
    emit(const AuthLoading());
    final result = await _signUpUseCase(
        SignUpArgs(email: event.email, password: event.password));
    result.fold(
      (failure) => emit(AuthError(failure.message)),
      (_) => emit(const AuthSuccess()),
    );
  }
}
