import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:formz/formz.dart';

import '../../../../domain/entities/confirmed_password.dart';
import '../../../../domain/entities/email.dart';
import '../../../../domain/entities/password.dart';
part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(const SignUpState());

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
              state.confirmedPassword,
            ]) &&
            state.isServiceTermes,
      ),
    );
  }

  void passwordChanged(String value) {
    if (value.isEmpty) {
      emit(state.copyWith(
          password: const Password.pure(),
          confirmedPassword: state.confirmedPassword.value.isEmpty
              ? const ConfirmedPassword.pure()
              : null,
          isValid: false));
      return;
    }
    final password = Password.dirty(value);
    final confirmedPassword = ConfirmedPassword.dirty(
      password: password.value,
      value: state.confirmedPassword.value,
    );
    emit(
      state.copyWith(
        password: password,
        confirmedPassword: confirmedPassword,
        isValid: Formz.validate([
              state.email,
              password,
              confirmedPassword,
            ]) &&
            state.isServiceTermes,
      ),
    );
  }

  void confirmedPasswordChanged(String value) {
    final confirmedPassword = ConfirmedPassword.dirty(
      password: state.password.value,
      value: value,
    );
    emit(
      state.copyWith(
        confirmedPassword: confirmedPassword,
        isValid: Formz.validate([
              state.email,
              state.password,
              confirmedPassword,
            ]) &&
            state.isServiceTermes,
      ),
    );
  }

  void togglePasswordVisibility() {
    emit(state.copyWith(
      isPasswordVisible: !state.isPasswordObscure,
    ));
  }

  void togglePasswordConfirmationVisibility() {
    emit(state.copyWith(
      isConfirmedPasswordVisible: !state.isConfirmedPasswordObscure,
    ));
  }

  void toggleServiceTermes() {
    emit(state.copyWith(
      isValid: Formz.validate([
            state.email,
            state.password,
            state.confirmedPassword,
          ]) &&
          !state.isServiceTermes,
      isServiceTermes: !state.isServiceTermes,
    ));
  }
}
