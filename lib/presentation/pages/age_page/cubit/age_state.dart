import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';

import '../../../../domain/entities/number.dart';

enum ConfirmPasswordValidationError { invalid }

final class AgeState extends Equatable {
  const AgeState({
    this.isValid = false,
    this.age = const Number.pure(),
    this.status = FormzSubmissionStatus.initial,
    this.errorMessage,
  });

  final FormzSubmissionStatus status;
  final Number age;
  final bool isValid;
  final String? errorMessage;

  @override
  List<Object?> get props => [
        age,
        status,
        isValid,
        errorMessage,
      ];

  AgeState copyWith({
    FormzSubmissionStatus? status,
    bool? isValid,
    Number? age,
    String? errorMessage,
  }) {
    return AgeState(
      age: age ?? this.age,
      status: status ?? this.status,
      isValid: isValid ?? this.isValid,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
