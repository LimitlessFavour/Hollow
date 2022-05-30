// ignore_for_file: public_member_api_docs

import 'package:equatable/equatable.dart';
import 'package:hollow_design_system/src/utils/named.dart';

part 'icons_svgs.dart';

class AppIconsData extends Equatable {
  const AppIconsData({
    required this.package,
    required this.characters,
    required this.sizes,
  });

  factory AppIconsData.small() => AppIconsData(
        package: 'hollow_design_system',
        characters: AppIconCharactersData.regular(),
        sizes: AppIconSizesData.small(),
      );

  factory AppIconsData.regular() => AppIconsData(
        package: 'hollow_design_system',
        characters: AppIconCharactersData.regular(),
        sizes: AppIconSizesData.regular(),
      );

  factory AppIconsData.large() => AppIconsData(
        package: 'hollow_design_system',
        characters: AppIconCharactersData.regular(),
        sizes: AppIconSizesData.large(),
      );

  final String? package;
  final AppIconCharactersData characters;
  final AppIconSizesData sizes;

  @override
  List<Object?> get props => [
        package,
        characters,
        sizes,
      ];
}

class AppIconCharactersData extends Equatable {
  const AppIconCharactersData({
    required this.money,
    required this.safeHome,
    required this.ticketStar,
    required this.more,
    required this.home,
    required this.wallet,
    required this.card,
    required this.user,
    required this.noTransaction,
    required this.convert,
    required this.dollar,
    required this.addIcon,
  });

  factory AppIconCharactersData.regular() => AppIconCharactersData(
        money: moneySvg,
        safeHome: safeHomeSvg,
        ticketStar: ticketStarSvg,
        more: moreSvg,
        home: homeSvg,
        wallet: walletSvg,
        card: cardSvg,
        user: userSvg,
        noTransaction: noTransactionSvg,
        convert: convertSvg,
        dollar: dollarSvg,
        addIcon: addIconSvg,
      );


  final String money;
  final String safeHome;
  final String ticketStar;
  final String more;
  final String home;
  final String wallet;
  final String card;
  final String user;
  final String noTransaction;
  final String convert;
  final String dollar;
  final String addIcon;


  @override
  List<Object?> get props => [
        money.named('money'),
        safeHome.named('safeHome'),
        ticketStar.named('ticketStar'),
        more.named('more'),
        home.named('home'),
        wallet.named('wallet'),
        card.named('card'),
        user.named('user'),
        noTransaction.named('no_transaction'),
        convert.named('convert'),
        dollar.named('dollar'),
        addIcon.named('addIcon'),
      ];
}

class AppIconSizesData extends Equatable {
  const AppIconSizesData({
    required this.small,
    required this.regular,
    required this.semiBig,
    required this.big,
  });

  // regular sizes work well for smaller devices
  factory AppIconSizesData.small() => AppIconSizesData.regular();

  factory AppIconSizesData.regular() => const AppIconSizesData(
        small: 22,
        regular: 28,
        semiBig: 32,
        big: 48,
      );

  /// currently apllying a scaling factor of 1.5
  factory AppIconSizesData.large() => const AppIconSizesData(
        small: 33,
        regular: 42,
        semiBig: 48,
        big: 72,
      );

  final double small;
  final double regular;
  final double semiBig;
  final double big;

  @override
  List<Object?> get props => [
        small.named('small'),
        regular.named('regular'),
        semiBig.named('semiBig'),
        big.named('big'),
      ];
}
