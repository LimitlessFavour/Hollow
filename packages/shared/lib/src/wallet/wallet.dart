// ignore_for_file: public_member_api_docs

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared/src/typedefs.dart';

part 'wallet.freezed.dart';
part 'wallet.g.dart';

@JsonEnum()
enum WalletType{ crypto, fiat}

@freezed
class Wallet with _$Wallet {
  /// {@macro wallet}
  const factory Wallet({
  WalletType? type,
  String? currency,
  }) = _Wallet;

  const Wallet._();

  /// Wallet instance from JSON.
  factory Wallet.fromJson(JSON json) => _$WalletFromJson(json);

  /// Empty Wallet
  static const empty = Wallet();

  /// Convenience getter to determine whether instance is an initial wallet
  bool get isEmpty => this == Wallet.empty;

  /// Convenience getter to determine whether instance is not an initial wallet
  bool get isNotEmpty => this != Wallet.empty;
}
