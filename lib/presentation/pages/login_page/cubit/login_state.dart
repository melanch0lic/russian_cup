part of 'login_cubit.dart';

final class LoginState extends Equatable {
  const LoginState({
    this.email = const Email.pure(),
    this.password = const Password.pure(),
    this.status = FormzSubmissionStatus.initial,
    this.isPasswordObscure = true,
    this.isValid = false,
    this.errorMessage,
  });

  final Email email;
  final Password password;
  final FormzSubmissionStatus status;
  final bool isValid;
  final bool isPasswordObscure;
  final String? errorMessage;

  @override
  List<Object?> get props =>
      [email, password, status, isValid, isPasswordObscure, errorMessage];

  LoginState copyWith({
    Email? email,
    Password? password,
    FormzSubmissionStatus? status,
    bool? isValid,
    bool? isPasswordVisible,
    String? errorMessage,
  }) {
    return LoginState(
      email: email ?? this.email,
      password: password ?? this.password,
      status: status ?? this.status,
      isValid: isValid ?? this.isValid,
      isPasswordObscure: isPasswordVisible ?? this.isPasswordObscure,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
