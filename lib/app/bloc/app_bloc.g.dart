// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppState _$$_AppStateFromJson(Map<String, dynamic> json) => _$_AppState(
      user: json['user'] == null
          ? User.empty
          : User.fromJson(json['user'] as Map<String, dynamic>),
      status: $enumDecodeNullable(_$AuthStatusEnumMap, json['status']) ??
          AuthStatus.unauthenticated,
      authToken: json['authToken'] as String?,
    );

Map<String, dynamic> _$$_AppStateToJson(_$_AppState instance) =>
    <String, dynamic>{
      'user': instance.user,
      'status': _$AuthStatusEnumMap[instance.status],
      'authToken': instance.authToken,
    };

const _$AuthStatusEnumMap = {
  AuthStatus.inProgress: 'inProgress',
  AuthStatus.authenticated: 'authenticated',
  AuthStatus.unauthenticated: 'unauthenticated',
  AuthStatus.restricted: 'restricted',
};
