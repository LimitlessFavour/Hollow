// ignore_for_file: public_member_api_docs

import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hollow_design_system/src/layout/layout.dart';
import 'package:hollow_design_system/src/theme/data/form_factor.dart';
import 'package:hollow_design_system/src/theme/data/images.dart';
import 'package:hollow_design_system/src/theme/data/typography.dart';
import 'package:hollow_design_system/src/theme/theme.dart';

enum AppThemeColorMode {
  light,
  dark,
}

/// Updates automatically the [AppTheme] regarding the current [MediaQuery],
/// as soon as the theme isn't overriden.
class AppResponsiveTheme extends StatelessWidget {
  const AppResponsiveTheme({
    Key? key,
    required this.appLogo,
    required this.child,
    required this.themeMode,
    this.darkAppLogo,
    this.colorMode,
    this.formFactor,
    this.spacing,
  }) : super(key: key);

  final AppThemeColorMode? colorMode;
  final AppFormFactor? formFactor;
  final AppSpacingData? spacing;
  final Widget child;
  final PictureProvider appLogo;
  final PictureProvider? darkAppLogo;
  final ThemeMode themeMode;

  static AppThemeColorMode colorModeOf(
    BuildContext context,
    ThemeMode themeMode,
  ) {
    if (themeMode == ThemeMode.light) return AppThemeColorMode.light;
    if (themeMode == ThemeMode.dark) return AppThemeColorMode.dark;

    //themeMode.system
    final platformBrightness = MediaQuery.platformBrightnessOf(context);
    final useDarkTheme = platformBrightness == ui.Brightness.dark;
    if (useDarkTheme) {
      return AppThemeColorMode.dark;
    }
    return AppThemeColorMode.light;
  }

  static AppFormFactor formFactorOf(BuildContext context) {
    final mediaQuery = MediaQuery.maybeOf(context);
    if (mediaQuery != null) {
      if (mediaQuery.size.width <= AppBreakpoints.small &&
          mediaQuery.size.height <= AppHeightBreakpoints.small) {
        return AppFormFactor.small;
      } else if (mediaQuery.size.width <= AppBreakpoints.medium) {
        return AppFormFactor.medium;
      } else if (mediaQuery.size.width <= AppBreakpoints.large) {
        return AppFormFactor.large;
      }
    }
    return AppFormFactor.large;
  }

  @override
  Widget build(BuildContext context) {
    var theme = AppThemeData.regular(appLogo: appLogo);

    /// Updating the colors for the current brightness
    final colorMode = this.colorMode ?? colorModeOf(context, themeMode);
    switch (colorMode) {
      case AppThemeColorMode.dark:
        theme = theme.withColors(AppColorsData.dark());
        theme = theme.withImages(AppImagesData.dark(appLogo: appLogo));
        final darkAppLogo = this.darkAppLogo;
        if (darkAppLogo != null) {
          theme = theme.withImages(theme.images.withAppLogo(darkAppLogo));
        }
        break;
      case AppThemeColorMode.light:
        break;
    }

    // Updating the sizes for current form factor.
    final formFactor = this.formFactor ?? formFactorOf(context);
    theme = theme.withFormFactor(formFactor);
    if (formFactor == AppFormFactor.small) {
      theme = theme.withTypography(AppTypographyData.small());
      theme = theme.withIcons(AppIconsData.small());
      theme = theme.withSpacing(AppSpacingData.small());
    } else if (formFactor == AppFormFactor.large) {
      theme = theme.withTypography(AppTypographyData.large());
      theme = theme.withIcons(AppIconsData.large());
      theme = theme.withSpacing(AppSpacingData.large());
    }

    return AppTheme(
      data: theme,
      child: child,
    );
  }
}
