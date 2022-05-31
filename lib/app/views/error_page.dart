import 'package:flutter/cupertino.dart';
import 'package:hollow/app/router/router.dart';
import 'package:hollow/l10n/l10n.dart';
import 'package:hollow_design_system/hollow_design_system.dart';

class ErrorPage extends StatefulWidget {
  const ErrorPage({Key? key}) : super(key: key);

  static Page<void> page(ValueKey<String> key) => CupertinoPage(
        key: key,
        child: const ErrorPage(),
      );

  @override
  State<ErrorPage> createState() => _ErrorPageState();
}

class _ErrorPageState extends State<ErrorPage> {
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final theme = context.theme;
    return AppScaffold(
      backgroundColor: theme.colors.white,
      addSafeArea: true,
      body: Center(
        child: AppText.paragraph1(l10n.error_page),
      ),
    );
  }
}
