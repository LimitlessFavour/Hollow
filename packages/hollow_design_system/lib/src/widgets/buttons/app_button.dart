// ignore_for_file: public_member_api_docs

import 'package:hollow_design_system/hollow_design_system.dart';
import 'package:hollow_design_system/src/widgets/base/tap.dart';

bool _nullAction = false;
late Color? _buttonColor;
late Color? _borderColor;
late Color? _textColor;

class AppButton extends StatelessWidget {
  const AppButton({
    Key? key,
    this.icon,
    this.title,
    this.onTap,
    this.color,
    this.borderColor,
    this.textColor,
    this.mainAxisSize = MainAxisSize.min,
  })  : assert(icon != null || title != null, ''),
        super(key: key);

  final String? icon;
  final String? title;
  final MainAxisSize mainAxisSize;
  final VoidCallback? onTap;
  final Color? color;
  final Color? borderColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    _nullAction = onTap == null;
    _buttonColor = color;
    _borderColor = borderColor;
    _textColor = textColor;
    return AppTapBuilder(
      onTap: onTap,
      builder: (context, state) {
        switch (state) {
          case AppTapState.hovered:
            return Semantics(
              enabled: true,
              selected: true,
              child: AppButtonLayout.hovered(
                icon: icon,
                title: title,
                mainAxisSize: mainAxisSize,
              ),
            );
          case AppTapState.pressed:
            return Semantics(
              enabled: true,
              selected: true,
              child: AppButtonLayout.pressed(
                icon: icon,
                title: title,
                mainAxisSize: mainAxisSize,
              ),
            );
          // ignore: no_default_cases
          default:
            return Semantics(
              enabled: true,
              selected: true,
              child: AppButtonLayout.inactive(
                icon: icon,
                title: title,
                mainAxisSize: mainAxisSize,
              ),
            );
        }
      },
    );
  }
}

enum AppButtonState {
  inactive,
  hovered,
  pressed,
}

class AppButtonLayout extends StatelessWidget {
  const AppButtonLayout.inactive({
    Key? key,
    this.icon,
    this.title,
    this.mainAxisSize = MainAxisSize.min,
    this.inactiveBackgroundColor,
    this.hoveredBackgroundColor,
    this.pressedBackgroundColor,
    this.foregroundColor,
  })  : _state = AppButtonState.inactive,
        assert(icon != null || title != null, ''),
        super(key: key);

  const AppButtonLayout.hovered({
    Key? key,
    this.icon,
    this.title,
    this.mainAxisSize = MainAxisSize.min,
    this.inactiveBackgroundColor,
    this.hoveredBackgroundColor,
    this.pressedBackgroundColor,
    this.foregroundColor,
  })  : _state = AppButtonState.hovered,
        assert(icon != null || title != null, ''),
        super(key: key);

  const AppButtonLayout.pressed({
    Key? key,
    this.icon,
    this.title,
    this.mainAxisSize = MainAxisSize.min,
    this.inactiveBackgroundColor,
    this.hoveredBackgroundColor,
    this.pressedBackgroundColor,
    this.foregroundColor,
  })  : _state = AppButtonState.pressed,
        assert(icon != null || title != null, ''),
        super(key: key);

  final String? icon;
  final String? title;
  final MainAxisSize mainAxisSize;
  final AppButtonState _state;
  final Color? inactiveBackgroundColor;
  final Color? hoveredBackgroundColor;
  final Color? pressedBackgroundColor;
  final Color? foregroundColor;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    final title = this.title;
    final icon = this.icon;
    final hasBoth = title != null && icon != null;
    final foregroundColor =
        this.foregroundColor ?? theme.colors.scaffoldBackground;
    final backgroundColor = () {
      if (_nullAction) return theme.colors.primary200;
      if (_buttonColor != null) return _buttonColor;
      switch (_state) {
        case AppButtonState.inactive:
          return inactiveBackgroundColor ?? theme.colors.primary600;
        case AppButtonState.hovered:
          return hoveredBackgroundColor ??
              theme.colors.primary600.withOpacity(0.8);
        case AppButtonState.pressed:
          return pressedBackgroundColor ??
              theme.colors.primary600.withOpacity(0.8);
      }
    }();
    return AnimatedContainer(
      duration: theme.durations.quick,
      decoration: BoxDecoration(
        borderRadius: theme.radius.asBorderRadius().mini,
        border: Border.all(
          color: _borderColor ?? backgroundColor!,
        ),
        color: backgroundColor,
      ),
      padding: EdgeInsets.symmetric(
        vertical: theme.spacing.regular + 3.0,
        horizontal:
            title != null ? theme.spacing.semiBig : theme.spacing.semiSmall,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (title != null)
            AppText.paragraph1(
              title,
              color: _textColor ?? theme.colors.white,
              fontWeight: FontWeight.w500,
            ),
          if (hasBoth) const AppGap.semiSmall(),
          if (icon != null) AppIcon.regular(icon, color: foregroundColor),
        ],
      ),
    );
  }
}
