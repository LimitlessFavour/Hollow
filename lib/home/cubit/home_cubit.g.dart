// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HomeState _$$_HomeStateFromJson(Map<String, dynamic> json) => _$_HomeState(
      homeTab: $enumDecodeNullable(_$HomeTabEnumMap, json['homeTab']) ??
          HomeTab.home,
    );

Map<String, dynamic> _$$_HomeStateToJson(_$_HomeState instance) =>
    <String, dynamic>{
      'homeTab': _$HomeTabEnumMap[instance.homeTab],
    };

const _$HomeTabEnumMap = {
  HomeTab.home: 'home',
  HomeTab.wallets: 'wallets',
  HomeTab.transactions: 'transactions',
  HomeTab.profile: 'profile',
};
