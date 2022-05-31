part of 'home_cubit.dart';

enum HomeTab { home, wallets, transactions, profile }

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(HomeTab.home) HomeTab homeTab,
  }) = _HomeState;

  factory HomeState.fromJson(JSON json) => _$HomeStateFromJson(json);
}
