/// {@template authentication_repository}
/// Authentication Repository
/// {@endtemplate}
// ignore_for_file: public_member_api_docs

class AuthenticationRepository {
  /// {@macro authentication_repository}
  AuthenticationRepository();

  Future<void> signup({
    required String name,
    required String lastname,
    required String username,
    required String phonenumber,
    required String email,
    required String password,
  }) async {}

  Future<void> login({
    required String email,
    required String password,
  }) async {}

  Future<void> logout() async {}
}
