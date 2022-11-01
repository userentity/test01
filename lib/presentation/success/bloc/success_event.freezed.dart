// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'success_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SuccessEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signInPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signInPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signInPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SuccessSignOutPressed value) signInPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SuccessSignOutPressed value)? signInPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SuccessSignOutPressed value)? signInPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuccessEventCopyWith<$Res> {
  factory $SuccessEventCopyWith(
          SuccessEvent value, $Res Function(SuccessEvent) then) =
      _$SuccessEventCopyWithImpl<$Res, SuccessEvent>;
}

/// @nodoc
class _$SuccessEventCopyWithImpl<$Res, $Val extends SuccessEvent>
    implements $SuccessEventCopyWith<$Res> {
  _$SuccessEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SuccessSignOutPressedCopyWith<$Res> {
  factory _$$SuccessSignOutPressedCopyWith(_$SuccessSignOutPressed value,
          $Res Function(_$SuccessSignOutPressed) then) =
      __$$SuccessSignOutPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessSignOutPressedCopyWithImpl<$Res>
    extends _$SuccessEventCopyWithImpl<$Res, _$SuccessSignOutPressed>
    implements _$$SuccessSignOutPressedCopyWith<$Res> {
  __$$SuccessSignOutPressedCopyWithImpl(_$SuccessSignOutPressed _value,
      $Res Function(_$SuccessSignOutPressed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SuccessSignOutPressed implements SuccessSignOutPressed {
  const _$SuccessSignOutPressed();

  @override
  String toString() {
    return 'SuccessEvent.signInPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessSignOutPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signInPressed,
  }) {
    return signInPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signInPressed,
  }) {
    return signInPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signInPressed,
    required TResult orElse(),
  }) {
    if (signInPressed != null) {
      return signInPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SuccessSignOutPressed value) signInPressed,
  }) {
    return signInPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SuccessSignOutPressed value)? signInPressed,
  }) {
    return signInPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SuccessSignOutPressed value)? signInPressed,
    required TResult orElse(),
  }) {
    if (signInPressed != null) {
      return signInPressed(this);
    }
    return orElse();
  }
}

abstract class SuccessSignOutPressed implements SuccessEvent {
  const factory SuccessSignOutPressed() = _$SuccessSignOutPressed;
}
