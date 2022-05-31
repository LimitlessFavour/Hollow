// ignore_for_file: invalid_annotation_target

part of 'create_wallet_cubit.dart';

@JsonEnum()
enum CreateWalletStatus { initial, creating, successful, failed }

@JsonEnum()
enum FetchCurrenciesStatus { initial, fetching, successful, failed }

@freezed
class CreateWalletState with _$CreateWalletState {
  const factory CreateWalletState({
    @Default(Wallet.empty) Wallet wallet,
    @Default(CreateWalletStatus.initial) CreateWalletStatus createWalletStatus,
    @Default(FetchCurrenciesStatus.initial) FetchCurrenciesStatus fetchCurrenciesStatus,
    @Default(<Currency>[]) List<Currency> availableCurrencies,
    WalletType? walletType,
    String? errorMessage,
  }) = _CreateWalletState;

  factory CreateWalletState.fromJson(JSON json) =>
      _$CreateWalletStateFromJson(json);
}

extension CreateWalletStatusX on CreateWalletStatus {
  bool get initial => this == CreateWalletStatus.initial;
  bool get isCreating => this == CreateWalletStatus.creating;
  bool get isSuccessful => this == CreateWalletStatus.successful;
  bool get failed => this == CreateWalletStatus.failed;
}

extension FetchCurrenciesStatusX on FetchCurrenciesStatus {
  bool get initial => this == FetchCurrenciesStatus.initial;
  bool get isFetching => this == FetchCurrenciesStatus.fetching;
  bool get isSuccessful => this == FetchCurrenciesStatus.successful;
  bool get failed => this == FetchCurrenciesStatus.failed;
}
