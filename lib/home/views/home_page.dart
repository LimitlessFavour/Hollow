import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hollow/home/cubit/home_cubit.dart';
import 'package:hollow/home/views/tabs/tabs.dart';
import 'package:hollow_design_system/hollow_design_system.dart';


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
      addSafeArea: true,
      body: IndexedStack(
        index: selectedTab.index,
        children: const [Home(), Wallets(), Transactions(), Profile()],
      ),
      floatingBar: SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // _HomeTabButton(
            //   groupValue: selectedTab,
            //   value: HomeTab.home,
            //   icon: icons.home,
            // ),
            // _HomeTabButton(
            //   groupValue: selectedTab,
            //   value: HomeTab.wagers,
            //   icon: icons.spade,
            // ),
            // _HomeTabButton(
            //   groupValue: selectedTab,
            //   value: HomeTab.notification,
            //   icon: icons.bell,
            // ),
            // _HomeTabButton(
            //   groupValue: selectedTab,
            //   value: HomeTab.more,
            //   icon: icons.more,
            //   onPressed: () => AppFlash.showMoreBottomSheet(context),
            // ),
          ],
        ),
      ),
    );
  }
}
