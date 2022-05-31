part of '../views/tabs/home.dart';

class _RecentTransactions extends StatelessWidget {
  const _RecentTransactions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final theme = context.theme;
    return AppPadding(
      padding: const AppEdgeInsets.symmetric(horizontal: AppGapSize.semiBig),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppText.heading4(
                l10n.recent_transactions,
                fontFamily: AppFontFamily.karla,
                fontWeight: FontWeight.w500,
              ),
              GestureDetector(
                onTap: () => debugPrint('navigate to see all transactions'),
                child: AppText.paragraph1(
                  l10n.see_all,
                  color: theme.colors.primary600,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const AppGap.large(scale: 1.3),
          const _NoTransactionPlaceholder(),
        ],
      ),
    );
  }
}

class _NoTransactionPlaceholder extends StatelessWidget {
  const _NoTransactionPlaceholder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final theme = context.theme;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.string(
          theme.icons.characters.noTransaction,
          height: 128,
          width: 128,
        ),
        const AppGap.big(),
        AppText.heading5(
          l10n.no_transactions_yet,
          color: theme.colors.textCultureGrey
        ),
      ],
    );
  }
}
