// ignore_for_file: public_member_api_docs

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared/src/typedefs.dart';
import 'package:shared/src/wallet/wallet.dart';

part 'user.freezed.dart';
part 'user.g.dart';

List<Map<String, dynamic>> walletsToJson(List<Wallet>? wallets) {
  return (wallets ?? []).map((wallet) => wallet.toJson()).toList();
}

List<Wallet> walletsFromJson(List<dynamic>? wallets) {
  return (wallets ??  <dynamic>[])
      .map((dynamic wallet) => Wallet.fromJson(wallet as JSON))
      .toList();
}

@freezed
class User with _$User {
  /// {@macro user}
  const factory User({
    required String userId,
    String? email,
    String? firstname,
    String? middleName,
    String? lastname,
    String? username,
    String? phoneNumber,
    @JsonKey(toJson: walletsToJson, fromJson: walletsFromJson)
    @Default(<Wallet>[])
        List<Wallet> wallets,
  }) = _User;

  const User._();

  /// User instance from JSON.
  factory User.fromJson(JSON json) => _$UserFromJson(json);

  /// Empty user which represents an unauthenticated user.
  static const empty = User(userId: '');

  /// Convenience getter to determine whether the current user is empty.
  bool get isEmpty => this == User.empty;

  /// Convenience getter to determine whether the current user is not empty.
  bool get isNotEmpty => this != User.empty;
}
