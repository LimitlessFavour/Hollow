// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Wallet _$$_WalletFromJson(Map<String, dynamic> json) => _$_Wallet(
      type: $enumDecodeNullable(_$WalletTypeEnumMap, json['type']),
      currency: currencyFromJson(json['currency'] as Map<String, dynamic>?),
    );

Map<String, dynamic> _$$_WalletToJson(_$_Wallet instance) => <String, dynamic>{
      'type': _$WalletTypeEnumMap[instance.type],
      'currency': currencyToJson(instance.currency),
    };

const _$WalletTypeEnumMap = {
  WalletType.crypto: 'crypto',
  WalletType.fiat: 'fiat',
};
