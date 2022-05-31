part of 'app_bloc.dart';

@JsonEnum()
enum AuthStatus {
  inProgress,
  authenticated,
  unauthenticated,
  restricted,
}

@freezed
class AppState with _$AppState {
  const factory AppState({
    @Default(User.empty) User user,
    @Default(AuthStatus.unauthenticated) AuthStatus status,
    String? authToken,
  }) = _AppState;

  factory AppState.authenticated(User user, String authToken) => AppState(
        status: AuthStatus.authenticated,
        user: user,
        authToken: authToken,
      );

  factory AppState.unauthenticated() => const AppState();

  factory AppState.fromJson(JSON json) => _$AppStateFromJson(json);
}
