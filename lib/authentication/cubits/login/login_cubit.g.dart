// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginState _$$_LoginStateFromJson(Map<String, dynamic> json) =>
    _$_LoginState(
      email: json['email'] == null
          ? const Email.pure()
          : const EmailConverter()
              .fromJson(json['email'] as Map<String, dynamic>),
      password: json['password'] == null
          ? const Password.pure()
          : const PasswordConverter()
              .fromJson(json['password'] as Map<String, dynamic>),
      status: $enumDecodeNullable(_$FormzStatusEnumMap, json['status']) ??
          FormzStatus.pure,
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$$_LoginStateToJson(_$_LoginState instance) =>
    <String, dynamic>{
      'email': const EmailConverter().toJson(instance.email),
      'password': const PasswordConverter().toJson(instance.password),
      'status': _$FormzStatusEnumMap[instance.status],
      'errorMessage': instance.errorMessage,
    };

const _$FormzStatusEnumMap = {
  FormzStatus.pure: 'pure',
  FormzStatus.valid: 'valid',
  FormzStatus.invalid: 'invalid',
  FormzStatus.submissionInProgress: 'submissionInProgress',
  FormzStatus.submissionSuccess: 'submissionSuccess',
  FormzStatus.submissionFailure: 'submissionFailure',
  FormzStatus.submissionCanceled: 'submissionCanceled',
};
