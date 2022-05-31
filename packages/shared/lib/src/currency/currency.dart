// ignore_for_file: public_member_api_docs

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared/src/typedefs.dart';

part 'currency.freezed.dart';
part 'currency.g.dart';

@freezed
class Currency with _$Currency {
  /// {@macro Currency}
  const factory Currency({
  String? image,
  String? name,
  }) = _Currency;

  const Currency._();

  // /// Currency instance from JSON.
  factory Currency.fromJson(JSON json) => _$CurrencyFromJson(json);

  /// Empty Currency
  static const empty = Currency();

  /// Convenience getter to determine whether instance is empty
  bool get isEmpty => this == Currency.empty;

  /// Convenience getter to determine whether instance is not empty
  bool get isNotEmpty => this != Currency.empty;
}
