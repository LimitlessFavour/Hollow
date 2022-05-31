// ignore_for_file: comment_references, public_member_api_docs

import 'package:shared/shared.dart';

/// A base class containing methods for basic API functionality.
///
/// Should be implemented by any service class that wishes to interact
/// with an API.
abstract class ApiInterface {
  /// Abstract const constructor. This constructor enables subclasses
  /// to provide const constructors so that they can be used in
  /// const expressions.
  const ApiInterface();

  Future<T> getData<T>({
    required String endpoint,
    Map<String, String>? headers,
    required T Function(JSON responseBody) converter,
  });

  Future<T> setData<T>({
    required String endpoint,
    Map<String, String>? headers,
    JSON? body,
    required T Function(JSON response) converter,
  });

  Future<T> putData<T>({
    required String endpoint,
    Map<String, String>? headers,
    required JSON? body,
    bool requiresAuthToken = true,
    required T Function(JSON response) converter,
  });

  Future<T> updateData<T>({
    required String endpoint,
    Map<String, String>? headers,
    required JSON body,
    required T Function(JSON response) converter,
  });

  Future<T> deleteData<T>({
    required String endpoint,
    Map<String, String>? headers,
    JSON? body,
    bool requiresAuthToken = true,
    required T Function(JSON response) converter,
  });

  void close();
}
