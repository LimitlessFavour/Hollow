
enum Environment {
  ///development
  dev,

  ///staging
  stg,

  ///production
  prod,
}

class Env {
  static late Environment _env;
  // ignore: use_setters_to_change_properties
  static void initialize(Environment environment) {
    _env = environment;
  }

  static bool get showDebugBanner => _env.isDev;
  static bool get enableCrashlytics => !_env.isDev;
  static bool get enableDevicePreview => _env.isDev;
  static String get configPath => _env.configPath;
  static String get name => _env.name;

}

extension _EnvironmentX on Environment {
  bool get isDev => this == Environment.dev;
  bool get isStg => this == Environment.stg;
  // ignore: unused_element
  bool get isProd => this == Environment.prod;

  String get name => isDev
      ? 'hollow-dev'
      : isStg
          ? 'hollow-stg'
          : 'hollow-prod';

  String get configPath => isDev
      ? 'assets/config/app_config_dev.json'
      : isStg
          ? 'assets/config/app_config_stg.json'
          : 'assets/config/app_config_prod.json';
}
