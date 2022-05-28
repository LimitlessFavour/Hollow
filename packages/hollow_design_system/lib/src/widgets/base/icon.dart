// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hollow_design_system/src/theme/theme.dart';

enum AppIconSize { small, regular, semiBig, big }

extension AppIconSizeExtension on AppIconSizesData {
  double resolve(AppIconSize size) {
    switch (size) {
      case AppIconSize.small:
        return small;
      case AppIconSize.regular:
        return regular;
      case AppIconSize.semiBig:
        return semiBig;
      case AppIconSize.big:
        return big;
    }
  }
}

class AppIcon extends StatelessWidget {
  const AppIcon(
    this.data, {
    Key? key,
    this.color,
    this.rawSize,
    this.size = AppIconSize.regular,
  }) : super(key: key);

  ///size - (22px)
  const AppIcon.small(
    this.data, {
    Key? key,
    this.color,
    this.rawSize,
  })  : size = AppIconSize.small,
        super(key: key);

  ///size - (28px)
  const AppIcon.regular(
    this.data, {
    Key? key,
    this.color,
    this.rawSize,
  })  : size = AppIconSize.regular,
        super(key: key);

  ///size - (32px)
  const AppIcon.semiBig(
    this.data, {
    Key? key,
    this.color,
    this.rawSize,
  })  : size = AppIconSize.semiBig,
        super(key: key);

  ///size - (48px)
  const AppIcon.big(
    this.data, {
    Key? key,
    this.color,
    this.rawSize,
  })  : size = AppIconSize.big,
        super(key: key);

  final String data;
  final Color? color;
  final AppIconSize size;
  final double? rawSize;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    final color = this.color ?? theme.colors.grey400;
    final height = rawSize ?? theme.icons.sizes.resolve(size);
    return SvgPicture.string(
      data,
      height: height,
      width: height,
      color: color,
    );
  }
}

class AppAnimatedIcon extends StatelessWidget {
  const AppAnimatedIcon(
    this.data, {
    Key? key,
    this.color,
    this.size = AppIconSize.small,
    this.duration = const Duration(milliseconds: 200),
  }) : super(key: key);

  final String data;
  final Color? color;
  final AppIconSize size;
  final Duration duration;

  bool get isAnimated => duration.inMilliseconds > 0;

  @override
  Widget build(BuildContext context) {
    final icon = AppIcon(
        data,
        key: key,
        color: color,
        size: size,
      );
    if (!isAnimated) {
      return icon;
    }
    return AnimatedSwitcher(
      key: ValueKey<String>(data),
      duration: duration,
      switchInCurve: Curves.easeIn,
      switchOutCurve: Curves.easeInOut,
      child: icon,
    );
  }
}
