part of 'app_bloc.dart';

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.userChanged(User user) = _UserChanged;
  const factory AppEvent.logoutRequested() = _LogoutRequested;
  const factory AppEvent.authTokenUpdated(String? token) = _AuthTokenUpdated;
}
