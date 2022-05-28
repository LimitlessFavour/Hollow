// ignore_for_file: public_member_api_docs
import 'package:hollow_design_system/hollow_design_system.dart';

class AppExpanded extends StatelessWidget {
  const AppExpanded(
    Key? key, {
    required this.child,
    this.flex = 1,
  }) : super(key: key);

  const AppExpanded.regular({
    Key? key,
    Widget content = const SizedBox(),
    this.flex = 1,
  })  : child = content,
        super(key: key);

  AppExpanded.column({
    Key? key,
    this.flex = 1,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    required List<Widget> children,
  })  : child = Column(
          mainAxisAlignment: mainAxisAlignment,
          crossAxisAlignment: crossAxisAlignment,
          children: children,
        ),
        super(key: key);

  AppExpanded.scrollableColumn({
    Key? key,
    this.flex = 1,
    CrossAxisAlignment? crossAxisAlignment,
    MainAxisAlignment? mainAxisAlignment,
    VerticalDirection? verticalDirection,
    EdgeInsetsGeometry? padding,
    TextDirection? textDirection,
    TextBaseline? textBaseline,
    ScrollPhysics? physics,
    required List<Widget> children,
  })  : child = AppScrollableColumn(
          physics: physics,
          padding: padding,
          mainAxisAlignment: mainAxisAlignment,
          crossAxisAlignment: crossAxisAlignment,
          verticalDirection: verticalDirection,
          textDirection: textDirection,
          textBaseline: textBaseline,
          children: children,
        ),
        super(key: key);

  final Widget child;
  final int flex;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: child,
    );
  }
}
