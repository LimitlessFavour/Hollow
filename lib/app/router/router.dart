import 'package:go_router/go_router.dart';
import 'package:hollow/app/app.dart';

part 'routes.dart';

class HollowRouter {
  HollowRouter();
  // HollowRouter(this.appBloc);

  // final AppBloc appBloc;

  late final router = GoRouter(
    // refreshListenable: appBloc,
    debugLogDiagnostics: true,
    urlPathStrategy: UrlPathStrategy.path,
    routes: [
      GoRoute(
        name: Routes.root,
        path: Routes.root.path,
        pageBuilder: (context, state) => WelcomePage.page(state.pageKey),
      ),
    ],
  );
}
