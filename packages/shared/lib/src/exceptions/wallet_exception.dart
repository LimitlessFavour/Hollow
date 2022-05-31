/// {@template create_wallet_failure}
/// Thrown if during the wallet creation process if a failure occurs.
/// {@endtemplate}
class CreateWalletFailure implements Exception {
  /// {@macro create_wallet_failure}
  const CreateWalletFailure([
    this.message = 'An unknown exception occurred.',
  ]);

  /// The associated error message.
  final String message;
}

/// {@template fetch_available_currencies_failure}
/// Thrown if during the wallet creation process if a failure occurs.
/// {@endtemplate}
class FetchAvailableCurrenciesFailure implements Exception {
  /// {@macro fetch_available_currencies_failure}
  const FetchAvailableCurrenciesFailure([
    this.message = 'An unknown exception occurred.',
  ]);

  /// The associated error message.
  final String message;
}
