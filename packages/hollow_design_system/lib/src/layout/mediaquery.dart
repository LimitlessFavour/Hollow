import 'package:hollow_design_system/hollow_design_system.dart';

///Theme extension from context
extension SizeX on BuildContext {
  ///[MediaQuery] size from context
  Size get size => MediaQuery.of(this).size;

  ///[MediaQuery] width from context
  double get width => MediaQuery.of(this).size.width;

  ///[MediaQuery] height from context
  double get height => MediaQuery.of(this).size.height;
}
