// ignore_for_file: avoid_dynamic_calls, public_member_api_docs
//TODO Document members

import 'package:api_client/api_client.dart';
import 'package:shared/shared.dart';
import 'package:wallet_repository/src/client/wallet_client_contract.dart';

/// Dart Class that manages authentication -- DEMO
/// {@endtemplate}
class DemoWalletClient extends BaseWalletClient {
  /// {@macro auth_client}
  DemoWalletClient(this.baseUrl, {ApiService? apiService})
      : _apiService = apiService ?? ApiService(baseUrl);

  /// Base url for api endpoints
  final String baseUrl;

  final ApiService _apiService;

  @override
  Future<Result<Exception, List<Currency>>> sendFetchCurrenciesData({
    required JSON data,
  }) async {
    await Future<void>.delayed(const Duration(seconds: 3));
    if (data['wallet_type'] as String == 'fiat') {
      return const Success([
        Currency(name: 'NGN', image: '🇳🇬'),
        Currency(name: 'EUR', image: '🇨🇰'),
        Currency(name: 'GHC', image: '🇬🇭'),
        Currency(name: 'USD', image: '🇺🇸'),
      ]);
    }
    return const Success([
      Currency(name: 'BTC', image: '₿'),
      Currency(name: 'ETH', image: 'Ξ'),
      Currency(name: 'ADA', image: '₳'),
      Currency(name: 'LTC', image: 'Ł'),
    ]);
  }

  @override
  Future<Result<Exception, User>> sendCreateWalletData({
    required JSON data,
    //adding this user parameter for demo purposes
    required User user,
    // required Wallet wallet,
  }) async {
    final wallets = [...user.wallets, Wallet.fromJson(data['wallet'] as JSON)];
    // final wallets = [...user.wallets, Wallet.fromJson(wallet.toJson())];
    await Future<void>.delayed(const Duration(seconds: 3));
    return Success(user.copyWith(wallets: wallets));
  }
}
