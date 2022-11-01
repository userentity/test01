import 'package:freezed_annotation/freezed_annotation.dart';

part 'success_state.freezed.dart';

@freezed
class SuccessState with _$SuccessState {
  const factory SuccessState.initial() = SuccessInitial;
  const factory SuccessState.loading() = SuccessLoading;
  const factory SuccessState.signOut() = SuccessSignOut;
}
