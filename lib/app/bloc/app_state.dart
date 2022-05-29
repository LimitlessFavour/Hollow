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
  }) = _AppState;

  factory AppState.authenticated(User user) => AppState(
        status: AuthStatus.authenticated,
        user: user,
      );

  factory AppState.unauthenticated() => const AppState();

  factory AppState.fromJson(JSON json) => _$AppStateFromJson(json);
}
