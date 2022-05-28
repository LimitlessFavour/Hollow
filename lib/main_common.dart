import 'package:clock/clock.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hollow/app/app.dart';
import 'package:hollow/bootstrap.dart';


Future<void> mainCommon(Environment env) async {
  WidgetsFlutterBinding.ensureInitialized();
  //Replace red screen with friendlier error widget.
  ErrorWidget.builder = CrashWidget.new;
  debugPrint = setDebugPrint;

  Env.initialize(env);

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  await ConfigReader.initialize(Env.configPath);


  await bootstrap(
    () async {
      return App(
        // appConfigRepository: appConfigRepository,
        // authenticationRepository: authenticationRepository,
        // locationRepository: locationRepository,
        devicePreviewEnabled: Env.enableDevicePreview,
      );
    },
  );
}

void setDebugPrint(String? message, {int? wrapWidth}) {
  if (kReleaseMode) return;
  final date = clock.now();
  var msg = '${date.year}/${date.month}/${date.day}';
  msg += ' ${date.hour}:${date.minute}:${date.second}';
  msg += ' $message';
  debugPrintSynchronously(
    msg,
    wrapWidth: wrapWidth,
  );
}
