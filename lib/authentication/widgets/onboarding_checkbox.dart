import 'package:flutter/material.dart';
import 'package:hollow/authentication/widgets/app_checkbox.dart';
import 'package:hollow_design_system/hollow_design_system.dart';

class OnboardingCheckbox extends StatelessWidget {
  const OnboardingCheckbox({
    Key? key,
    required this.title,
    this.value = false,
  }) : super(key: key);

  final String title;

  final bool value;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final color = value ? theme.colors.success : theme.colors.error;
    return AppContainer(
      width: double.maxFinite,
      padding: const AppEdgeInsets.only(bottom: AppGapSize.semiSmall),
      child: Row(
        children: [
          Transform.scale(
            scale: 0.8,
            child: AppCheckbox(
              value: value,
              size: theme.spacing.semiBig - 4,
              checkedColor: theme.colors.white,
              uncheckedColor: theme.colors.white,
              borderRadius: theme.radius.asBorderRadius().large,
              border: Border.all(
                color: color,
              ),
              checkedWidget: Icon(
                Icons.check,
                color: color,
                size: theme.spacing.regular,
              ),
            ),
          ),
          const AppGap.semiSmall(),
          AppText.paragraph2(
            title,
            color: color,
            fontWeight: value ? FontWeight.w500 : FontWeight.w400,
          )
        ],
      ),
    );
  }
}
