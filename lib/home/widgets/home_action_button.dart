part of '../views/tabs/home.dart';

class _HomeActionButton extends StatelessWidget {
  const _HomeActionButton(
    this.action, {
    Key? key,
  }) : super(key: key);

  final HomeAction action;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AppContainer(
            decoration: BoxDecoration(
              color: action.backgroundColor,
              shape: BoxShape.circle,
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                customBorder: const CircleBorder(),
                onTap: action.onPressed,
                child: AppPadding.regular(
                  child: AppIcon.regular(
                    action.icon,
                    color: action.iconColor,
                  ),
                ),
              ),
            ),
          ),
          const AppGap.big(scale: 0.5),
          AppText.paragraph2(
            action.text,
            color: theme.colors.grey800,
          ),
        ],
      ),
    );
  }
}
