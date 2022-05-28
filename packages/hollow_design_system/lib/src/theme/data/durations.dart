// ignore_for_file: public_member_api_docs

import 'package:equatable/equatable.dart';
import 'package:hollow_design_system/src/utils/named.dart';

class AppDurationsData extends Equatable {
  const AppDurationsData({
    required this.isAnimationEnabled,
    required this.notificationInterval,
    required this.slow,
    required this.regular,
    required this.quick,
  });

  factory AppDurationsData.regular() => const AppDurationsData(
        isAnimationEnabled: true,
        notificationInterval: Duration(milliseconds: 2000),
        slow: Duration(milliseconds: 500),
        regular: Duration(milliseconds: 250),
        quick: Duration(milliseconds: 100),
      );

  final bool isAnimationEnabled;
  //interval between showing a notification and next action
  final Duration notificationInterval;
  final Duration slow;
  final Duration regular;
  final Duration quick;

  @override
  List<Object?> get props => [
        isAnimationEnabled,
        notificationInterval.named('notificationInterval'),
        slow.named('slow'),
        regular.named('regular'),
        quick.named('quick'),
      ];
}
