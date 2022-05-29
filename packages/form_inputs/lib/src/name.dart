import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

/// Validation errors for the [Name] [FormzInput].
enum NameValidationError {
  /// Generic invalid error.
  invalid
}

/// {@template name}
/// Form input for an name input.
/// {@endtemplate}
class Name extends FormzInput<String, NameValidationError> {
  /// {@macro name}
  const Name.pure() : super.pure('');

  /// {@macro name}
  const Name.dirty([String value = '']) : super.dirty(value);

  @override
  NameValidationError? validator(String? value) {
    return (value ?? '').isNotEmpty ? null : NameValidationError.invalid;
  }
}

///Name Json Converter
class NameConverter implements JsonConverter<Name, Map<String, dynamic>> {

  ///[NameConverter] constructor
  const NameConverter();

  @override
  Map<String, dynamic> toJson(Name name) {
    return <String, dynamic>{'name': name.value};
  }

  @override
  Name fromJson(Map<String, dynamic> json) {
    return Name.dirty(json['name'] as String);
  }
}
