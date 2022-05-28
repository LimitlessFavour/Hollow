// ignore_for_file: public_member_api_docs

import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:hollow_design_system/src/utils/named.dart';

class AppSpacingData extends Equatable {
  const AppSpacingData(
      {required this.small,
      required this.semiSmall,
      required this.regular,
      required this.semiBig,
      required this.big,
      required this.large});

  //TODO add more instances  - large.

//for small devices, tentavite values yet - currenlt using a multiplier of 0.6
//TODO: Confirm if a single multiplier can work across all sizes in the spacingdata
  factory AppSpacingData.small() => const AppSpacingData(
        small: 2.4,
        semiSmall: 4.8,
        regular: 7.2,
        // from this point, multiplier of 0.8 x regular
        semiBig: 18,
        big: 25,
        large: 38,
      );

  factory AppSpacingData.regular() => const AppSpacingData(
        small: 4,
        semiSmall: 8,
        regular: 12,
        semiBig: 22,
        big: 32,
        large: 48,
      );

//for large devices, tentavite values yet - currently using a multiplier of 1.5
  factory AppSpacingData.large() => const AppSpacingData(
        small: 6,
        semiSmall: 12,
        regular: 18,
        semiBig: 33,
        big: 48,
        large: 72,
      );

  ///4px, for medium screen size
  final double small;

  ///8px, for medium screen size
  final double semiSmall;

  ///12px, for medium screen size
  final double regular;

  ///22px, for medium screen size
  final double semiBig;

  ///32px, for medium screen size
  final double big;

  ///48px, for medium screen size
  final double large;

  AppEdgeInsetsSpacingData asInsets() => AppEdgeInsetsSpacingData(this);

  @override
  List<Object?> get props => [
        small.named('small'),
        semiSmall.named('semiSmall'),
        regular.named('regular'),
        semiBig.named('semiBig'),
        big.named('big'),
        large.named('large'),
      ];
}

class AppEdgeInsetsSpacingData extends Equatable {
  const AppEdgeInsetsSpacingData(this._spacing);

  EdgeInsets get small => EdgeInsets.all(_spacing.small);
  EdgeInsets get semiSmall => EdgeInsets.all(_spacing.semiSmall);
  EdgeInsets get regular => EdgeInsets.all(_spacing.regular);
  EdgeInsets get semiBig => EdgeInsets.all(_spacing.semiBig);
  EdgeInsets get big => EdgeInsets.all(_spacing.big);
  EdgeInsets get large => EdgeInsets.all(_spacing.large);

  final AppSpacingData _spacing;

  @override
  List<Object?> get props => [_spacing];
}
