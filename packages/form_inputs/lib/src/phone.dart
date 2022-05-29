import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

/// Validation errors for the [Phone] [FormzInput].
enum PhoneValidationError {
  /// Generic invalid error.
  invalid
}

/// {@template phone}
/// Form input for an phone input.
/// {@endtemplate}
class Phone extends FormzInput<String, PhoneValidationError> {
  /// {@macro phone}
  const Phone.pure() : super.pure('');

  /// {@macro phone}
  const Phone.dirty([String value = '']) : super.dirty(value);

  static final _phoneRegExp =
      RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$');

  @override
 PhoneValidationError? validator(String? value) {
    return _phoneRegExp.hasMatch(value ?? '')
        ? null
        : PhoneValidationError.invalid;
  }
}
 
///Phone Json Converter
class PhoneConverter implements JsonConverter<Phone, Map<String, dynamic>> {

  ///[PhoneConverter] constructor
  const PhoneConverter();

  @override
  Map<String, dynamic> toJson(Phone phone) {
    return <String, dynamic>{'phone': phone.value};
  }

  @override
  Phone fromJson(Map<String, dynamic> json) {
    return Phone.dirty(json['phone'] as String);
  }
}
