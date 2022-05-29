import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

/// Validation errors for the [Password] [FormzInput].
enum PasswordValidationError {
  /// Generic invalid error.
  invalid
}

/// {@template password}
/// Form input for an password input.
/// {@endtemplate}
class Password extends FormzInput<String, PasswordValidationError> {
  /// {@macro password}
  const Password.pure() : super.pure('');

  /// {@macro password}
  const Password.dirty([String value = '']) : super.dirty(value);

  static final _passwordRegExp =
      RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$');

  @override
  PasswordValidationError? validator(String? value) {
    return _passwordRegExp.hasMatch(value ?? '')
        ? null
        : PasswordValidationError.invalid;
  }
}
 
///Password Json Converter
class PasswordConverter implements JsonConverter<Password, Map<String, dynamic>> {

  ///[PasswordConverter] constructor
  const PasswordConverter();

  @override
  Map<String, dynamic> toJson(Password password) {
    return <String, dynamic>{'password': password.value};
  }

  @override
  Password fromJson(Map<String, dynamic> json) {
    return Password.dirty(json['password'] as String);
  }
}
