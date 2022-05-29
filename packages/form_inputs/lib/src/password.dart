import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

/// Validation errors for the [Password] [FormzInput].
enum PasswordValidationError {
  /// all of the conditions insatisified
  all,

  ///invalid error - character conditions not matched
  invalidCharacters,

  /// password length range -- too small or big
  invalidLength,
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
      RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&~]).{0,}');

  /// length of acceptable characters
  static const validLength = 8;
  

  @override
  PasswordValidationError? validator(String? value) {
    final invalidLength = (value ?? '').length < validLength;
    return !invalidLength && _passwordRegExp.hasMatch(value ?? '')
        ? null
        : invalidLength && _passwordRegExp.hasMatch(value ?? '')
            ? PasswordValidationError.invalidLength
            : !invalidLength && !_passwordRegExp.hasMatch(value ?? '')
                ? PasswordValidationError.invalidCharacters
                : PasswordValidationError.all;
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
