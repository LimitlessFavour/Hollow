import 'package:flutter/cupertino.dart';
import 'package:hollow_design_system/hollow_design_system.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  static Page<void> page(ValueKey<String> key) => CupertinoPage(
        key: key,
        child: const SignUpPage(),
      );

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: Center(
        child: AppText.heading3('Sign up page'),
      ),
    );
  }
}
