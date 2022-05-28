// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:hollow_design_system/hollow_design_system.dart';
import 'package:hollow_design_system/src/widgets/buttons/back_button.dart';

class AppScaffoldBar extends StatelessWidget implements PreferredSizeWidget {
  const AppScaffoldBar({
    Key? key,
    this.title,
    this.centerTitle = false,
    this.actions,
    this.appbarPreferredSize,
    this.leading,
  }) : super(key: key);

  final String? title;
  final List<Widget>? actions;
  final Size? appbarPreferredSize;
  final bool centerTitle;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    Widget? titleText;
    if (title != null) {
      titleText = AppText.heading5(
        title!,
        color: theme.colors.grey600,
        fontWeight: FontWeight.w500,
      );
    }

    Widget? leading;
    if (this.leading != null) {
      leading = this.leading;
    } else if (ModalRoute.of(context)?.canPop ?? false) {
      leading = const AppBackButton();
    }
    leading ??= const SizedBox();
    return AnimatedContainer(
      duration: theme.durations.regular,
      color: theme.colors.scaffoldBackground,
      child: AppBar(
        leading: leading,
        title: titleText,
        actions: actions,
        centerTitle: centerTitle,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(appbarPreferredSize?.height ?? kToolbarHeight);
}
