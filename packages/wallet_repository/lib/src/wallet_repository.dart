import 'package:shared/shared.dart';
import 'package:wallet_repository/src/client/wallet_client_contract.dart';

/// {@template wallet_repository}
/// Wallet Repository
/// {@endtemplate}
// ignore_for_file: public_member_api_docs

class WalletRepository {
  /// {@macro wallet_repository}
  WalletRepository({
    required BaseWalletClient walletClient,
  }) : _walletClient = walletClient;

  /// Base url for api endpoints

  final BaseWalletClient _walletClient;

  ///Fetch available wallet currencies
  Future<Result<Exception, List<Currency>>> fetchAvailableCurrencies({
    required WalletType walletType,
  }) async {
    final body = <String, dynamic>{
      'wallet_type': walletType.name,
    };
    return _walletClient.sendFetchCurrenciesData(data: body);
  }

  Future<Result<Exception, User>> createWallet({
    required Wallet wallet,
    required String userId,
    //adding this user parameter for demo purposes
    required User user,
  }) async {
    final body = <String, dynamic>{
      'userId': userId,
      'wallet': wallet.toJson(),
    };
    return _walletClient.sendCreateWalletData(
      data: body,
      user: user,
      // wallet: wallet
    );
  }
}
