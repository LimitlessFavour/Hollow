// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:hollow_design_system/src/theme/data/data.dart';

export 'data/colors.dart';
export 'data/data.dart';
export 'data/icons.dart';
export 'data/radius.dart';
export 'data/shadows.dart';
export 'data/spacing.dart';

class AppTheme extends InheritedWidget {
  const AppTheme({
    Key? key,
    required this.data,
    required Widget child,
  }) : super(
          key: key,
          child: child,
        );

  final AppThemeData data;

  static AppThemeData of(BuildContext context) {
    final widget = context.dependOnInheritedWidgetOfExactType<AppTheme>();
    return widget!.data;
  }

  @override
  bool updateShouldNotify(covariant AppTheme oldWidget) {
    return data != oldWidget.data;
  }
}

///Theme extension from context
extension AppThemeX on BuildContext {
  ///Theme extension from context
  AppThemeData get theme => AppTheme.of(this);
}
