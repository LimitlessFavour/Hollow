part of 'app_bloc.dart';

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.userChanged(User user, [bool? notifyListeners]) = _UserChanged;
  const factory AppEvent.logoutRequested() = _LogoutRequested;
  const factory AppEvent.authTokenUpdated(String? token) = _AuthTokenUpdated;
}
