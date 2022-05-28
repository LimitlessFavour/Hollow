import 'dart:convert';

import 'package:flutter/services.dart';

abstract class ConfigReader {
  static late Map<String, dynamic> _config;

  static Future<void> initialize(String path) async {
    final configString = await rootBundle.loadString(path);
    _config = json.decode(configString) as Map<String, dynamic>;
  }

  static String get initialAuthToken => _config['authToken'] as String;

  // static String getSecretKey() {
  //   return _config['secretKey'] as String;
  // }
}
