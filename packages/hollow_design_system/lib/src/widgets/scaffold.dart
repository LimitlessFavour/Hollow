// ignore_for_file: public_member_api_docs
import 'package:flutter/material.dart';
import 'package:hollow_design_system/hollow_design_system.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    Key? key,
    this.appbar,
    this.addSafeArea = false,
    this.inProgress = false,
    this.body,
    this.backgroundColor,
    this.bottomNavigationBar,
    this.padding,
    this.dismissKeyboardOnTap = true,
    this.floatingActionButton,
  }) : super(key: key);

  final bool addSafeArea;
  final PreferredSizeWidget? appbar;
  final Color? backgroundColor;
  final Widget? body;
  final Widget? bottomNavigationBar;
  final bool dismissKeyboardOnTap;
  final FloatingActionButton? floatingActionButton;
  final bool inProgress;
  final AppEdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final padding = this.padding ??
        AppEdgeInsets.only(
          left:
              theme.formFactor.isLarge ? AppGapSize.large : AppGapSize.semiBig,
          right:
              theme.formFactor.isLarge ? AppGapSize.large : AppGapSize.semiBig,
          top: AppGapSize.semiBig,
          bottom: AppGapSize.big,
        );

    Widget body = AppContainer(
      padding: padding,
      child: this.body,
    );
    if (addSafeArea) body = SafeArea(child: body);

    //dismiss on screen keyboard
    if (dismissKeyboardOnTap) {
      body = GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: body,
      );
    }
    return LoadingOverlay(
      inAsyncCall: inProgress,
      child: Scaffold(
        backgroundColor: theme.colors.scaffoldBackground,
        appBar: appbar,
        body: body,
        bottomNavigationBar: bottomNavigationBar,
        floatingActionButton: floatingActionButton,
      ),
    );
  }
}

class AppLightScaffold extends StatelessWidget {
  const AppLightScaffold({
    Key? key,
    this.backgroundColor,
    this.addSafeArea = false,
    this.inProgress = false,
    required this.body,
    this.floatingBar,
  }) : super(key: key);

  final bool addSafeArea;
  final Color? backgroundColor;
  final Widget body;
  final Widget? floatingBar;
  final bool inProgress;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final floatingBar = this.floatingBar;
    Widget child = AppContainer(
      decoration: BoxDecoration(
        color: backgroundColor ?? theme.colors.scaffoldBackground,
      ),
      child: Stack(
        children: [
          body,
          if (floatingBar != null)
            AnimatedPositioned(
              left: theme.spacing.semiBig,
              right: theme.spacing.semiBig,
              bottom: theme.spacing.big,
              duration: theme.durations.regular,
              child: floatingBar,
            ),
        ],
      ),
    );
    if (addSafeArea) child = SafeArea(child: child);
    return LoadingOverlay(
      inAsyncCall: inProgress,
      child: child,
    );
  }
}
