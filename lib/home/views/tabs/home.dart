import 'package:flutter/material.dart';
import 'package:hollow/app/app.dart';
import 'package:hollow/home/models/models.dart';
import 'package:hollow/l10n/l10n.dart';
import 'package:hollow_design_system/hollow_design_system.dart';
import 'package:shared/shared.dart';

part '../../widgets/wallet_cards.dart';
part '../../widgets/home_action_button.dart';
part '../../widgets/recent_transactions.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AppContainer(
      child: AppScrollableColumn(
        children: [
          AppGap.semiBig(),
          _LeadingRow(),
          _Wallet(),
          AppGap.big(),
          _HomeActions(),
          _RecentTransactions(),
          AppGap.large(scale: 2.5),
        ],
      ),
    );
  }
}

class _LeadingRow extends StatelessWidget {
  const _LeadingRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return AppPadding(
      padding: const AppEdgeInsets.symmetric(
        vertical: AppGapSize.big,
        horizontal: AppGapSize.semiBig,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const _WelcomeText(),
          AppIcon.regular(
            theme.icons.characters.notificationBell,
            color: theme.colors.grey700,
          ),
        ],
      ),
    );
  }
}

class _WelcomeText extends StatelessWidget {
  const _WelcomeText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final theme = context.theme;
    final name = context.read<AppBloc>().state.user.firstname ?? '';
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText.paragraph1(
          '${l10n.hi}, $name',
          color: theme.colors.grey600,
        ),
        AppText.heading3(
          l10n.welcome_back,
          fontWeight: FontWeight.w700,
          fontFamily: AppFontFamily.karla,
        ),
      ],
    );
  }
}

class _Wallet extends StatefulWidget {
  const _Wallet({
    Key? key,
  }) : super(key: key);

  @override
  State<_Wallet> createState() => _WalletState();
}

class _WalletState extends State<_Wallet> {
  late final PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final appBloc = context.read<AppBloc>();
    final wallets = appBloc.state.user.wallets;
    if (wallets.isEmpty) {
      return const _CreateWalletCard();
    }
    return SizedBox(
      height: context.height / 3.8,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: context.height / 4,
              child: PageView.builder(
                controller: pageController,
                itemBuilder: (context, index) {
                  return _WalletCard(wallets[index]);
                },
                itemCount: wallets.length,
              ),
            ),
            _WalletCountIndicator(pageController),
          ],
        ),
      ),
    );
  }
}

class _WalletCountIndicator extends StatelessWidget {
  const _WalletCountIndicator(
    this.controller, {
    Key? key,
  }) : super(key: key);

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class _HomeActions extends StatelessWidget {
  const _HomeActions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final actions = actionsList(context);
    return AppContainer(
      padding: const AppEdgeInsets.all(AppGapSize.semiBig),
      margin: const AppEdgeInsets.all(AppGapSize.semiBig),
      decoration: BoxDecoration(
        color: theme.colors.white,
        borderRadius: theme.radius.asBorderRadius().big,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _HomeActionButton(actions[0]),
              _HomeActionButton(actions[1]),
              _HomeActionButton(actions[2]),
            ],
          ),
          const AppGap.semiBig(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _HomeActionButton(actions[3]),
              _HomeActionButton(actions[4]),
              _HomeActionButton(actions[5]),
            ],
          ),
        ],
      ),
    );
  }

  List<HomeAction> actionsList(BuildContext context) {
    final l10n = context.l10n;
    final theme = context.theme;
    return [
      HomeAction(
        icon: theme.icons.characters.dollar,
        backgroundColor: theme.colors.orange100,
        iconColor: theme.colors.orange500,
        text: l10n.send_money,
        onPressed: () {},
      ),
      HomeAction(
        icon: theme.icons.characters.convert,
        backgroundColor: theme.colors.blue100,
        iconColor: theme.colors.blue500,
        text: l10n.convert,
        onPressed: () {},
      ),
      HomeAction(
        icon: theme.icons.characters.money,
        backgroundColor: theme.colors.purple100,
        iconColor: theme.colors.purple500,
        text: l10n.airtime_data,
        onPressed: () {},
      ),
      HomeAction(
        icon: theme.icons.characters.safeHome,
        backgroundColor: theme.colors.purple100,
        iconColor: theme.colors.purple500,
        text: l10n.virtual_acc,
        onPressed: () {},
      ),
      HomeAction(
        icon: theme.icons.characters.ticketStar,
        backgroundColor: theme.colors.orange100,
        iconColor: theme.colors.orange500,
        text: l10n.tickets_n_events,
        onPressed: () {},
      ),
      HomeAction(
        icon: theme.icons.characters.more,
        backgroundColor: theme.colors.orange100,
        iconColor: theme.colors.orange500,
        text: l10n.more,
        onPressed: () {},
      ),
    ];
  }
}
