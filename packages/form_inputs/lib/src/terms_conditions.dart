import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

/// Validation errors for the [TermsCondtion] [FormzInput].
enum TermsConditionError {
  /// Generic invalid error.
  invalid
}

/// {@template name}
/// Form input for an name input.
/// {@endtemplate}
class TermsCondition extends FormzInput<bool, TermsConditionError> {
  /// {@macro name}
  const TermsCondition.pure() : super.pure(false);

  /// {@macro name}
  const TermsCondition.dirty([bool value = false]) : super.dirty(value);

  @override
  TermsConditionError? validator(bool? value) {
    return (value ?? false) ? null : TermsConditionError.invalid;
  }
}

///TermsCondition Json Converter
class TermsConditionConverter implements JsonConverter<TermsCondition, Map<String, dynamic>> {

  ///[TermsConditionConverter] constructor
  const TermsConditionConverter();

  @override
  Map<String, dynamic> toJson(TermsCondition termsCondition) {
    return <String, dynamic>{'terms_condition': termsCondition.value};
  }

  @override
  TermsCondition fromJson(Map<String, dynamic> json) {
    return TermsCondition.dirty(json['terms_condition'] as bool);
  }
}
