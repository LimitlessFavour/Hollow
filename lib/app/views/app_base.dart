// ignore_for_file: public_member_api_docs, comment_references

import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart' as cupertino;
import 'package:flutter/material.dart' as material;
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hollow_design_system/hollow_design_system.dart';
import 'package:overlay_support/overlay_support.dart';

final navigatorKey = GlobalKey<NavigatorState>();
class AppBase extends StatelessWidget {
  const AppBase({
    Key? key,
    required this.routerDelegate,
    required this.routeInformationParser,
    required this.appLogo,
    this.darkAppLogo,
    this.routeInformationProvider,
    this.backButtonDispatcher,
    this.debugShowGrid = false,
    this.title = '',
    this.supportedLocales = const <Locale>[Locale('en', 'US')],
    this.useDevicePreview = false,
    this.debugShowCheckedModeBanner = true,
    this.showSemanticsDebugger = false,
    this.checkerboardOffscreenLayers = false,
    this.checkerboardRasterCacheImages = false,
    this.showPerformanceOverlay = false,
    this.onGenerateTitle,
    this.shortcuts,
    this.actions,
    this.locale,
    this.localeListResolutionCallback,
    this.localeResolutionCallback,
    this.localizationsDelegates,
    this.restorationScopeId,
  }) : super(key: key);

  final String Function(BuildContext)? onGenerateTitle;
  final Locale? Function(Locale?, Iterable<Locale>)? localeResolutionCallback;
  final Locale? Function(List<Locale>?, Iterable<Locale>)?
      localeListResolutionCallback;

  final Map<Type, Action<Intent>>? actions;
  final PictureProvider appLogo;
  final BackButtonDispatcher? backButtonDispatcher;
  final bool checkerboardOffscreenLayers;
  final bool checkerboardRasterCacheImages;
  final PictureProvider? darkAppLogo;
  final bool debugShowCheckedModeBanner;
  final bool debugShowGrid;
  final Locale? locale;
  final Iterable<LocalizationsDelegate<dynamic>>? localizationsDelegates;
  final String? restorationScopeId;
  final RouteInformationParser<Object> routeInformationParser;
  final RouteInformationProvider? routeInformationProvider;
  final RouterDelegate<Object> routerDelegate;
  final Map<ShortcutActivator, Intent>? shortcuts;
  final bool showPerformanceOverlay;
  final bool showSemanticsDebugger;
  final List<Locale> supportedLocales;
  final String title;
  final bool useDevicePreview;

  // We provide material and cupertino localization delegate even it will
  // probably not be used.
  Iterable<LocalizationsDelegate<dynamic>> get _localizationsDelegates sync* {
    if (localizationsDelegates != null) yield* localizationsDelegates!;
    yield material.DefaultMaterialLocalizations.delegate;
    yield cupertino.DefaultCupertinoLocalizations.delegate;
    //?
    yield GlobalWidgetsLocalizations.delegate;
  }

  static HeroController createAppHeroController() {
    return HeroController(
      createRectTween: (Rect? begin, Rect? end) {
        return material.MaterialRectArcTween(begin: begin, end: end);
      },
    );
  }

  // Widget _inspectorSelectButtonBuilder(
  //     BuildContext context, VoidCallback onPressed) {
  //   final theme = AppTheme.of(context);
  //   return AppButton(
  //     onTap: onPressed,
  //     icon: theme.icons.characters.add,
  //   );
  // }

  Widget _appBuilder(BuildContext context, Widget? widget) {
    var child = widget ?? const SizedBox.shrink();
    if (!useDevicePreview) {
      child = DevicePreview.appBuilder(context, child);
    }
    // // Wrap with toast.
    return child;
  }

  Widget _buildWidgetApp(BuildContext context) {
    Widget result = AppResponsiveTheme(
      appLogo: appLogo,
      darkAppLogo: darkAppLogo,
      child: cupertino.Builder(
        builder: (context) {
          final theme = AppTheme.of(context);
          return  OverlaySupport.global(
            child: WidgetsApp.router( 
              key: GlobalObjectKey(this),
              routeInformationProvider: routeInformationProvider,
              routeInformationParser: routeInformationParser,
              routerDelegate: routerDelegate,
              backButtonDispatcher: backButtonDispatcher,
              builder: _appBuilder,
              title: title,
              onGenerateTitle: onGenerateTitle,
              textStyle: theme.typography.paragraph1.copyWith(
                color: theme.colors.grey600,
              ),
              color: theme.colors.primary600,
              locale: useDevicePreview ? DevicePreview.locale(context) : locale,
              localizationsDelegates: _localizationsDelegates,
              localeResolutionCallback: localeResolutionCallback,
              localeListResolutionCallback: localeListResolutionCallback,
              supportedLocales: supportedLocales,
              showPerformanceOverlay: showPerformanceOverlay,
              checkerboardRasterCacheImages: checkerboardRasterCacheImages,
              checkerboardOffscreenLayers: checkerboardOffscreenLayers,
              showSemanticsDebugger: showSemanticsDebugger,
              debugShowCheckedModeBanner: debugShowCheckedModeBanner,
              // inspectorSelectButtonBuilder: _inspectorSelectButtonBuilder,
              shortcuts: shortcuts,
              actions: actions,
              restorationScopeId: restorationScopeId,
              useInheritedMediaQuery: useDevicePreview,
            ),
          );
        },
      ),
    );

    if (!useDevicePreview) {
      result = MediaQuery.fromWindow(
        child: result,
      );
    }

    return result;
  }

  @override
  Widget build(BuildContext context) {
    var result = _buildWidgetApp(context);
    result = Focus(
      canRequestFocus: false,
      onKey: (FocusNode node, RawKeyEvent event) {
        if (event is! RawKeyDownEvent ||
            event.logicalKey != LogicalKeyboardKey.escape) {
          return KeyEventResult.ignored;
        }
        return KeyEventResult.ignored;
      },
      child: result,
    );
    assert(
      () {
        if (debugShowGrid) {
          result = GridPaper(
            color: const Color(0xE0F9BBE0),
            interval: 8,
            subdivisions: 1,
            child: result,
          );
        }
        return true;
      }(),
      '',
    );

    return ScrollConfiguration(
      behavior: const _ScrollBehaviour(),
      child: HeroControllerScope(
        controller: createAppHeroController(),
        child: result,
      ),
    );
  }
}

class _ScrollBehaviour extends ScrollBehavior {
  /// Creates a MaterialScrollBehavior that decorates [Scrollable]s with
  /// [GlowingOverscrollIndicator]s and [Scrollbar]s based on the current
  /// platform and provided [ScrollableDetails].
  ///
  /// [MaterialScrollBehavior.androidOverscrollIndicator] specifies the
  /// overscroll indicator that is used on [TargetPlatform.android]. When null,
  /// [ThemeData.androidOverscrollIndicator] is used. If also null, the default
  /// overscroll indicator is the [GlowingOverscrollIndicator].
  const _ScrollBehaviour({
    AndroidOverscrollIndicator? androidOverscrollIndicator,
  })  : _androidOverscrollIndicator = androidOverscrollIndicator,
        super(androidOverscrollIndicator: androidOverscrollIndicator);

  final AndroidOverscrollIndicator? _androidOverscrollIndicator;

  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    final theme = AppTheme.of(context);
    final indicator = _androidOverscrollIndicator ?? androidOverscrollIndicator;
    switch (getPlatform(context)) {
      case TargetPlatform.iOS:
      case TargetPlatform.linux:
      case TargetPlatform.macOS:
      case TargetPlatform.windows:
        return child;
      case TargetPlatform.android:
        switch (indicator) {
          case AndroidOverscrollIndicator.stretch:
            return StretchingOverscrollIndicator(
              axisDirection: details.direction,
              child: child,
            );
          case AndroidOverscrollIndicator.glow:
            continue glow;
        }
      glow:
      case TargetPlatform.fuchsia:
        return GlowingOverscrollIndicator(
          axisDirection: details.direction,
          color: theme.colors.primary600,
          child: child,
        );
    }
  }

  @override
  Widget buildScrollbar(
      BuildContext context, Widget child, ScrollableDetails details) {
    // When modifying this function, consider modifying the implementation in
    // the base class as well.
    switch (axisDirectionToAxis(details.direction)) {
      case Axis.horizontal:
        return child;
      case Axis.vertical:
        switch (getPlatform(context)) {
          case TargetPlatform.linux:
          case TargetPlatform.macOS:
          case TargetPlatform.windows:
          // TODO add scrollbar
          case TargetPlatform.android:
          case TargetPlatform.fuchsia:
          case TargetPlatform.iOS:
            return child;
        }
    }
  }

  @override
  TargetPlatform getPlatform(BuildContext context) =>
      AppTheme.of(context).platform;
}
