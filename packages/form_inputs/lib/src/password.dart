import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

/// Validation errors for the [Password] [FormzInput].
enum PasswordValidationError {
  ///invalid error - character conditions not matched
  ///no special characters
  noSpecialCharacters,

  ///no numbers
  noNumbers,

  /// password length range -- too small or big
  invalidLength,
}

/// {@template password}
/// Form input for an password input.
/// {@endtemplate}
class Password extends FormzInput<String, List<PasswordValidationError>> {
  /// {@macro password}
  const Password.pure() : super.pure('');

  /// {@macro password}
  const Password.dirty([String value = '']) : super.dirty(value);

  static final _passwordRegExp =
      RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&~]).{0,}');

  /// length of acceptable characters
  static const acceptableLength = 8;

  @override
  List<PasswordValidationError>? validator(String? value) {
    final errors = <PasswordValidationError>[];
    final password = value ?? '';
    final invalidLength = password.length < acceptableLength;
    final noNumber = !password.contains(RegExp('[0-9]'));
    final noSpecialCharacters =
        !password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));

    if (!invalidLength && !noNumber && !noSpecialCharacters) return null;

    if (invalidLength) errors.add(PasswordValidationError.invalidLength);
    if (noNumber) errors.add(PasswordValidationError.noNumbers);
    if (noSpecialCharacters) {
      errors.add(PasswordValidationError.noSpecialCharacters);
    }
    return errors;
  }
}

///Password Json Converter
class PasswordConverter
    implements JsonConverter<Password, Map<String, dynamic>> {
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
