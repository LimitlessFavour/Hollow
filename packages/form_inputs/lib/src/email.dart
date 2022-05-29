import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

/// Validation errors for the [Email] [FormzInput].
enum EmailValidationError {
  /// Generic invalid error.
  invalid
}

/// {@template email}
/// Form input for an email input.
/// {@endtemplate}
class Email extends FormzInput<String, EmailValidationError> {
  /// {@macro email}
  const Email.pure() : super.pure('');

  /// {@macro email}
  const Email.dirty([String value = '']) : super.dirty(value);

  static final RegExp _emailRegExp = RegExp(
    r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$',
  );

  @override
  EmailValidationError? validator(String? value) {
    return _emailRegExp.hasMatch(value ?? '')
        ? null
        : EmailValidationError.invalid;
  }
}

///Email Json Converter
class EmailConverter implements JsonConverter<Email, Map<String, dynamic>> {

  ///[EmailConverter] constructor
  const EmailConverter();

  @override
  Map<String, dynamic> toJson(Email email) {
    return <String, dynamic>{'email': email.value};
  }

  @override
  Email fromJson(Map<String, dynamic> json) {
    return Email.dirty(json['email'] as String);
  }
}
