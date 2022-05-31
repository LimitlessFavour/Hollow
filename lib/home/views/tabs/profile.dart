import 'package:hollow/app/app.dart';
import 'package:hollow/l10n/l10n.dart';
import 'package:hollow_design_system/hollow_design_system.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return AppContainer(
      padding: const AppEdgeInsets.symmetric(
        vertical: AppGapSize.large,
        horizontal: AppGapSize.big,
      ),
      child: Center(
        child: AppButton(
          title: l10n.logout,
          onTap: () {
            _showLogoutSheet(context).then((logout) {
              if (logout ?? false) {
                context.read<AppBloc>().add(const AppEvent.logoutRequested());
              }
            });
          },
        ),
      ),
    );
  }

  Future<bool?> _showLogoutSheet(BuildContext context) {
    final l10n = context.l10n;
    final theme = context.theme;
    return showAppModalSheet(
      context,
      maxHeightMultiplier: 0.4,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const AppGap.semiBig(),
        AppText.heading3(
          l10n.logout_que,
          fontWeight: FontWeight.w700,
          fontFamily: AppFontFamily.karla,
        ),
        const AppGap.regular(),
        AppText.paragraph1(
          l10n.are_you_sure_logout,
          textAlign: TextAlign.center,
          color: theme.colors.grey700,
        ),
        const AppGap.small(),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppButton(
              title: l10n.logout,
              onTap: () => Navigator.of(context).pop(true),
            ),
            const AppGap.regular(),
            AppButton(
              title: l10n.no_go_back,
              color: theme.colors.white,
              textColor: theme.colors.primary600,
              borderColor: theme.colors.primary200.withOpacity(0.6),
              onTap: () => Navigator.of(context).pop(false),
            ),
            const AppGap.large(),
          ],
        ),
      ],
    );
  }
}
