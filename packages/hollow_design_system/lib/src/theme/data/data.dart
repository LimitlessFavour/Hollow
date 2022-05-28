// ignore_for_file: public_member_api_docs

import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hollow_design_system/src/theme/data/durations.dart';
import 'package:hollow_design_system/src/theme/data/form_factor.dart';
import 'package:hollow_design_system/src/theme/data/images.dart';
import 'package:hollow_design_system/src/theme/data/typography.dart';
import 'package:hollow_design_system/src/theme/theme.dart';

///App Theme Data
class AppThemeData extends Equatable {
  /// [AppThemeData] constructor

  const AppThemeData({
    required this.icons,
    required this.colors,
    required this.typography,
    required this.radius,
    required this.spacing,
    required this.shadow,
    required this.durations,
    required this.images,
    required this.formFactor,
    TargetPlatform? platform,
  }) : _platform = platform;

  /// Regular [AppThemeData]
  factory AppThemeData.regular({
    required PictureProvider appLogo,
  }) =>
      AppThemeData(
        formFactor: AppFormFactor.medium,
        icons: AppIconsData.regular(),
        typography: AppTypographyData.regular(),
        colors: AppColorsData.light(),
        radius: const AppRadiusData.regular(),
        spacing: AppSpacingData.regular(),
        shadow: AppShadowsData.regular(),
        durations: AppDurationsData.regular(),
        images: AppImagesData.regular(
          appLogo: appLogo,
        ),
      );

  ///App Icons Data
  final AppIconsData icons;


  ///App Colors Data
  final AppColorsData colors;

  ///App TypographyData
  final AppTypographyData typography;

  ///App Radius Data
  final AppRadiusData radius;

  ///App Spacing Data
  final AppSpacingData spacing;

  ///App Shadows Data
  final AppShadowsData shadow;

  ///App Durations Data
  final AppDurationsData durations;

  ///App Images Data
  final AppImagesData images;
  final AppFormFactor formFactor;
  // ignore: unused_field
  final TargetPlatform? _platform;
  TargetPlatform get platform => defaultTargetPlatform;

  @override
  List<Object?> get props => [
        platform,
        icons,
        colors,
        typography,
        radius,
        spacing,
        shadow,
        durations,
        images,
      ];

  AppThemeData withColors(AppColorsData colors) {
    return AppThemeData(
      platform: platform,
      formFactor: formFactor,
      colors: colors,
      durations: durations,
      icons: icons,
      images: images,
      radius: radius,
      shadow: shadow,
      spacing: spacing,
      typography: typography,
    );
  }

  AppThemeData withSpacing(AppSpacingData spacing) {
    return AppThemeData(
      platform: platform,
      formFactor: formFactor,
      colors: colors,
      durations: durations,
      icons: icons,
      images: images,
      radius: radius,
      shadow: shadow,
      spacing: spacing,
      typography: typography,
    );
  }

  AppThemeData withImages(AppImagesData images) {
    return AppThemeData(
      platform: platform,
      formFactor: formFactor,
      colors: colors,
      durations: durations,
      icons: icons,
      images: images,
      radius: radius,
      shadow: shadow,
      spacing: spacing,
      typography: typography,
    );
  }

  AppThemeData withIcons(AppIconsData icons) {
    return AppThemeData(
      platform: platform,
      formFactor: formFactor,
      colors: colors,
      durations: durations,
      icons: icons,
      images: images,
      radius: radius,
      shadow: shadow,
      spacing: spacing,
      typography: typography,
    );
  }

  AppThemeData withFormFactor(AppFormFactor formFactor) {
    return AppThemeData(
      platform: platform,
      formFactor: formFactor,
      colors: colors,
      durations: durations,
      icons: icons,
      images: images,
      radius: radius,
      shadow: shadow,
      spacing: spacing,
      typography: typography,
    );
  }

  AppThemeData withTypography(AppTypographyData typography) {
    return AppThemeData(
      platform: platform,
      formFactor: formFactor,
      colors: colors,
      durations: durations,
      icons: icons,
      images: images,
      radius: radius,
      shadow: shadow,
      spacing: spacing,
      typography: typography,
    );
  }
}

extension AppFormFactorX on AppFormFactor {
  bool get isSmall => this == AppFormFactor.small;
  bool get isNotSmall => !isSmall;
  bool get isMedium => this == AppFormFactor.medium;
  bool get isNotMedium => !isMedium;
  bool get isLarge => this == AppFormFactor.large;
  bool get isNotLarge => !isLarge;
}
