import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hollow/home/cubit/home_cubit.dart';
import 'package:hollow/home/views/tabs/tabs.dart';
import 'package:hollow/l10n/l10n.dart';
import 'package:hollow_design_system/hollow_design_system.dart';

part '../widgets/tab_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static Page<void> page(ValueKey<String> key) => CupertinoPage<void>(
        key: key,
        child: const HomePage(),
      );

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HomeCubit(),
      child: const HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final icons = context.theme.icons.characters;
    final selectedTab =
        context.select((HomeCubit cubit) => cubit.state.homeTab);
    return AppLightScaffold(
      body: IndexedStack(
        index: selectedTab.index,
        children: const [Home(), Wallets(), Transactions(), Profile()],
      ),
      floatingBar: AppContainer(
        padding: const AppEdgeInsets.big(),
        decoration: BoxDecoration(
          color: theme.colors.white,
          borderRadius: theme.radius.asBorderRadius().regular,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _HomeTabButton(
              groupValue: selectedTab,
              value: HomeTab.home,
              icon: icons.home,
            ),
            _HomeTabButton(
              groupValue: selectedTab,
              value: HomeTab.wallets,
              icon: icons.wallet,
            ),
            _HomeTabButton(
              groupValue: selectedTab,
              value: HomeTab.transactions,
              icon: icons.card,
            ),
            _HomeTabButton(
              groupValue: selectedTab,
              value: HomeTab.profile,
              icon: icons.user,
            ),
          ],
        ),
      ),
    );
  }
}
