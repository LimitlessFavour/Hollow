part of '../views/tabs/home.dart';

class _CreateWalletCard extends StatelessWidget {
  const _CreateWalletCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final theme = context.theme;
    return _BaseWalletCard(
      child: Center(
        child: GestureDetector(
          onTap: () => context.pushNamed(Routes.createWallet),
          child: AppDottedContainer(
            radius: theme.radius.big,
            color: theme.colors.grey400,
            padding: const AppEdgeInsets.symmetric(
              vertical: AppGapSize.regular,
              horizontal: AppGapSize.big,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                AppText(
                  l10n.create_wallet,
                  fontFamily: AppFontFamily.karla,
                  fontWeight: FontWeight.w500,
                  color: theme.colors.grey100,
                ),
                const AppGap.regular(),
                AppIcon.regular(
                  theme.icons.characters.addIcon,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _WalletCard extends StatelessWidget {
  const _WalletCard(this.wallet, {Key? key}) : super(key: key);

  final Wallet wallet;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final theme = context.theme;
    final white = theme.colors.white;
    final currencyName = wallet.currency!.name!;
    final balance = l10n.currency_balance.replaceAll('%1', currencyName);

    return _BaseWalletCard(
      child: AppPadding.semiBig(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText.paragraph2(
                      balance,
                      color: theme.colors.textCultureGrey,
                    ),
                    const AppGap.big(scale: 0.5),
                    AppText.heading2(
                      '${currencyName.characters.first}4,295.03', //should be wallet balance.
                      fontFamily: AppFontFamily.karla,
                      fontWeight: FontWeight.w700,
                      color: theme.colors.white,
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () => context.pushNamed(Routes.createWallet),
                  child: AppIcon.regular(
                    theme.icons.characters.addIcon,
                    color: theme.colors.textCultureGrey,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                _WalletButton(
                  text: l10n.withdraw,
                  textColor: white,
                  borderColor: white,
                  onPressed: () => debugPrint('should withdraw'),
                ),
                const AppGap.semiSmall(),
                _WalletButton(
                  text: l10n.fund,
                  color: white,
                  textColor: theme.colors.primary600,
                  borderColor: white,
                  onPressed: () => debugPrint('should fund'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _WalletButton extends StatelessWidget {
  const _WalletButton({
    Key? key,
    this.onPressed,
    required this.text,
    this.textColor,
    this.borderColor,
    this.color,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final String text;
  final Color? textColor;
  final Color? borderColor;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      width: context.width / 3,
      decoration: BoxDecoration(
        color: color,
        borderRadius: context.theme.radius.asBorderRadius().mini,
        border: Border.all(
          color: borderColor ?? Colors.transparent,
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: context.theme.radius.asBorderRadius().mini,
          onTap: onPressed,
          child: AppPadding(
            padding: const AppEdgeInsets.symmetric(
              vertical: AppGapSize.regular,
            ),
            child: Center(
              child: AppText.paragraph3(
                text,
                color: textColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _BaseWalletCard extends StatelessWidget {
  const _BaseWalletCard({Key? key, this.child = const SizedBox.shrink()})
      : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final height = context.height / 4;
    final commonRadius = theme.radius.asBorderRadius().big;
    const margin = AppEdgeInsets.symmetric(horizontal: AppGapSize.semiBig);
    final fadedColor = theme.colors.secondaryBlueAccent.withOpacity(0.30);
    return AppContainer(
      width: double.maxFinite,
      height: height,
      child: Stack(
        children: [
          Transform.rotate(
            angle: -0.1396, //*8 degrees to rad.
            child: AppContainer(
              height: height,
              margin: margin,
              decoration: BoxDecoration(
                color: fadedColor,
                borderRadius: commonRadius,
              ),
            ),
          ),
          AppContainer(
            margin: margin,
            height: height,
            decoration: BoxDecoration(
              color: theme.colors.secondaryBlueAccent,
              borderRadius: commonRadius,
            ),
            child: child,
          ),
        ],
      ),
    );
  }
}
