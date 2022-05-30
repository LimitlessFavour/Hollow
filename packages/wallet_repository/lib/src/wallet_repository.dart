import 'package:shared/shared.dart';
import 'package:wallet_repository/src/wallet_client.dart';

/// {@template wallet_repository}
/// Wallet Repository
/// {@endtemplate}
// ignore_for_file: public_member_api_docs

class WalletRepository {
  /// {@macro wallet_repository}
  WalletRepository({required this.baseUrl, WalletClient? walletClient})
      : _walletClient = walletClient ?? WalletClient(baseUrl);

  /// Base url for api endpoints
  final String baseUrl;

  final WalletClient _walletClient;

  ///Fetch available wallet currencies
  Future<Result<Exception, List<String>>> fetchAvailableCurrencies({
    required WalletType walletType,
  }) async {
    final body = <String, dynamic>{
      'wallet_type': walletType.name,
    };
    return _walletClient.sendFetchCurrenciesData(data: body);
  }

  Future<Result<Exception, Wallet>> login({
    required Wallet wallet,
    required String userId,
  }) async {
    final body = <String, dynamic>{
      'userId': userId,
      'wallet': wallet.toJson(),
    };
    return _walletClient.sendCreateWalletData(data: body);
  }
}
