import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:formz/formz.dart';

import '../../../../data/src/auth_exceptions.dart';
import '../../../../domain/entities/email.dart';
import '../../../../domain/entities/password.dart';
import '../../../../domain/repository/auth_repository.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._authenticationRepository) : super(const LoginState());

  final AuthRepository _authenticationRepository;

  void emailChanged(String value) {
    if (value.isEmpty) {
      emit(state.copyWith(email: const Email.pure(), isValid: false));
      return;
    }
    final email = Email.dirty(value);
    emit(
      state.copyWith(
        email: email,
        isValid: Formz.validate([email, state.password]),
      ),
    );
  }

  void passwordChanged(String value) {
    if (value.isEmpty) {
      emit(state.copyWith(password: const Password.pure(), isValid: false));
      return;
    }
    final password = Password.dirty(value);
    emit(
      state.copyWith(
        password: password,
        isValid: Formz.validate([state.email, password]),
      ),
    );
  }

  Future<void> logInWithCredentials() async {
    if (!state.isValid) return;
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    try {
      await _authenticationRepository.logInWithEmailAndPassword(
        email: state.email.value,
        password: state.password.value,
      );
      emit(state.copyWith(status: FormzSubmissionStatus.success));
    } on LogInWithEmailAndPasswordFailure catch (e) {
      emit(
        state.copyWith(
          errorMessage: e.message,
          status: FormzSubmissionStatus.failure,
        ),
      );
    } catch (_) {
      emit(state.copyWith(status: FormzSubmissionStatus.failure));
    }
  }

  void togglePasswordVisibility() {
    emit(state.copyWith(
      isPasswordVisible: !state.isPasswordObscure,
    ));
  }
}
