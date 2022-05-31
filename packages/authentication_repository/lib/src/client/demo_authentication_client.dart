// ignore_for_file: avoid_dynamic_calls, public_member_api_docs
//TODO Document members

import 'package:api_client/api_client.dart';
import 'package:authentication_repository/src/client/client.dart';
import 'package:shared/shared.dart';

/// Dart Class that manages authentication -- DEMO
/// {@endtemplate}
class DemoAuthClient extends BaseAuthenticationClient {
  /// {@macro auth_client}
  DemoAuthClient(this.baseUrl, {ApiService? apiService})
      : _apiService = apiService ?? ApiService(baseUrl);

  /// Base url for api endpoints
  final String baseUrl;

  final ApiService _apiService;

  @override
  Future<Result<Exception, User>> sendSignupData({
    required JSON data,
    required void Function(String newToken) updateTokenCallback,
  }) async {
    await Future<void>.delayed(const Duration(seconds: 2));
    print('datassdfff');
    const randomUserIdGenerated = 'user_id_uehrrn';
    const randomAuthTokenGenerated = 'randm_82637djjfgh';
    data.addAll(<String, dynamic>{
      'userId': randomUserIdGenerated,
    });
    print(data);
    updateTokenCallback(randomAuthTokenGenerated);
    final user = User.fromJson(data);
    return Success(user);
  }

  @override
  Future<Result<Exception, User>> sendLoginData({
    required JSON data,
    required void Function(String newToken) updateTokenCallback,
  }) async {
    await Future<void>.delayed(const Duration(seconds: 2));
    final user = User(
        userId: 'random_userid123',
        firstname: 'Roberts',
        middleName: 'Joe',
        email: data['email'] as String,
        phoneNumber: '+2348023451234');
    const randomAuthTokenGenerated = 'randm_826dfrr37dpoirlwe';
    updateTokenCallback(randomAuthTokenGenerated);
    return Success(user);
  }

  @override
  Future<Result<Exception, User>> sendLogoutData({
    required void Function(String? newToken) updateTokenCallback,
    required String authToken,
  }) async {
    await Future<void>.delayed(const Duration(seconds: 3));
    updateTokenCallback(null);
    return const Success(User.empty);
  }
}
