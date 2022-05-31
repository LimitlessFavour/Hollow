// ignore_for_file: avoid_dynamic_calls, public_member_api_docs
//TODO Document members

import 'package:api_client/api_client.dart';
import 'package:shared/shared.dart';
import 'package:wallet_repository/src/client/wallet_client_contract.dart';

/// Dart Class that manages authentication
/// {@endtemplate}
class WalletClient extends BaseWalletClient {
  /// {@macro auth_client}
  WalletClient(this.baseUrl, {ApiService? apiService})
      : _apiService = apiService ?? ApiService(baseUrl);

  /// Base url for api endpoints
  final String baseUrl;

  final ApiService _apiService;

  @override
  Future<Result<Exception, List<Currency>>> sendFetchCurrenciesData({
    required JSON data,
  }) {
    return _apiService.setData<Result<Exception, List<Currency>>>(
      endpoint: ApiEndpoints.wallet(WalletEndpoint.FETCH_AVAILABLE_CURRENCIES),
      body: data,
      converter: (response) {
        if (response['code'] == 200) {
          final currencies =
              response['currencies'] as List<Map<String, dynamic>>;
          return Success(currencies.map(Currency.fromJson).toList());
        }
        final message = response['message'] as String;
        return Error(Exception(message));
      },
    );
  }

  @override
  Future<Result<Exception, User>> sendCreateWalletData({
    required JSON data,
    //adding this user parameter for demo purposes, wont be used here.
    required User user,
    // required Wallet wallet,
  }) {
    return _apiService.setData<Result<Exception, User>>(
      endpoint: ApiEndpoints.wallet(WalletEndpoint.CREATE_WALLET),
      body: data,
      converter: (response) {
        if (response['code'] == 200) {
          final user = response['user'] as JSON;
          return Success(User.fromJson(user));
        }
        final message = response['message'] as String;
        return Error(Exception(message));
      },
    );
  }
}
