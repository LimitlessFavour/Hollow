import 'package:flutter/material.dart';
import 'package:hollow/app/app.dart';
import 'package:hollow/home/models/models.dart';
import 'package:hollow/l10n/l10n.dart';
import 'package:hollow_design_system/hollow_design_system.dart';

part '../../widgets/create_wallet_card.dart';
part '../../widgets/home_action_button.dart';
part '../../widgets/recent_transactions.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AppContainer(
      child: AppScrollableColumn(
        children: [
          AppGap.large(scale: 1.2),
          _CreateWalletCard(),
          AppGap.big(),
          _HomeActions(),
          _RecentTransactions(),
        ],
      ),
    );
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
