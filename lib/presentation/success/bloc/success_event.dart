import 'package:freezed_annotation/freezed_annotation.dart';

part 'success_event.freezed.dart';

@freezed
class SuccessEvent with _$SuccessEvent {
  const factory SuccessEvent.signInPressed() = SuccessSignOutPressed;
}
