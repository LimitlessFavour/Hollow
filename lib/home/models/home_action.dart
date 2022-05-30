import 'package:flutter/material.dart';

class HomeAction {
  const HomeAction({
    required this.icon,
    this.text = '',
    this.onPressed,
    this.backgroundColor,
    this.iconColor,
  });

  final String icon;
  final String text;
  final Color? backgroundColor;
  final Color? iconColor;
  final VoidCallback? onPressed;
}
