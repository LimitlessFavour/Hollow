// ignore_for_file: avoid_dynamic_calls, public_member_api_docs
//TODO Document members
import 'package:shared/shared.dart';

/// Wallet Client Contract
abstract class BaseWalletClient {
  Future<Result<Exception, List<Currency>>> sendFetchCurrenciesData({
    required JSON data,
  });

  Future<Result<Exception, User>> sendCreateWalletData({
    required JSON data,
    //adding this user parameter for demo purposes
    required User user,
    // required Wallet wallet,
  });
}
