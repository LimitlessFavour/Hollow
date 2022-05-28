// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:hollow_design_system/hollow_design_system.dart';

/// App Back button
class AppBackButton extends StatelessWidget {
  /// [AppBackButton] constructor
  const AppBackButton({
    Key? key,
    this.visible = true,
    this.addMargin = true,
  }) : super(key: key);

  ///[VoidCallback] that is called when button is pressed
  final bool visible;
  final bool addMargin;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Visibility(
      visible: visible,
      child: Center(
        child: GestureDetector(
          onTap: () => Navigator.maybePop(context),
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
              child: Icon(
                Icons.arrow_back,
                size: theme.spacing.semiBig,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
