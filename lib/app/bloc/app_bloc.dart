import 'dart:async';

import 'package:authentication_repository/authentication_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hollow/app/environment/config_reader.dart';
import 'package:hollow_design_system/hollow_design_system.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:shared/shared.dart';

export 'package:flutter_bloc/flutter_bloc.dart';

part 'app_bloc.freezed.dart';
part 'app_bloc.g.dart';

part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends HydratedBloc<AppEvent, AppState> with ChangeNotifier {
  AppBloc({
    required AuthenticationRepository authenticationRepository,
  })  : _authenticationRepository = authenticationRepository,
        super(AppState.unauthenticated()) {
    on<_UserChanged>(_onUserChanged);
    on<_LogoutRequested>(_onLogoutRequested);
    on<_AuthTokenUpdated>(_onAuthTokenUpdated);
  }
  final AuthenticationRepository _authenticationRepository;

  void _onAuthTokenUpdated(_AuthTokenUpdated event, Emitter<AppState> emit) {
    emit(state.copyWith(authToken: event.token));
  }

  void _onUserChanged(_UserChanged event, Emitter<AppState> emit) {
    debugPrint('_onUserChanged called');
    emit(
      state.copyWith(
        status: event.user.isNotEmpty
            ? AuthStatus.authenticated
            : AuthStatus.unauthenticated,
        user: event.user,
      ),
    );
    notifyListeners();
  }

  Future<void> _onLogoutRequested(
    _LogoutRequested event,
    Emitter<AppState> emit,
  ) async {
    emit(state.copyWith(status: AuthStatus.inProgress));
    //delay for visualization.
    await Future<void>.delayed(const Duration(milliseconds: 2000));
    await _authenticationRepository.logout(
      authToken: state.authToken ?? ConfigReader.initialAuthToken,
      updateTokenCallback: (String? newToken) =>
          add(_AuthTokenUpdated(newToken)),
    );
  }

  @override
  AppState? fromJson(Map<String, dynamic> json) {
    return AppState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(AppState state) {
    return state.toJson();
  }
}
