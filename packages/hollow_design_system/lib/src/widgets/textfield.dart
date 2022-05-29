import 'package:flutter/material.dart';
import 'package:hollow_design_system/hollow_design_system.dart';

/// Custom TextField widget
class AppTextField extends StatelessWidget {
  /// [AppTextField] constructor
  const AppTextField({
    Key? key,
    this.controller,
    this.onChanged,
    this.autofocus = false,
    this.obscureText = false,
    this.hintText,
    this.errorText,
    this.keyboardType,
    this.maxLines,
    this.suffixIcon,
    this.fillColor,
    this.borderColor,
    this.padding = const AppEdgeInsets.only(),
  }) : super(key: key);

  ///TextController
  final TextEditingController? controller;

  ///Gets called when text value changes
  final Function(String)? onChanged;

  /// Hide text content
  final bool obscureText;

  ///autofocus
  final bool autofocus;

  /// Hint text
  final String? hintText;

  /// Error text
  final String? errorText;

  ///Keyboard input type
  final TextInputType? keyboardType;

  ///Max number of lines
  final int? maxLines;

  ///SuffixIcon widget
  final Widget? suffixIcon;

  ///Fill Color
  final Color? fillColor;

  ///Border Color
  final Color? borderColor;

  final AppEdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final commonBorderRadius = theme.radius.asBorderRadius().big;
    final fieldBorder = OutlineInputBorder(
      borderSide: BorderSide(
        color: borderColor ?? theme.colors.grey600,
        // width: 1.0,
      ),
      borderRadius: commonBorderRadius,
    );

    final focusedBorder = OutlineInputBorder(
      borderSide: BorderSide(
        color: borderColor ?? theme.colors.success,
        // width: 1.0,
      ),
      borderRadius: commonBorderRadius,
    );

    final errorBorder = OutlineInputBorder(
      borderSide: BorderSide(
        color: borderColor ?? theme.colors.error,
        // width: 1.0,
      ),
      borderRadius: commonBorderRadius,
    );

    return Focus(
      child: Builder(
        builder: (context) {
          final focusNode = Focus.of(context);
          final hasFocus = focusNode.hasFocus;
          return AppPadding(
            padding: padding,
            child: TextField(
              controller: controller,
              onChanged: onChanged,
              autofocus: autofocus,
              maxLines: maxLines,
              cursorColor: theme.colors.success,
              keyboardType: keyboardType,
              textAlignVertical: TextAlignVertical.center,
              textInputAction: TextInputAction.next,
              obscureText: obscureText,
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: theme.typography.paragraph1
                    .copyWith(color: theme.colors.grey600),
                enabledBorder: fieldBorder,
                focusedBorder: focusedBorder,
                fillColor: fillColor ??
                    (hasFocus
                        ? theme.colors.scaffoldBackground
                        : theme.colors.scaffoldBackground),
                suffix: suffixIcon,
                errorBorder: errorBorder,
                focusedErrorBorder: errorBorder,
                filled: true,
                contentPadding: const EdgeInsets.fromLTRB(30, 24, 12, 12),
              ),
              style: theme.typography.paragraph2.copyWith(
                color: theme.colors.grey900,
              ),
            ),
          );
        },
      ),
    );
  }
}
