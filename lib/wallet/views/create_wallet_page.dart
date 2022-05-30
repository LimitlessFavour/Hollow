import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hollow/app/app.dart';
import 'package:hollow/l10n/l10n.dart';
import 'package:hollow/wallet/cubit/create_wallet_cubit.dart';
import 'package:hollow_design_system/hollow_design_system.dart';
import 'package:shared/shared.dart';

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
    return BlocConsumer<CreateWalletCubit, CreateWalletState>(
      listenWhen: (previous, current) =>
          previous.createWalletStatus != current.createWalletStatus,
      buildWhen: (previous, current) =>
          previous.createWalletStatus != current.createWalletStatus,
      listener: (context, state) {
        if (state.createWalletStatus.isSuccessful) {
          _showCreationConfirmationSheet(context);
        }
      },
      builder: (context, state) {
        return AppScaffold(
          appbar: const AppScaffoldBar(leading: _BackButton()),
          addSafeArea: true,
          inProgress: state.createWalletStatus.isCreating,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              _HeaderText(),
              AppGap.regular(),
              _DescriptionTexts(),
              AppGap.big(),
              _Dropdowns(),
              Spacer(),
              _Button()
            ],
          ),
        );
      },
    );
  }

  Future<bool?> _showCreationConfirmationSheet(BuildContext context) {
    final l10n = context.l10n;
    final theme = context.theme;
    return showAppModalSheet(
      context,
      dismissable: false,
      maxHeightMultiplier: 0.5,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      padding: const AppEdgeInsets.semiBig(),
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppContainer(
              width: double.maxFinite,
              padding: const AppEdgeInsets.all(AppGapSize.regular),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: theme.colors.success100,
                border: Border.all(
                  width: theme.spacing.semiSmall,
                  color: theme.colors.success50,
                ),
              ),
              child: AppIcon.semiBig(
                theme.icons.characters.checkCircle,
                color: theme.colors.success,
              ),
            ),
            const AppGap.semiBig(),
            AppText.heading3(
              l10n.successfull,
              color: theme.colors.success600,
              fontWeight: FontWeight.w700,
              fontFamily: AppFontFamily.karla,
            ),
            const AppGap.regular(),
            AppText.paragraph1(
              l10n.your_wallet_created_successfully,
              textAlign: TextAlign.center,
              color: theme.colors.grey700,
            ),
          ],
        ),
        const AppGap.small(),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppButton(
              title: l10n.fund_wallet,
              onTap: () {
                debugPrint('should fund wallet');
              },
            ),
            const AppGap.regular(),
            AppButton(
              title: l10n.back_to_home,
              onTap: () {
                context.pushNamed(Routes.home);
              },
            ),
          ],
        ),
      ],
    );
  }
}

class _BackButton extends StatelessWidget {
  const _BackButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBackButton(
      onPressed: () {
        final cubit = context.read<CreateWalletCubit>();
        final walletTypeSelected = cubit.state.wallet.type != null;
        if (walletTypeSelected) {
          cubit.unselectWalletType();
        } else {
          context.pop();
        }
      },
    );
  }
}

class _Dropdowns extends StatelessWidget {
  const _Dropdowns({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;

    return BlocBuilder<CreateWalletCubit, CreateWalletState>(
      builder: (context, state) {
        final walletTypeSelected = state.wallet.type != null;
        return AnimatedSwitcher(
          duration: theme.durations.regular,
          child: walletTypeSelected
              ? const _WalletCurrencyDropdown()
              : const _WalletTypeDropdown(),
        );
      },
    );
  }
}

class _HeaderText extends StatelessWidget {
  const _HeaderText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return AppText.heading3(
      l10n.create_new_wallet,
      fontWeight: FontWeight.w700,
      fontFamily: AppFontFamily.karla,
    );
  }
}

class _DescriptionTexts extends StatelessWidget {
  const _DescriptionTexts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final theme = context.theme;
    return BlocBuilder<CreateWalletCubit, CreateWalletState>(
      buildWhen: (previous, current) =>
          previous.wallet.type != current.wallet.type,
      builder: (context, state) {
        final walletTypeSelected = state.wallet.type != null;
        final text = walletTypeSelected
            ? l10n.please_fill_details_wallet
            : l10n.what_type_wallet;
        return AnimatedSwitcher(
          duration: theme.durations.regular,
          child: AppText.paragraph1(
            text,
            key: ValueKey<String>(text),
            color: theme.colors.grey700,
          ),
        );
      },
    );
  }
}

class _Button extends StatelessWidget {
  const _Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return BlocBuilder<CreateWalletCubit, CreateWalletState>(
      buildWhen: (previous, current) =>
          previous.wallet.type != current.wallet.type,
      builder: (context, state) {
        final walletTypeSelected = state.wallet.type != null;
        return AnimatedSwitcher(
          duration: theme.durations.regular,
          child: walletTypeSelected
              ? const _CreateWalletButton()
              : const _ChooseWalletTypeButton(),
        );
      },
    );
  }
}

class _ChooseWalletTypeButton extends StatelessWidget {
  const _ChooseWalletTypeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final selectedWalletType = context.select(
      (CreateWalletCubit cubit) => cubit.state.walletType,
    );
    return AppButton(
      title: l10n.proceed,
      onTap: selectedWalletType != null
          ? () => context.read<CreateWalletCubit>().proceedWithWalletType()
          : null,
    );
  }
}

class _CreateWalletButton extends StatelessWidget {
  const _CreateWalletButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final selectedWalletCurrency = context.select(
      (CreateWalletCubit cubit) => cubit.state.wallet.currency,
    );
    return AppButton(
      title: l10n.create_wallet,
      onTap: selectedWalletCurrency != null
          ? () => context.read<CreateWalletCubit>().createWallet()
          : null,
    );
  }
}

class _WalletTypeDropdown extends StatelessWidget {
  const _WalletTypeDropdown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final theme = context.theme;
    final selectedWalletType = context.select(
      (CreateWalletCubit cubit) => cubit.state.walletType,
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText.paragraph2(
          l10n.choose_wallet,
          color: theme.colors.grey600,
        ),
        const AppGap.small(),
        DropdownButtonHideUnderline(
          child: InputDecorator(
            decoration: dropdownDecoration(theme),
            child: DropdownButton<WalletType>(
              isExpanded: true,
              dropdownColor: theme.colors.white,
              value: selectedWalletType,
              items: [
                DropdownMenuItem(
                  value: WalletType.crypto,
                  child: AppText.paragraph1(l10n.crypto_wallet),
                ),
                DropdownMenuItem(
                  value: WalletType.fiat,
                  child: AppText.paragraph1(l10n.fiat_wallet),
                ),
              ],
              hint: AppText.paragraph1(
                l10n.search_item,
                fontStyle: FontStyle.italic,
                color: theme.colors.grey600,
              ),
              onChanged: (WalletType? type) =>
                  context.read<CreateWalletCubit>().selectWalletType(type),
            ),
          ),
        ),
      ],
    );
  }
}

class _WalletCurrencyDropdown extends StatefulWidget {
  const _WalletCurrencyDropdown({Key? key}) : super(key: key);

  @override
  State<_WalletCurrencyDropdown> createState() =>
      _WalletCurrencyDropdownState();
}

class _WalletCurrencyDropdownState extends State<_WalletCurrencyDropdown> {
  @override
  void initState() {
    super.initState();
    context.read<CreateWalletCubit>().fetchAvailableCurrencies();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final theme = context.theme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText.paragraph2(
          l10n.select_country_currency,
          color: theme.colors.grey600,
        ),
        const AppGap.small(),
        BlocBuilder<CreateWalletCubit, CreateWalletState>(
          builder: (BuildContext context, CreateWalletState state) {
            final fetching = state.fetchCurrenciesStatus.isFetching;
            final currencies = state.availableCurrencies;
            final selectedCurrency = state.wallet.currency;
            return AppPadding(
              padding: const AppEdgeInsets.only(
                top: AppGapSize.regular,
                bottom: AppGapSize.regular,
              ),
              child: DropdownButtonHideUnderline(
                child: InputDecorator(
                  decoration: dropdownDecoration(theme).copyWith(
                    hintText: fetching
                        ? 'l10n.fetching currencies'
                        : l10n.select_country_currency,
                  ),
                  isEmpty: selectedCurrency == null,
                  child: DropdownButton<Currency>(
                    value: selectedCurrency,
                    isDense: true,
                    isExpanded: true,
                    onChanged: !fetching
                        ? (Currency? currency) => context
                            .read<CreateWalletCubit>()
                            .selectWalletCurrency(currency)
                        : null,
                    items: currencies.map((Currency currency) {
                      return DropdownMenuItem<Currency>(
                        value: currency,
                        child: Row(
                          children: [
                            AppText.paragraph2(
                              currency.name ?? ''.trim(),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}

InputDecoration dropdownDecoration(AppThemeData theme) => InputDecoration(
      hintStyle: theme.typography.paragraph2.copyWith(),
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(20),
      ),
      fillColor: theme.colors.white,
      filled: true,
    );
