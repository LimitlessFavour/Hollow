import 'package:hollow/app/app.dart';
import 'package:hollow/authentication/views/views.dart';
import 'package:hollow/home/home.dart';
import 'package:hollow/wallet/views/create_wallet_page.dart';

export 'package:go_router/go_router.dart';

part 'routes.dart';

class HollowRouter {
  HollowRouter(this.appBloc);

  final AppBloc appBloc;

  late final router = GoRouter(
    refreshListenable: appBloc,
    debugLogDiagnostics: true,
    urlPathStrategy: UrlPathStrategy.path,
    routes: [
      GoRoute(
        name: Routes.root,
        path: Routes.root.path,
        pageBuilder: (context, state) => WelcomePage.page(state.pageKey),
      ),
      GoRoute(
        name: Routes.signUp,
        path: Routes.signUp.path,
        pageBuilder: (context, state) => SignupPage.page(state.pageKey),
      ),
      GoRoute(
        name: Routes.login,
        path: Routes.login.path,
        pageBuilder: (context, state) => LoginPage.page(state.pageKey),
      ),
      GoRoute(
        name: Routes.home,
        path: Routes.home.path,
        pageBuilder: (context, state) => HomePage.page(state.pageKey),
      ),
      GoRoute(
        name: Routes.createWallet,
        path: Routes.createWallet.path,
        pageBuilder: (context, state) => CreateWalletPage.page(state.pageKey),
      ),
    ],
    errorPageBuilder: (context, state) => ErrorPage.page(state.pageKey),
    redirect: (state) {
      print('should redirect');
      print('should redirect');
      final loggedIn = appBloc.state.user.isNotEmpty;
      print('loggedIn: $loggedIn');


      // accessible screens before authentication
      final onInitialRoute = state.subloc == Routes.root.path;
      final onLoginRoute = state.subloc == Routes.login.path;
      final onSignupRoute = state.subloc == Routes.signUp.path;

      //accessible screens after authentication
      final onHomeRoute = state.subloc == Routes.home.path;
      final onCreateWalletRoute = state.subloc == Routes.createWallet.path;

      if (loggedIn && (onInitialRoute || onLoginRoute || onSignupRoute)) {
        return Routes.home.path;
      }

      if (!loggedIn && (onHomeRoute || onCreateWalletRoute)) {
        return Routes.root.path;
      }

      return null;
    },
  );
}
