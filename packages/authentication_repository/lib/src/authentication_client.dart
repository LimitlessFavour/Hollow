// ignore_for_file: avoid_dynamic_calls, public_member_api_docs
//TODO Document members

import 'package:api_client/api_client.dart';
import 'package:shared/shared.dart';

/// Dart Class that manages authentication
/// {@endtemplate}
class AuthClient {
  /// {@macro auth_client}
  AuthClient(this.baseUrl, {ApiService? apiService})
      : _apiService = apiService ?? ApiService(baseUrl);

  /// Base url for api endpoints
  final String baseUrl;

  final ApiService _apiService;

  Future<Result<Exception, User>> sendSignupData({
    required JSON data,
    required void Function(String newToken) updateTokenCallback,
  }) {
    return _apiService.setData<Result<Exception, User>>(
      endpoint: ApiEndpoints.auth(AuthEndpoint.REGISTER),
      body: data,
      converter: (response) {
        if (response['code'] == 200) {
          final token = response['token'] as String;
          final user = response['user'] as JSON;
          updateTokenCallback(token);
          return Success(User.fromJson(user));
        }
        final message = response['message'] as String;
        return Error(Exception(message));
      },
    );
  }

  Future<Result<Exception, User>> sendLoginData({
    required JSON data,
    required void Function(String newToken) updateTokenCallback,
  }) {
    return _apiService.setData<Result<Exception, User>>(
      endpoint: ApiEndpoints.auth(AuthEndpoint.LOGIN),
      body: data,
      converter: (response) {
        if (response['code'] == 200) {
          final token = response['token'] as String;
          final user = response['user'] as JSON;
          updateTokenCallback(token);
          return Success(User.fromJson(user));
        }
        final message = response['message'] as String;
        return Error(Exception(message));
      },
    );
  }

  Future<Result<Exception, User>> sendLogoutData({
    required void Function(String? newToken) updateTokenCallback,
    required String authToken,
  }) {
    return _apiService.setData<Result<Exception, User>>(
      endpoint: ApiEndpoints.auth(AuthEndpoint.LOGOUT),
      body: null,
      headers: <String, String>{'authToken': authToken},
      converter: (response) {
        if (response['code'] == 200) {
          updateTokenCallback(null);
          return const Success(User.empty);
        }
        final message = response['message'] as String;
        return Error(Exception(message));
      },
    );
  }
}
