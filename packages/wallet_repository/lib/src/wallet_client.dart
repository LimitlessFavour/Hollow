// ignore_for_file: avoid_dynamic_calls, public_member_api_docs
//TODO Document members

import 'package:api_client/api_client.dart';
import 'package:shared/shared.dart';

/// Dart Class that manages authentication
/// {@endtemplate}
class WalletClient {
  /// {@macro auth_client}
  WalletClient(this.baseUrl, {ApiService? apiService})
      : _apiService = apiService ?? ApiService(baseUrl);

  /// Base url for api endpoints
  final String baseUrl;

  final ApiService _apiService;

  Future<Result<Exception, List<String>>> sendFetchCurrenciesData({
    required JSON data,
  }) {
    return _apiService.setData<Result<Exception, List<String>>>(
      endpoint: ApiEndpoints.wallet(WalletEndpoint.FETCH_AVAILABLE_CURRENCIES),
      body: data,
      converter: (response) {
        if (response['code'] == 200) {
          final currencies = response['currencies'] as List<String>;
          return Success(currencies);
        }
        final message = response['message'] as String;
        return Error(Exception(message));
      },
    );
  }

  Future<Result<Exception, Wallet>> sendCreateWalletData({
    required JSON data,
  }) {
    return _apiService.setData<Result<Exception, Wallet>>(
      endpoint: ApiEndpoints.wallet(WalletEndpoint.CREATE_WALLET),
      body: data,
      converter: (response) {
        if (response['code'] == 200) {
          final wallet = response['wallet'] as JSON;
          return Success(Wallet.fromJson(wallet));
        }
        final message = response['message'] as String;
        return Error(Exception(message));
      },
    );
  }
}
