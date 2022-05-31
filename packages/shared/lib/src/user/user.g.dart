// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      userId: json['userId'] as String,
      email: json['email'] as String?,
      firstname: json['firstname'] as String?,
      middleName: json['middleName'] as String?,
      lastname: json['lastname'] as String?,
      username: json['username'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      wallets: json['wallets'] == null
          ? const <Wallet>[]
          : walletsFromJson(json['wallets'] as List),
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'userId': instance.userId,
      'email': instance.email,
      'firstname': instance.firstname,
      'middleName': instance.middleName,
      'lastname': instance.lastname,
      'username': instance.username,
      'phoneNumber': instance.phoneNumber,
      'wallets': walletsToJson(instance.wallets),
    };
