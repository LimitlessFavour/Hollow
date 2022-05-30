// ignore_for_file: constant_identifier_names
// DO NOT USE 'dartfmt' on this file for formatting

import 'package:flutter/foundation.dart';

/// A utility class for getting paths for API endpoints.
/// This class has no constructor and all methods are `static`.
@immutable
class ApiEndpoints {
  const ApiEndpoints._();


  /// Returns the path for an authentication [endpoint].
  static String auth(AuthEndpoint endpoint) {
    const path = '/user/auth';
    switch (endpoint) {
      case AuthEndpoint.REGISTER:
        return '$path/sign-up';
      case AuthEndpoint.LOGIN:
        return '$path/login';
      case AuthEndpoint.LOGOUT:
        return '$path/logout';
    }
  }

  /// Returns the path for  wallet [endpoint].
  ///
  static String wallet(WalletEndpoint endpoint, {int? id}) {
    const path = '/wallet';
    switch (endpoint) {
      case WalletEndpoint.CREATE_WALLET:
        return '$path/create';
      case WalletEndpoint.FUND_WALLET:
        return '$path/fund';
    }
  }
}

/// A collection of endpoints used for authentication purposes.
enum AuthEndpoint {

  /// An endpoint for registration requests.
  REGISTER,

  /// An endpoint for login requests.
  LOGIN,

  /// An endpoint for logout requests.
  LOGOUT,

}

/// collection of endpoints used for wallet feature.
enum WalletEndpoint {
  /// An endpoint to create new wallet.
  CREATE_WALLET,

  /// An endpoint to fund wallet.
  FUND_WALLET
}
