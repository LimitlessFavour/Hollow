// ignore_for_file: public_member_api_docs
import 'package:hollow_design_system/hollow_design_system.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

final customWidth = CustomSliderWidths(
  trackWidth: 2,
  progressBarWidth: 10,
  shadowWidth: 20,
);
CustomSliderColors customColors(AppThemeData theme) => CustomSliderColors(
  dotColor: theme.colors.grey900,
  trackColor: theme.colors.secondaryYellowAccent,
  progressBarColors: [
    theme.colors.success,
    theme.colors.error,
  ],
  shadowColor: theme.colors.grey100,
  shadowMaxOpacity: 0.05,
);

class AppProgressIndicator extends StatelessWidget {
  const AppProgressIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return SleekCircularSlider(
      appearance: CircularSliderAppearance(
        customWidths: customWidth,
        customColors: customColors(theme),
        startAngle: 180,
        angleRange: 360,
        size: 130,
        spinnerMode: true,
        spinnerDuration: 15000
      ),
    );
  }
}
