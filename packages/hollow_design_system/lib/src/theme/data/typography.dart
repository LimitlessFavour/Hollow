import 'package:equatable/equatable.dart';
import 'package:flutter/rendering.dart';
import 'package:hollow_design_system/src/utils/named.dart';

/// App Typography Data - Stated by design team
class AppTypographyData extends Equatable {
  /// Constructor
  const AppTypographyData({
    required this.heading1,
    required this.heading2,
    required this.heading3,
    required this.heading4,
    required this.heading5,
    required this.paragraph1,
    required this.paragraph2,
    required this.paragraph3,
  });

  //* 40, 32, 24, 20, 18, 16, 14, 12
  

  /// App Typography - small
  /// using regular fontSizes for small, might change later.
  factory AppTypographyData.small() => AppTypographyData.regular();

  /// App Typography - regular
  factory AppTypographyData.regular() => const AppTypographyData(
        heading1: TextStyle(
          fontFamily: 'Rubik',
          package: 'hollow_design_system',
          fontSize: 40,
          fontWeight: FontWeight.w700,
          decoration: TextDecoration.none,
        ),
        heading2: TextStyle(
          fontFamily: 'Rubik',
          package: 'hollow_design_system',
          fontSize: 32,
          fontWeight: FontWeight.w500,
          decoration: TextDecoration.none,
        ),
        heading3: TextStyle(
          fontFamily: 'Rubik',
          package: 'hollow_design_system',
          fontSize: 24,
          fontWeight: FontWeight.w700,
          decoration: TextDecoration.none,
        ),
        heading4: TextStyle(
          fontFamily: 'Rubik',
          package: 'hollow_design_system',
          fontSize: 20,
          fontWeight: FontWeight.w500,
          decoration: TextDecoration.none,
        ),
        heading5: TextStyle(
          fontFamily: 'Rubik',
          package: 'hollow_design_system',
          fontSize: 18,
          fontWeight: FontWeight.w500,
          decoration: TextDecoration.none,
        ),
        paragraph1: TextStyle(
          fontFamily: 'Rubik',
          package: 'hollow_design_system',
          fontWeight: FontWeight.w400,
          fontSize: 16,
          decoration: TextDecoration.none,
        ),
        paragraph2: TextStyle(
          fontFamily: 'Rubik',
          package: 'hollow_design_system',
          fontWeight: FontWeight.w400,
          fontSize: 14,
          decoration: TextDecoration.none,
        ),
        paragraph3: TextStyle(
          fontFamily: 'Rubik',
          package: 'hollow_design_system',
          fontWeight: FontWeight.w400,
          fontSize: 12,
          decoration: TextDecoration.none,
        ),
      );

  /// App Typography - large (font sizes needs to be fixed)
  /// currently apllying a scaling factor of 1.5
  factory AppTypographyData.large() => const AppTypographyData(
        heading1: TextStyle(
          fontFamily: 'Rubik',
          package: 'hollow_design_system',
          fontSize: 72,
          fontWeight: FontWeight.w500,
          decoration: TextDecoration.none,
        ),
        heading2: TextStyle(
          fontFamily: 'Rubik',
          package: 'hollow_design_system',
          fontSize: 54,
          fontWeight: FontWeight.w500,
          decoration: TextDecoration.none,
        ),
        heading3: TextStyle(
          fontFamily: 'Rubik',
          package: 'hollow_design_system',
          fontSize: 36,
          fontWeight: FontWeight.w700,
          decoration: TextDecoration.none,
        ),
        heading4: TextStyle(
          fontFamily: 'Rubik',
          package: 'hollow_design_system',
          fontSize: 30,
          fontWeight: FontWeight.w500,
          decoration: TextDecoration.none,
        ),
        heading5: TextStyle(
          fontFamily: 'Rubik',
          package: 'hollow_design_system',
          fontSize: 27,
          fontWeight: FontWeight.w500,
          decoration: TextDecoration.none,
        ),
        paragraph1: TextStyle(
          fontFamily: 'Rubik',
          package: 'hollow_design_system',
          fontWeight: FontWeight.w400,
          fontSize: 24,
          decoration: TextDecoration.none,
        ),
        paragraph2: TextStyle(
          fontFamily: 'Rubik',
          package: 'hollow_design_system',
          fontWeight: FontWeight.w400,
          fontSize: 21,
          decoration: TextDecoration.none,
        ),
        paragraph3: TextStyle(
          fontFamily: 'Rubik',
          package: 'hollow_design_system',
          fontWeight: FontWeight.w400,
          fontSize: 18,
          decoration: TextDecoration.none,
        ),
      );

  ///TextStyles - heading1
  final TextStyle heading1;

  ///TextStyles - heading2
  final TextStyle heading2;

  ///TextStyles - heading3
  final TextStyle heading3;

  ///TextStyles - heading4
  final TextStyle heading4;

  ///TextStyles - heading5
  final TextStyle heading5;

  ///TextStyles - paragraph1
  final TextStyle paragraph1;

  ///TextStyles - paragraph2

  final TextStyle paragraph2;

  ///TextStyles - paragraph3
  final TextStyle paragraph3;



  @override
  List<Object?> get props => [
        heading1.named('heading1'),
        heading2.named('heading2'),
        heading3.named('heading3'),
        heading4.named('heading4'),
        heading5.named('heading5'),
        paragraph1.named('paragraph1'),
        paragraph2.named('paragraph2'),
        paragraph3.named('paragraph3'),
      ];
}
