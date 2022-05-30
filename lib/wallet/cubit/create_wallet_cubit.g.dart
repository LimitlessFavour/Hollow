// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_wallet_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateWalletState _$$_CreateWalletStateFromJson(Map<String, dynamic> json) =>
    _$_CreateWalletState(
      wallet: json['wallet'] == null
          ? Wallet.empty
          : Wallet.fromJson(json['wallet'] as Map<String, dynamic>),
      status:
          $enumDecodeNullable(_$CreateWalletStatusEnumMap, json['status']) ??
              CreateWalletStatus.initial,
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$$_CreateWalletStateToJson(
        _$_CreateWalletState instance) =>
    <String, dynamic>{
      'wallet': instance.wallet,
      'status': _$CreateWalletStatusEnumMap[instance.status],
      'errorMessage': instance.errorMessage,
    };

const _$CreateWalletStatusEnumMap = {
  CreateWalletStatus.initial: 'initial',
  CreateWalletStatus.creating: 'creating',
  CreateWalletStatus.successful: 'successful',
  CreateWalletStatus.failed: 'failed',
};
