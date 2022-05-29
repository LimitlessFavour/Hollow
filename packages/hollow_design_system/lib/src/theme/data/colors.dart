// ignore_for_file: public_member_api_docs
import 'package:equatable/equatable.dart';
import 'package:flutter/rendering.dart';
import 'package:hollow_design_system/src/utils/named.dart';

class AppColorsData extends Equatable {
  const AppColorsData({
    //error
    required this.error,
    //success
    required this.success,
    //primary
    required this.primary600,
    required this.primary200,
    //secondary
    required this.secondaryBlueAccent,
    required this.secondaryYellowAccent,
    //grey
    required this.grey900,
    required this.grey700,
    required this.grey600,
    required this.grey400,
    required this.grey100,
    required this.grey003,
    //icon
    required this.suffixIconColor,
    //background
    required this.scaffoldBackground,
    required this.white,
  });

  factory AppColorsData.light() => const AppColorsData(
        //error
        error: Color(0xFFF04438),
        //success
        success: Color(0xFF1B9B48),
        //primary
        primary600: Color(0xFF111834),
        primary200: Color(0xFFB1B4BF),
        //secondary
        secondaryBlueAccent: Color(0xFF141D3E),
        secondaryYellowAccent: Color(0xFFEAECF0),
        // grey
        grey900: Color(0xFF212327),
        grey700: Color(0xFF444B59),
        grey600: Color(0xFF667085),
        grey400: Color(0xFFF9FAFB),
        grey100: Color(0xFFFAFAFB),
        grey003: Color(0xFFFCFCFD),
        //icon
        suffixIconColor: Color(0xFF292D32),
        //background
        scaffoldBackground: Color(0xFFFAFAFB),
        white: Color(0xFFFFFFFF),
      );

  //no dark mode colors available yet.
  factory AppColorsData.dark() => AppColorsData.light();

  final Color error;
  final Color success;
  //primary
  final Color primary600;
  final Color primary200;
  //secondary
  final Color secondaryBlueAccent;
  final Color secondaryYellowAccent;
  //grey
  final Color grey900;
  final Color grey700;
  final Color grey600;
  final Color grey400;
  final Color grey100;
  final Color grey003;
  //icon
  final Color suffixIconColor;
  //background
  final Color scaffoldBackground;
  final Color white;

  @override
  List<Object?> get props => [
        error.named('error'),
        success.named('success'),
        //primary
        primary600.named('primary600'),
        primary200.named('primary200'),
        //secondary
        secondaryBlueAccent.named('secondaryBlueAccent'),
        secondaryYellowAccent.named('secondaryYellowAccent'),
        //grey
        grey900.named('grey900'),
        grey700.named('textgrey700'),
        grey600.named('grey600'),
        grey400.named('grey400'),
        grey100.named('grey100'),
        //icon
        suffixIconColor.named('suffixIconColor'),
      //background
        scaffoldBackground.named('background'),
        white.named('white'),
      ];
}
