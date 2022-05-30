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
      createWalletStatus: $enumDecodeNullable(
              _$CreateWalletStatusEnumMap, json['createWalletStatus']) ??
          CreateWalletStatus.initial,
      fetchCurrenciesStatus: $enumDecodeNullable(
              _$FetchCurrenciesStatusEnumMap, json['fetchCurrenciesStatus']) ??
          FetchCurrenciesStatus.initial,
      availableCurrencies: (json['availableCurrencies'] as List<dynamic>?)
              ?.map((e) => Currency.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Currency>[],
      walletType: $enumDecodeNullable(_$WalletTypeEnumMap, json['walletType']),
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$$_CreateWalletStateToJson(
        _$_CreateWalletState instance) =>
    <String, dynamic>{
      'wallet': instance.wallet,
      'createWalletStatus':
          _$CreateWalletStatusEnumMap[instance.createWalletStatus],
      'fetchCurrenciesStatus':
          _$FetchCurrenciesStatusEnumMap[instance.fetchCurrenciesStatus],
      'availableCurrencies': instance.availableCurrencies,
      'walletType': _$WalletTypeEnumMap[instance.walletType],
      'errorMessage': instance.errorMessage,
    };

const _$CreateWalletStatusEnumMap = {
  CreateWalletStatus.initial: 'initial',
  CreateWalletStatus.creating: 'creating',
  CreateWalletStatus.successful: 'successful',
  CreateWalletStatus.failed: 'failed',
};

const _$FetchCurrenciesStatusEnumMap = {
  FetchCurrenciesStatus.initial: 'initial',
  FetchCurrenciesStatus.fetching: 'fetching',
  FetchCurrenciesStatus.successful: 'successful',
  FetchCurrenciesStatus.failed: 'failed',
};

const _$WalletTypeEnumMap = {
  WalletType.crypto: 'crypto',
  WalletType.fiat: 'fiat',
};
