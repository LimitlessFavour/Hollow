import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:hollow/app/app.dart';
import 'package:hollow/l10n/l10n.dart';
import 'package:hollow_design_system/hollow_design_system.dart';

class App extends StatelessWidget {
  const App({
    Key? key,
    this.devicePreviewEnabled = false,
  }) : super(key: key);

  final bool devicePreviewEnabled;

  @override
  Widget build(BuildContext context) {
    final useDevicePreview = devicePreviewEnabled && kDebugMode;
    return _AppView(useDevicePreview: useDevicePreview);
  }
}

class _AppView extends StatefulWidget {
  const _AppView({
    Key? key,
    this.useDevicePreview = false,
  }) : super(key: key);

  final bool useDevicePreview;

  @override
  State<_AppView> createState() => _AppViewState();
}

class _AppViewState extends State<_AppView> {
  late final GoRouter router;

  @override
  void initState() {
    super.initState();
    router = HollowRouter().router;
    // router = HollowRouter(context.read<AppBloc>()).router;
  }

  @override
  Widget build(BuildContext context) {
    return DevicePreview(
      enabled: widget.useDevicePreview,
      availableLocales: AppLocalizations.supportedLocales,
      builder: (BuildContext context) {
        return AppBase(
          appLogo: ExactAssetPicture(
            SvgPicture.svgStringDecoderBuilder,
            'assets/images/logo.svg',
          ),
          darkAppLogo: ExactAssetPicture(
            SvgPicture.svgStringDecoderBuilder,
            'assets/images/logo.svg', 
          ),
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
          ],
          supportedLocales: AppLocalizations.supportedLocales,
          routeInformationParser: router.routeInformationParser,
          routerDelegate: router.routerDelegate,
          title: 'Hollow',
          debugShowCheckedModeBanner: Env.showDebugBanner,
          useDevicePreview: widget.useDevicePreview,
        );
      },
    );
  }
}
