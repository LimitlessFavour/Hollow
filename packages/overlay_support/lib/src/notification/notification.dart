// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:overlay_support/overlay_support.dart';

/// A notification show in front of screen and shown at the top.
class TopSlideNotification extends StatelessWidget {
  const TopSlideNotification({
    Key? key,
    required this.builder,
    required this.progress,
  }) : super(key: key);

  /// Which used to build notification content.
  final WidgetBuilder builder;

  final double progress;

  @override
  Widget build(BuildContext context) {
    return FractionalTranslation(
      translation:
          Offset.lerp(const Offset(0, -1), const Offset(0, 0.5), progress)!,
          // Offset.lerp(const Offset(0, -1), const Offset(0, 0), progress)!,
      child: builder(context),
    );
  }
}

/// a notification show in front of screen and shown at the bottom
class BottomSlideNotification extends StatelessWidget {
  const BottomSlideNotification({
    Key? key,
    required this.builder,
    required this.progress,
  }) : super(key: key);

  ///build notification content
  final WidgetBuilder builder;

  final double progress;

  @override
  Widget build(BuildContext context) {
    return FractionalTranslation(
      translation:
          Offset.lerp(const Offset(0, 1), const Offset(0, -0.5), progress)!,
          // Offset.lerp(const Offset(0, 1), const Offset(0, 0), progress)!,
      child: builder(context),
    );
  }
}

/// Can be dismiss by left or right slide.
class SlideDismissible extends StatelessWidget {
  const SlideDismissible({
    Key? key,
    required this.child,
    @Deprecated('use directions instead.') bool enable = true,
    DismissDirection? direction,
  })  : direction = direction ??
            (enable ? DismissDirection.horizontal : DismissDirection.none),
        super(key: key);

  final Widget child;

  final DismissDirection direction;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: key!,
      direction: direction,
      onDismissed: (direction) {
        OverlaySupportEntry.of(context)!.dismiss(animate: false);
      },
      child: child,
    );
  }
}

/// Indicates if notification is going to show at the [top] or at the [bottom].
enum NotificationPosition { top, bottom }
