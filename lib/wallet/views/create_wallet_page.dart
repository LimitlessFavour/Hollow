import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hollow/wallet/cubit/create_wallet_cubit.dart';
import 'package:hollow_design_system/hollow_design_system.dart';


class CreateWalletPage extends StatelessWidget {
  const CreateWalletPage({Key? key}) : super(key: key);

  static Page<void> page(ValueKey<String> key) => CupertinoPage<void>(
        key: key,
        child: const CreateWalletPage(),
      );

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CreateWalletCubit(),
      child: const _CreateWalletView(),
    );
  }
}

class _CreateWalletView extends StatelessWidget {
  const _CreateWalletView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return AppScaffold(
      addSafeArea: true,
      body: Column(

      ),
    );
  }
}
