part of 'sign_up_cubit.dart';

enum ConfirmPasswordValidationError { invalid }

final class SignUpState extends Equatable {
  const SignUpState({
    this.email = const Email.pure(),
    this.password = const Password.pure(),
    this.fio = '',
    //  this.confirmedPassword = const ConfirmedPassword.pure(),
    this.status = FormzSubmissionStatus.initial,
    this.isValid = false,
    this.errorMessage,
  });

  final Email email;
  final String fio;
  final Password password;
//  final ConfirmedPassword confirmedPassword;
  final FormzSubmissionStatus status;
  final bool isValid;
  final String? errorMessage;

  @override
  List<Object?> get props => [
        email,
        password,
        fio,
        //confirmedPassword,
        status,
        isValid,
        errorMessage,
      ];

  SignUpState copyWith({
    Email? email,
    Password? password,
    String? fio,
    //  ConfirmedPassword? confirmedPassword,
    FormzSubmissionStatus? status,
    bool? isValid,
    String? errorMessage,
  }) {
    return SignUpState(
      email: email ?? this.email,
      password: password ?? this.password,
      fio: fio ?? this.fio,
      //  confirmedPassword: confirmedPassword ?? this.confirmedPassword,
      status: status ?? this.status,
      isValid: isValid ?? this.isValid,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
