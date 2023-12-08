part of 'sign_up_cubit.dart';

enum ConfirmPasswordValidationError { invalid }

final class SignUpState extends Equatable {
  const SignUpState({
    this.email = const Email.pure(),
    this.password = const Password.pure(),
    this.fio = '',
    this.confirmedPassword = const ConfirmedPassword.pure(),
    this.status = FormzSubmissionStatus.initial,
    this.isValid = false,
    this.isPasswordObscure = true,
    this.isConfirmedPasswordObscure = true,
    this.isServiceTermes = false,
    this.errorMessage,
  });

  final Email email;
  final String fio;
  final Password password;
  final ConfirmedPassword confirmedPassword;
  final FormzSubmissionStatus status;
  final bool isValid;
  final bool isPasswordObscure;
  final bool isConfirmedPasswordObscure;
  final bool isServiceTermes;
  final String? errorMessage;

  @override
  List<Object?> get props => [
        email,
        password,
        fio,
        confirmedPassword,
        status,
        isValid,
        isPasswordObscure,
        isConfirmedPasswordObscure,
        isServiceTermes,
        errorMessage,
      ];

  SignUpState copyWith({
    Email? email,
    Password? password,
    String? fio,
    ConfirmedPassword? confirmedPassword,
    FormzSubmissionStatus? status,
    bool? isValid,
    bool? isPasswordVisible,
    bool? isConfirmedPasswordVisible,
    bool? isServiceTermes,
    String? errorMessage,
  }) {
    return SignUpState(
      email: email ?? this.email,
      password: password ?? this.password,
      fio: fio ?? this.fio,
      confirmedPassword: confirmedPassword ?? this.confirmedPassword,
      status: status ?? this.status,
      isValid: isValid ?? this.isValid,
      isPasswordObscure: isPasswordVisible ?? this.isPasswordObscure,
      isConfirmedPasswordObscure:
          isConfirmedPasswordVisible ?? this.isConfirmedPasswordObscure,
      isServiceTermes: isServiceTermes ?? this.isServiceTermes,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
