import 'package:flutter/cupertino.dart';
import 'package:hollow/app/router/router.dart';
import 'package:hollow/l10n/l10n.dart';
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
    final l10n = context.l10n;
    final theme = context.theme;
    return AppScaffold(
      backgroundColor: theme.colors.white,
      addSafeArea: true,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture(
              theme.images.appLogo,
              height: theme.spacing.large * 4,
              width: theme.spacing.large * 4,
            ),
            const AppGap.large(),
            AppText.heading4(
              l10n.welcome_to_hollow,
              fontWeight: FontWeight.w500,
            ),
            const AppGap.large(),
            AppButton(
              title: l10n.sign_in,
              onTap: () => context.pushNamed(Routes.login),
            ),
            const AppGap.semiBig(),
            AppButton(
              title: l10n.sign_up,
              color: theme.colors.white,
              textColor: theme.colors.primary600,
              borderColor: theme.colors.primary200.withOpacity(0.6),
              onTap: () => context.pushNamed(Routes.signUp),
            ),
          ],
        ),
      ),
    );
  }
}
