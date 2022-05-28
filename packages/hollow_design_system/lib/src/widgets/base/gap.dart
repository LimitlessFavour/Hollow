// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:hollow_design_system/src/theme/theme.dart';

export 'package:gap/gap.dart';

enum AppGapSize {
  ///no spacing
  none,

  ///4, for medium screen size
  small,

  ///8px, for medium screen size
  semiSmall,

  ///12px, for medium screen size
  regular,

  ///22px, for medium screen size
  semiBig,

  ///32px, for medium screen size
  big,

  ///48px, for medium screen size
  large,
}

extension AppGapSizeExtension on AppGapSize {
  double getSpacing(AppThemeData theme) {
    switch (this) {
      case AppGapSize.none:
        return 0;
      case AppGapSize.small:
        return theme.spacing.small;
      case AppGapSize.semiSmall:
        return theme.spacing.semiSmall;
      case AppGapSize.regular:
        return theme.spacing.regular;
      case AppGapSize.semiBig:
        return theme.spacing.semiBig;
      case AppGapSize.big:
        return theme.spacing.big;
      case AppGapSize.large:
        return theme.spacing.large;
    }
  }
}

class AppGap extends StatelessWidget {
  const AppGap(
    this.size, {
    this.multiplier = 1.0,
    Key? key,
  }) : super(key: key);

  ///4, for medium screen size
  const AppGap.small({
    Key? key,
  })  : size = AppGapSize.small,
        multiplier = 1.0,
        super(key: key);

  ///8px, for medium screen size
  const AppGap.semiSmall({
    Key? key,
  })  : size = AppGapSize.semiSmall,
        multiplier = 1.0,
        super(key: key);

  ///12px, for medium screen size
  const AppGap.regular({
    Key? key,
  })  : size = AppGapSize.regular,
        multiplier = 1.0,
        super(key: key);

  ///22px, for medium screen size
  const AppGap.semiBig({
    Key? key,
  })  : size = AppGapSize.semiBig,
        multiplier = 1.0,
        super(key: key);

  ///32px, for medium screen size
  const AppGap.big({
    Key? key,
    double scale = 1.0,
  })  : size = AppGapSize.big,
        multiplier = scale,
        super(key: key);

  ///48px, for medium screen size
  const AppGap.large({
    Key? key,
    double scale = 1.0,
  })  : size = AppGapSize.large,
        multiplier = scale,
        super(key: key);

  final AppGapSize size;
  final double multiplier;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return Gap(size.getSpacing(theme) * multiplier);
  }
}
