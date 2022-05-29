// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SignupState _$$_SignupStateFromJson(Map<String, dynamic> json) =>
    _$_SignupState(
      email: json['email'] == null
          ? const Email.pure()
          : const EmailConverter()
              .fromJson(json['email'] as Map<String, dynamic>),
      password: json['password'] == null
          ? const Password.pure()
          : const PasswordConverter()
              .fromJson(json['password'] as Map<String, dynamic>),
      confirmedPassword: json['confirmedPassword'] == null
          ? const ConfirmedPassword.pure()
          : const ConfirmedPasswordConverter()
              .fromJson(json['confirmedPassword'] as Map<String, dynamic>),
      name: json['name'] == null
          ? const Name.pure()
          : const NameConverter()
              .fromJson(json['name'] as Map<String, dynamic>),
      lastname: json['lastname'] == null
          ? const Name.pure()
          : const NameConverter()
              .fromJson(json['lastname'] as Map<String, dynamic>),
      username: json['username'] == null
          ? const Name.pure()
          : const NameConverter()
              .fromJson(json['username'] as Map<String, dynamic>),
      phone: json['phone'] == null
          ? const Phone.pure()
          : const PhoneConverter()
              .fromJson(json['phone'] as Map<String, dynamic>),
      status: $enumDecodeNullable(_$FormzStatusEnumMap, json['status']) ??
          FormzStatus.pure,
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$$_SignupStateToJson(_$_SignupState instance) =>
    <String, dynamic>{
      'email': const EmailConverter().toJson(instance.email),
      'password': const PasswordConverter().toJson(instance.password),
      'confirmedPassword':
          const ConfirmedPasswordConverter().toJson(instance.confirmedPassword),
      'name': const NameConverter().toJson(instance.name),
      'lastname': const NameConverter().toJson(instance.lastname),
      'username': const NameConverter().toJson(instance.username),
      'phone': const PhoneConverter().toJson(instance.phone),
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
