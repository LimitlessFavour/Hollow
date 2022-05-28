import 'package:flutter/cupertino.dart';
import 'package:hollow_design_system/hollow_design_system.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  static Page<void> page(ValueKey<String> key) => CupertinoPage(
        key: key,
        child: const WelcomePage(),
      );

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return AppScaffold(
      backgroundColor: theme.colors.white,
      body: Center(
        child: AppText.paragraph1('welcome page'),
      ),
    );
  }
}
