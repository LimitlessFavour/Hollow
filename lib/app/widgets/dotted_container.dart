import 'package:dotted_border/dotted_border.dart';
import 'package:hollow_design_system/hollow_design_system.dart';

class AppDottedContainer extends StatelessWidget {
  const AppDottedContainer({
    Key? key,
    this.child = const SizedBox(),
    this.radius,
    this.padding,
    this.color,
    this.margin = const AppEdgeInsets.only(),
  }) : super(key: key);

  final Widget child;
  final AppEdgeInsets margin;
  final AppEdgeInsets? padding;
  final Radius? radius;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final radius = this.radius ?? theme.radius.regular;
    return AppContainer(
      margin: margin,
      child: DottedBorder(
        borderType: BorderType.RRect,
        dashPattern: const [7, 7],
        radius: radius,
        color: color ?? theme.colors.grey003,
        child: ClipRRect(
          borderRadius: BorderRadius.all(radius),
          child: AppContainer(
            padding: padding,
            child: child,
          ),
        ),
      ),
    );
  }
}
