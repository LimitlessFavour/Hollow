//services
// ignore_for_file: comment_references

import 'dart:convert';

//typedef
import 'package:api_client/src/api_interface.dart';
import 'package:http/http.dart';
import 'package:shared/shared.dart';

/// A service class implementing methods for basic API requests.
class ApiService implements ApiInterface {
  /// A public constructor that is used to initialize the API service
  /// and setup the underlying [_dioService].
  ApiService(this.baseUrl, {Client? httpClient})
      : _httpClient = httpClient ?? Client();

  /// Base url for api endpoints
  final String baseUrl;

  /// An instance of [Client] for network requests
  late final Client _httpClient;

  @override
  void close() {
    _httpClient.close();
  }

  /// An implementation of the base method for deleting [data]
  /// at the [endpoint].
  /// The response body must be a [Map], else the [converter] fails.
  ///
  /// The [data] contains body for the request.
  ///
  /// The [converter] callback is used to **deserialize** the response body
  /// into an object of type [T].
  /// The callback is executed on the response `body`.
  @override
  Future<T> deleteData<T>({
    required String endpoint,
    Map<String, String>? headers,
    JSON? body,
    bool requiresAuthToken = true,
    required T Function(JSON response) converter,
  }) async {
    //Entire map of response
    final data = await _httpClient.delete(
      Uri.parse(endpoint),
      headers: headers,
      body: body,
    );

    //Returning the deserialized object
    return converter(json.decode(data.body) as JSON);
  }

  /// An implementation of the base method for requesting a document of data
  /// from the [endpoint].
  /// The response body must be a [Map], else the [converter] fails.
  ///
  @override
  Future<T> getData<T>({
    required String endpoint,
    Map<String, String>? headers,
    required T Function(JSON responseBody) converter,
  }) async {
    //Entire map of response
    final data = await _httpClient.get(
      Uri.parse(endpoint),
      headers: headers,
    );

    //Returning the deserialized object
    return converter(json.decode(data.body) as JSON);
  }

  /// An implementation of the base method for putting [data] at
  /// the [endpoint].
  /// The response body must be a [Map], else the [converter] fails.
  ///
  /// The [data] contains body for the request.
  ///
  /// The [converter] callback is used to **deserialize** the response body
  /// into an object of type [T].
  /// The callback is executed on the response `body`.
  ///
  @override
  Future<T> putData<T>({
    required String endpoint,
    Map<String, String>? headers,
    required JSON? body,
    bool requiresAuthToken = true,
    required T Function(JSON response) converter,
  }) async {
    //Entire map of response
    final data = await _httpClient.delete(
      Uri.parse(endpoint),
      headers: headers,
      body: body,
    );
    //Returning the deserialized object
    return converter(json.decode(data.body) as JSON);
  }

  /// An implementation of the base method for inserting [data] at
  /// the [endpoint].
  /// The response body must be a [Map], else the [converter] fails.
  ///
  /// The [data] contains body for the request.
  ///
  /// The [converter] callback is used to **deserialize** the response body
  /// into an object of type [T].
  /// The callback is executed on the response `body`.
  @override
  Future<T> setData<T>({
    required String endpoint,
    Map<String, String>? headers,
    JSON? body,
    required T Function(JSON response) converter,
  }) async {
    //Entire map of response
    final data = await _httpClient.post(
      Uri.parse(endpoint),
      headers: headers,
      body: body,
    );

    //Returning the deserialized object
    return converter(json.decode(data.body) as JSON);
  }

  /// An implementation of the base method for updating [data]
  /// at the [endpoint].
  /// The response body must be a [Map], else the [converter] fails.
  ///
  /// The [data] contains body for the request.
  ///
  /// The [converter] callback is used to **deserialize** the response body
  /// into an object of type [T].
  /// The callback is executed on the response `body`.
  @override
  Future<T> updateData<T>({
    required String endpoint,
    Map<String, String>? headers,
    required JSON body,
    required T Function(JSON response) converter,
  }) async {
    //Entire map of response
    final data = await _httpClient.patch(
      Uri.parse(endpoint),
      headers: headers,
      body: body,
    );

    //Returning the deserialized object
    return converter(json.decode(data.body) as JSON);
  }
}
