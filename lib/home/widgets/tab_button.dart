part of '../views/home_page.dart';

class _HomeTabButton extends StatelessWidget {
  const _HomeTabButton(
      {Key? key,
      required this.groupValue,
      required this.value,
      required this.icon,
      this.onPressed})
      : super(key: key);

  final HomeTab groupValue;
  final HomeTab value;
  final String icon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final theme = context.theme;
    final color =
        groupValue != value ? theme.colors.grey600 : theme.colors.primary600;
    return GestureDetector(
      onTap: onPressed ?? () => context.read<HomeCubit>().setHomeTab(value),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const AppGap.semiBig(),
          AppIcon.regular(
            icon,
            color: color,
          ),
          const AppGap.small(),
          AppText.paragraph3(
            value.text(l10n),
            color: color,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

extension _Text on HomeTab {
  String text(AppLocalizations l10n) {
    switch (this) {
      case HomeTab.home:
        return 'l10n.home';
      case HomeTab.profile:
        return 'l10n.profile';
      case HomeTab.wallets:
        return 'l10n.wallets';
      case HomeTab.transactions:
        return 'l10n.transactions';
    }
  }
}
