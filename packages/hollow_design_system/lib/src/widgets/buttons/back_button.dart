// ignore_for_file: public_member_api_docs

import 'package:hollow_design_system/hollow_design_system.dart';

/// App Back button
class AppBackButton extends StatelessWidget {
  /// [AppBackButton] constructor
  const AppBackButton({
    Key? key,
    this.visible = true,
    this.addMargin = true,
    this.onPressed,
  }) : super(key: key);

  ///[VoidCallback] that is called when button is pressed
  final bool visible;
  final bool addMargin;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Visibility(
      visible: visible,
      child: Center(
        child: GestureDetector(
          onTap: onPressed ?? () => Navigator.maybePop(context),
          child: AppContainer(
            height: theme.spacing.big,
            width: theme.spacing.big,
            margin: AppEdgeInsets.only(
              left: addMargin ? AppGapSize.regular : AppGapSize.none,
            ),
            decoration: BoxDecoration(
              borderRadius: theme.radius.asBorderRadius().mini,
            ),
            child: Center(
              child: AppIcon.regular(
                theme.icons.characters.arrowLeft,
                color: theme.colors.textCultureGrey,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
