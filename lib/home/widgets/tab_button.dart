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
    final theme = context.theme;
    final color =
        groupValue != value ? theme.colors.grey600 : theme.colors.primary600;
    return GestureDetector(
      onTap: onPressed ?? () => context.read<HomeCubit>().setHomeTab(value),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AppIcon.small(
            icon,
            color: color,
          ),
        ],
      ),
    );
  }
}
