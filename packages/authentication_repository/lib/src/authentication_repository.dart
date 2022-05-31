import 'package:authentication_repository/src/client/authentication_client.dart';
import 'package:authentication_repository/src/client/authentication_client_contract.dart';
import 'package:shared/shared.dart';

/// {@template authentication_repository}
/// Authentication Repository
/// {@endtemplate}
// ignore_for_file: public_member_api_docs

class AuthenticationRepository {
  /// {@macro authentication_repository}
  AuthenticationRepository({required BaseAuthenticationClient authClient})
      : _authClient = authClient;

  final BaseAuthenticationClient _authClient;

  Future<Result<Exception, User>> signup({
    required String firstname,
    required String lastname,
    required String username,
    required String phonenumber,
    required String email,
    required String password,
    required void Function(String newToken) updateTokenCallback,
  }) async {
    final body = <String, dynamic>{
      'firstname': firstname,
      'lastname': lastname,
      'username': username,
      'phonenumber': phonenumber,
      'email': email,
      'password': password,
    };

    return _authClient.sendSignupData(
      data: body,
      updateTokenCallback: updateTokenCallback,
    );
  }

  Future<Result<Exception, User>> login({
    required String email,
    required String password,
    required void Function(String? newToken) updateTokenCallback,
  }) async {
    final body = <String, dynamic>{'email': email, 'password': password};
    return _authClient.sendLoginData(
      data: body,
      updateTokenCallback: updateTokenCallback,
    );
  }

  Future<Result<Exception, User>> logout({
    required String authToken,
    required void Function(String? newToken) updateTokenCallback,
  }) async {
    return _authClient.sendLogoutData(
      updateTokenCallback: updateTokenCallback,
      authToken: authToken,
    );
  }
}
