part of 'router.dart';

//* These routes are arranged in their respective sections
//* Don't apply flutter stylizer on this file

class Routes {
  Routes._();

  static const String root = 'root';
  static const String login = 'login';
  static const String signUp = 'sign-up';

  static const String home = 'home';
  static const String createWallet = 'create-wallet';
}

extension RouteX on String {
  String get path {
    // if (this == Routes.home) {
    if (this == Routes.root) {
      return '/';
    } else {
      return '/$this';
    }
  }
}
