import 'package:flutter/material.dart';
import 'package:hollow_design_system/hollow_design_system.dart';

Future<bool?> showAppModalSheet(
  BuildContext context, {
  List<Widget> children = const [],
  MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
  AppEdgeInsets padding = const AppEdgeInsets.only(
    left: AppGapSize.semiBig,
    top: AppGapSize.semiBig,
    right: AppGapSize.semiBig,
  ),
  bool scrollable = true,
  bool dismissable = true,
  double? maxHeightMultiplier,
  Widget Function(BuildContext)? builder,
}) {
  return showModalBottomSheet<bool>(
    context: context,
    isDismissible: dismissable,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: context.theme.radius.regular,
        topRight: context.theme.radius.regular,
      ),
    ),
    isScrollControlled: true,
    constraints: BoxConstraints(
      maxHeight: context.height * (maxHeightMultiplier ?? 0.80),
    ),
    builder: builder ??
        (context) {
          return AppContainer(
            padding: padding,
            decoration: BoxDecoration(
              color: context.theme.colors.white,
              borderRadius: BorderRadius.only(
                topLeft: context.theme.radius.regular,
                topRight: context.theme.radius.regular,
              ),
            ),
            child: Column(
              mainAxisAlignment: mainAxisAlignment,
              children: children,
            ),
          );
        },
  );
}
