import 'package:hollow/app/app.dart';
import 'package:hollow/authentication/views/views.dart';

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
    ],
  );
}
