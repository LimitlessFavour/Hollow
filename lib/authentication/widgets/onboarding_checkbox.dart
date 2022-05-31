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
    return AppContainer(
      width: double.maxFinite,
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
                color: theme.colors.success,
              ),
              checkedWidget: Icon(
                Icons.check,
                color: theme.colors.success,
                size: theme.spacing.regular,
              ),
            ),
          ),
          const AppGap.semiSmall(),
          AppText.paragraph3(
            title,
            color: theme.colors.success,
          )
        ],
      ),
    );
  }
}
