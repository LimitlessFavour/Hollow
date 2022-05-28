import 'package:flutter/cupertino.dart';
import 'package:hollow_design_system/hollow_design_system.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  static Page<void> page(ValueKey<String> key) => CupertinoPage(
        key: key,
        child: const SignInPage(),
      );

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      body: Center(
        child: AppText.heading3('Sign up page'),
      ),
    );
  }
}
