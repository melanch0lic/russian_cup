import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:formz/formz.dart';

import '../../../../data/src/auth_exceptions.dart';
import '../../../../domain/entities/email.dart';
import '../../../../domain/entities/password.dart';
import '../../../../domain/repository/auth_repository.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this._authenticationRepository) : super(const SignUpState());

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
        isValid: Formz.validate([
              email,
              state.password,
              //state.confirmedPassword,
            ]) &&
            state.fio.isNotEmpty,
      ),
    );
  }

  void passwordChanged(String value) {
    if (value.isEmpty) {
      emit(state.copyWith(
          password: const Password.pure(),
          // confirmedPassword: state.confirmedPassword.value.isEmpty ? const ConfirmedPassword.pure() : null,
          isValid: false));
      return;
    }
    final password = Password.dirty(value);
    emit(
      state.copyWith(
        password: password,
        //  confirmedPassword: confirmedPassword,
        isValid: Formz.validate([
              state.email,
              password,
            ]) &&
            state.fio.isNotEmpty,
      ),
    );
  }

  void fioChanged(String value) {
    if (value.isEmpty) {
      emit(state.copyWith(
          fio: '',
          // confirmedPassword: state.confirmedPassword.value.isEmpty ? const ConfirmedPassword.pure() : null,
          isValid: false));
      return;
    }
    emit(state.copyWith(
      fio: value,
      isValid: Formz.validate([
            state.email,
            state.password,
          ]) &&
          state.fio.isNotEmpty,
    ));
  }

  Future<void> signUpFormSubmitted() async {
    if (!state.isValid) return;
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    try {
      await _authenticationRepository.signUp(
        email: state.email.value,
        password: state.password.value,
      );
      emit(state.copyWith(status: FormzSubmissionStatus.success));
    } on SignUpWithEmailAndPasswordFailure catch (e) {
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
}
