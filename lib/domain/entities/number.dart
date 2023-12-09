import 'package:formz/formz.dart';

/// Validation errors for the [Email] [FormzInput].
enum NumberValidationError {
  /// Generic invalid error.
  invalid
}

/// {@template email}
/// Form input for an email input.
/// {@endtemplate}
class Number extends FormzInput<String, NumberValidationError> {
  /// {@macro email}
  const Number.pure() : super.pure('');

  /// {@macro email}
  const Number.dirty([super.value = '']) : super.dirty();

  static final RegExp _phoneRegExp = RegExp(
    r'[0-9]',
  );

  @override
  NumberValidationError? validator(String? value) {
    return _phoneRegExp.hasMatch(value ?? '')
        ? null
        : NumberValidationError.invalid;
  }
}
