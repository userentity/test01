// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signInPressed,
    required TResult Function(String email, String password) signUpPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signInPressed,
    TResult? Function(String email, String password)? signUpPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signInPressed,
    TResult Function(String email, String password)? signUpPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthSignInPressed value) signInPressed,
    required TResult Function(AuthSignUpPressed value) signUpPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthSignInPressed value)? signInPressed,
    TResult? Function(AuthSignUpPressed value)? signUpPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthSignInPressed value)? signInPressed,
    TResult Function(AuthSignUpPressed value)? signUpPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthEventCopyWith<AuthEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthSignInPressedCopyWith<$Res>
    implements $AuthEventCopyWith<$Res> {
  factory _$$AuthSignInPressedCopyWith(
          _$AuthSignInPressed value, $Res Function(_$AuthSignInPressed) then) =
      __$$AuthSignInPressedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$AuthSignInPressedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthSignInPressed>
    implements _$$AuthSignInPressedCopyWith<$Res> {
  __$$AuthSignInPressedCopyWithImpl(
      _$AuthSignInPressed _value, $Res Function(_$AuthSignInPressed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$AuthSignInPressed(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthSignInPressed implements AuthSignInPressed {
  const _$AuthSignInPressed({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.signInPressed(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthSignInPressed &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthSignInPressedCopyWith<_$AuthSignInPressed> get copyWith =>
      __$$AuthSignInPressedCopyWithImpl<_$AuthSignInPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signInPressed,
    required TResult Function(String email, String password) signUpPressed,
  }) {
    return signInPressed(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signInPressed,
    TResult? Function(String email, String password)? signUpPressed,
  }) {
    return signInPressed?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signInPressed,
    TResult Function(String email, String password)? signUpPressed,
    required TResult orElse(),
  }) {
    if (signInPressed != null) {
      return signInPressed(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthSignInPressed value) signInPressed,
    required TResult Function(AuthSignUpPressed value) signUpPressed,
  }) {
    return signInPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthSignInPressed value)? signInPressed,
    TResult? Function(AuthSignUpPressed value)? signUpPressed,
  }) {
    return signInPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthSignInPressed value)? signInPressed,
    TResult Function(AuthSignUpPressed value)? signUpPressed,
    required TResult orElse(),
  }) {
    if (signInPressed != null) {
      return signInPressed(this);
    }
    return orElse();
  }
}

abstract class AuthSignInPressed implements AuthEvent {
  const factory AuthSignInPressed(
      {required final String email,
      required final String password}) = _$AuthSignInPressed;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$AuthSignInPressedCopyWith<_$AuthSignInPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthSignUpPressedCopyWith<$Res>
    implements $AuthEventCopyWith<$Res> {
  factory _$$AuthSignUpPressedCopyWith(
          _$AuthSignUpPressed value, $Res Function(_$AuthSignUpPressed) then) =
      __$$AuthSignUpPressedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$AuthSignUpPressedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthSignUpPressed>
    implements _$$AuthSignUpPressedCopyWith<$Res> {
  __$$AuthSignUpPressedCopyWithImpl(
      _$AuthSignUpPressed _value, $Res Function(_$AuthSignUpPressed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$AuthSignUpPressed(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthSignUpPressed implements AuthSignUpPressed {
  const _$AuthSignUpPressed({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.signUpPressed(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthSignUpPressed &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthSignUpPressedCopyWith<_$AuthSignUpPressed> get copyWith =>
      __$$AuthSignUpPressedCopyWithImpl<_$AuthSignUpPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signInPressed,
    required TResult Function(String email, String password) signUpPressed,
  }) {
    return signUpPressed(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signInPressed,
    TResult? Function(String email, String password)? signUpPressed,
  }) {
    return signUpPressed?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signInPressed,
    TResult Function(String email, String password)? signUpPressed,
    required TResult orElse(),
  }) {
    if (signUpPressed != null) {
      return signUpPressed(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthSignInPressed value) signInPressed,
    required TResult Function(AuthSignUpPressed value) signUpPressed,
  }) {
    return signUpPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthSignInPressed value)? signInPressed,
    TResult? Function(AuthSignUpPressed value)? signUpPressed,
  }) {
    return signUpPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthSignInPressed value)? signInPressed,
    TResult Function(AuthSignUpPressed value)? signUpPressed,
    required TResult orElse(),
  }) {
    if (signUpPressed != null) {
      return signUpPressed(this);
    }
    return orElse();
  }
}

abstract class AuthSignUpPressed implements AuthEvent {
  const factory AuthSignUpPressed(
      {required final String email,
      required final String password}) = _$AuthSignUpPressed;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$AuthSignUpPressedCopyWith<_$AuthSignUpPressed> get copyWith =>
      throw _privateConstructorUsedError;
}
