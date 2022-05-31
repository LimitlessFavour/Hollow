// ignore_for_file: avoid_dynamic_calls, public_member_api_docs
//TODO Document members
import 'package:shared/shared.dart';

/// Authentication Client Contract
abstract class BaseAuthenticationClient {
  Future<Result<Exception, User>> sendSignupData({
    required JSON data,
    required void Function(String newToken) updateTokenCallback,
  });

  Future<Result<Exception, User>> sendLoginData({
    required JSON data,
    required void Function(String newToken) updateTokenCallback,
  });

  Future<Result<Exception, User>> sendLogoutData({
    required void Function(String? newToken) updateTokenCallback,
    required String authToken,
  });
}
