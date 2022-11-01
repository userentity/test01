import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/use_case/sign_out_use_case.dart';
import 'success_event.dart';
import 'success_state.dart';

@injectable
class SuccessBloc extends Bloc<SuccessEvent, SuccessState> {
  SuccessBloc(this._signOutUseCase) : super(const SuccessInitial()) {
    on<SuccessSignOutPressed>(
        (event, emit) => _onHomeSignOutPressed(event, emit));
  }

  final SignOutUseCase _signOutUseCase;

  Future<void> _onHomeSignOutPressed(
      SuccessSignOutPressed event, Emitter<SuccessState> emit) async {
    emit(const SuccessLoading());
    await _signOutUseCase(SignOutArgs());
    emit(const SuccessSignOut());
  }
}
