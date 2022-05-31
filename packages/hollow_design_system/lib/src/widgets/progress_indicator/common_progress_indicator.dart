// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:hollow_design_system/hollow_design_system.dart';

class CommonProgressIndicator extends StatelessWidget {
  const CommonProgressIndicator({
    Key? key,
    this.color,
    this.size = 14.0,
  }) : super(key: key);

  final Color? color;
  final double size;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return ProgressIndicator(
      width: size,
      height: size,
      color: color ?? theme.colors.primary600,
    );
  }
}

class ProgressIndicator extends StatelessWidget {
  const ProgressIndicator({
    Key? key,
    required this.width,
    required this.height,
    required this.color,
  }) : super(key: key);

  final double width;
  final double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: CircularProgressIndicator(
        strokeWidth: 2,
        valueColor: AlwaysStoppedAnimation<Color>(color),
      ),
    );
  }
}
