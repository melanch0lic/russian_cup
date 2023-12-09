import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:russia_icpc/presentation/pages/age_page/cubit/age_state.dart';

import '../../../../data/src/auth_exceptions.dart';
import '../../../../domain/entities/number.dart';
import '../../../../domain/repository/auth_repository.dart';

class AgeCubit extends Cubit<AgeState> {
  final AuthRepository _authenticationRepository;
  final String email;
  final String password;
  AgeCubit(this._authenticationRepository,
      {required this.email, required this.password})
      : super(const AgeState());

  void ageChanged(String value) {
    if (value.isEmpty) {
      emit(state.copyWith(age: const Number.pure(), isValid: false));
      return;
    }
    final age = Number.dirty(value);
    emit(
      state.copyWith(age: age, isValid: Formz.validate([state.age])),
    );
  }

  Future<void> signUpFormSubmitted() async {
    if (!state.isValid) return;
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    try {
      await _authenticationRepository.signUp(
        login: email,
        password: password,
        age: int.parse(state.age.value),
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
