part of '../views/tabs/home.dart';

class _CreateWalletCard extends StatelessWidget {
  const _CreateWalletCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
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
          ),
        ],
      ),
    );
  }
}
