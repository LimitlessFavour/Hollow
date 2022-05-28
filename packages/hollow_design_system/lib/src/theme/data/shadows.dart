// ignore_for_file: public_member_api_docs

import 'package:equatable/equatable.dart';
import 'package:flutter/rendering.dart';
import 'package:hollow_design_system/src/utils/named.dart';

class AppShadowsData extends Equatable {
  const AppShadowsData({required this.big});

  //TODO add more instances
  factory AppShadowsData.regular() => const AppShadowsData(
        big: BoxShadow(
          blurRadius: 32,
          color: Color(0x44000000),
        ),
      );

  final BoxShadow big;

  @override
  List<Object?> get props => [
        big.named('big'),
      ];
}
