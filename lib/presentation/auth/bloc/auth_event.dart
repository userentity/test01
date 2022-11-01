import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.freezed.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.signInPressed({
    required String email,
    required String password,
  }) = AuthSignInPressed;

  const factory AuthEvent.signUpPressed({
    required String email,
    required String password,
  }) = AuthSignUpPressed;
}
