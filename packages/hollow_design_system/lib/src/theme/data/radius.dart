// ignore_for_file: public_member_api_docs

import 'package:equatable/equatable.dart';
import 'package:flutter/rendering.dart';
import 'package:hollow_design_system/src/utils/named.dart';

class AppRadiusData extends Equatable {
  const AppRadiusData({
    required this.tiny,
    required this.mini,
    required this.small,
    required this.regular,
    required this.big,
    required this.large,
  });

  //TODO add more instances

  const AppRadiusData.regular()

      /// value: 4px, for medium screen size data
      : tiny = const Radius.circular(4),

        /// value: 8px, for medium screen size data
        mini = const Radius.circular(8),

        /// value: 10px, for medium screen size data
        small = const Radius.circular(10),

        /// value: 15px, for medium screen size data
        regular = const Radius.circular(15),

        /// value: 24px, for medium screen size data
        big = const Radius.circular(24),

        /// value: 30px, for medium screen size data
        large = const Radius.circular(30);

  /// value: 4px, for medium screen size
  final Radius tiny;

  /// value: 8px, for medium screen size
  final Radius mini;

  /// value: 10px, for medium screen size
  final Radius small;

  /// value: 15px, for medium screen size
  final Radius regular;

  /// value: 24px, for medium screen size
  final Radius big;

  /// value: 30px, for medium screen size
  final Radius large;

  AppBorderRadiusData asBorderRadius() => AppBorderRadiusData(this);

  @override
  List<Object?> get props => [
        mini.named('mini'),
        small.named('small'),
        regular.named('regular'),
        big.named('big'),
        large.named('large'),
      ];
}

class AppBorderRadiusData extends Equatable {
  const AppBorderRadiusData(this._radius);

  /// value: 8px, for medium screen size
  BorderRadius get mini => BorderRadius.all(_radius.mini);

  /// value: 10px, for medium screen size
  BorderRadius get small => BorderRadius.all(_radius.small);

  /// value: 15px, for medium screen size
  BorderRadius get regular => BorderRadius.all(_radius.regular);

  /// value: 24px, for medium screen size
  BorderRadius get big => BorderRadius.all(_radius.big);

  /// value: 30px, for medium screen size
  BorderRadius get large => BorderRadius.all(_radius.large);

  final AppRadiusData _radius;

  @override
  List<Object?> get props => [_radius];
}
