import 'package:flutter/widgets.dart';
import 'package:hollow_design_system/src/theme/theme.dart';

/// The different levels of Texts in app - Text hierarchy
enum AppTextLevel {
  // ignore: public_member_api_docs
  heading1,
// ignore: public_member_api_docs
  heading2,
  // ignore: public_member_api_docs
  heading3,
  // ignore: public_member_api_docs
  heading4,
  // ignore: public_member_api_docs
  heading5,
  // ignore: public_member_api_docs
  paragraph1,
  // ignore: public_member_api_docs
  paragraph2,
  // ignore: public_member_api_docs
  paragraph3,
}

/// Custom AppText widget from corresponding [AppTextLevel]
class AppText extends StatelessWidget {
  /// [AppText] widget constructor
  const AppText(
    this.data, {
    Key? key,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.maxLines,
    this.level = AppTextLevel.paragraph1,
    this.overflow,
    this.textAlign = TextAlign.start,
    this.fontStyle,
    this.decoration,
  }) : super(key: key);

  /// AppText widget from [AppTextLevel.heading1]
  ///  - [48]px (regular)
  const AppText.heading1(
    this.data, {
    Key? key,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.maxLines,
    this.textAlign = TextAlign.start,
    this.overflow,
    this.fontStyle,
    this.decoration,
  })  : level = AppTextLevel.heading1,
        super(key: key);

  /// AppText widget from [AppTextLevel.heading2]
  ///  - [36px] (regular)
  const AppText.heading2(
    this.data, {
    Key? key,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.maxLines,
    this.textAlign = TextAlign.start,
    this.overflow,
    this.fontStyle,
    this.decoration,
  })  : level = AppTextLevel.heading2,
        super(key: key);

  /// AppText widget from [AppTextLevel.heading3] - [24px](regular)
  const AppText.heading3(
    this.data, {
    Key? key,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.maxLines,
    this.textAlign = TextAlign.start,
    this.overflow,
    this.fontStyle,
    this.decoration,
  })  : level = AppTextLevel.heading3,
        super(key: key);

  /// AppText widget from [AppTextLevel.heading4] - [20px](regular)
  const AppText.heading4(
    this.data, {
    Key? key,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.maxLines,
    this.textAlign = TextAlign.start,
    this.overflow,
    this.fontStyle,
    this.decoration,
  })  : level = AppTextLevel.heading4,
        super(key: key);

  /// AppText widget from [AppTextLevel.heading5] - [18px](regular)
  const AppText.heading5(
    this.data, {
    Key? key,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.maxLines,
    this.textAlign = TextAlign.start,
    this.overflow,
    this.fontStyle,
    this.decoration,
  })  : level = AppTextLevel.heading5,
        super(key: key);

  /// AppText widget from [AppTextLevel.paragraph1] - [16px] (regular)
  const AppText.paragraph1(
    this.data, {
    Key? key,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.maxLines,
    this.textAlign = TextAlign.start,
    this.overflow,
    this.fontStyle,
    this.decoration,
  })  : level = AppTextLevel.paragraph1,
        super(key: key);

  /// AppText widget from [AppTextLevel.paragraph2] - [14px] (regular)
  const AppText.paragraph2(
    this.data, {
    Key? key,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.maxLines,
    this.textAlign = TextAlign.start,
    this.overflow,
    this.fontStyle,
    this.decoration,
  })  : level = AppTextLevel.paragraph2,
        super(key: key);

  /// AppText widget from [AppTextLevel.paragraph3] - [12px] (regular)
  const AppText.paragraph3(
    this.data, {
    Key? key,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.maxLines,
    this.textAlign = TextAlign.start,
    this.overflow,
    this.fontStyle,
    this.decoration,
  })  : level = AppTextLevel.paragraph3,
        super(key: key);


  ///The data held in the Text widget
  final String data;

  /// AppTextLevel
  final AppTextLevel level;

  /// Text color (32-bit)
  final Color? color;

  /// Text font size
  final double? fontSize;

  /// Text font size
  final FontWeight? fontWeight;

  /// Maximun number of lines the text can have
  final int? maxLines;

  /// How text is aligned vertically
  final TextAlign textAlign;

  /// How text overflow is handled
  final TextOverflow? overflow;

  ///Fontstyle
  final FontStyle? fontStyle;

  ///TextDecoration
  final TextDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    final color = this.color ?? theme.colors.grey900;
    final style = () {
      switch (level) {
        case AppTextLevel.heading1:
          return theme.typography.heading1;
        case AppTextLevel.heading2:
          return theme.typography.heading2;
        case AppTextLevel.heading3:
          return theme.typography.heading3;
        case AppTextLevel.heading4:
          return theme.typography.heading4;
        case AppTextLevel.heading5:
          return theme.typography.heading5;
        case AppTextLevel.paragraph1:
          return theme.typography.paragraph1;
        case AppTextLevel.paragraph2:
          return theme.typography.paragraph2;
        case AppTextLevel.paragraph3:
          return theme.typography.paragraph3;
      }
    }();
    return Text(
      data,
      style: style.copyWith(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        letterSpacing: 0.2,
        height: 1.3,
        fontStyle: fontStyle,
        decoration: decoration,
        decorationThickness: 0.5,
      ),
      maxLines: maxLines,
      overflow: overflow,
      textAlign: textAlign,
    );
  }
}
