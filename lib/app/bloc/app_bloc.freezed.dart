// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppEventTearOff {
  const _$AppEventTearOff();

  _UserChanged userChanged(User user) {
    return _UserChanged(
      user,
    );
  }

  _LogoutRequested logoutRequested() {
    return const _LogoutRequested();
  }

  _AuthTokenUpdated authTokenUpdated(String? token) {
    return _AuthTokenUpdated(
      token,
    );
  }
}

/// @nodoc
const $AppEvent = _$AppEventTearOff();

/// @nodoc
mixin _$AppEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) userChanged,
    required TResult Function() logoutRequested,
    required TResult Function(String? token) authTokenUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user)? userChanged,
    TResult Function()? logoutRequested,
    TResult Function(String? token)? authTokenUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? userChanged,
    TResult Function()? logoutRequested,
    TResult Function(String? token)? authTokenUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserChanged value) userChanged,
    required TResult Function(_LogoutRequested value) logoutRequested,
    required TResult Function(_AuthTokenUpdated value) authTokenUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UserChanged value)? userChanged,
    TResult Function(_LogoutRequested value)? logoutRequested,
    TResult Function(_AuthTokenUpdated value)? authTokenUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserChanged value)? userChanged,
    TResult Function(_LogoutRequested value)? logoutRequested,
    TResult Function(_AuthTokenUpdated value)? authTokenUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppEventCopyWith<$Res> {
  factory $AppEventCopyWith(AppEvent value, $Res Function(AppEvent) then) =
      _$AppEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppEventCopyWithImpl<$Res> implements $AppEventCopyWith<$Res> {
  _$AppEventCopyWithImpl(this._value, this._then);

  final AppEvent _value;
  // ignore: unused_field
  final $Res Function(AppEvent) _then;
}

/// @nodoc
abstract class _$UserChangedCopyWith<$Res> {
  factory _$UserChangedCopyWith(
          _UserChanged value, $Res Function(_UserChanged) then) =
      __$UserChangedCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$UserChangedCopyWithImpl<$Res> extends _$AppEventCopyWithImpl<$Res>
    implements _$UserChangedCopyWith<$Res> {
  __$UserChangedCopyWithImpl(
      _UserChanged _value, $Res Function(_UserChanged) _then)
      : super(_value, (v) => _then(v as _UserChanged));

  @override
  _UserChanged get _value => super._value as _UserChanged;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_UserChanged(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$_UserChanged implements _UserChanged {
  const _$_UserChanged(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'AppEvent.userChanged(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserChanged &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$UserChangedCopyWith<_UserChanged> get copyWith =>
      __$UserChangedCopyWithImpl<_UserChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) userChanged,
    required TResult Function() logoutRequested,
    required TResult Function(String? token) authTokenUpdated,
  }) {
    return userChanged(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user)? userChanged,
    TResult Function()? logoutRequested,
    TResult Function(String? token)? authTokenUpdated,
  }) {
    return userChanged?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? userChanged,
    TResult Function()? logoutRequested,
    TResult Function(String? token)? authTokenUpdated,
    required TResult orElse(),
  }) {
    if (userChanged != null) {
      return userChanged(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserChanged value) userChanged,
    required TResult Function(_LogoutRequested value) logoutRequested,
    required TResult Function(_AuthTokenUpdated value) authTokenUpdated,
  }) {
    return userChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UserChanged value)? userChanged,
    TResult Function(_LogoutRequested value)? logoutRequested,
    TResult Function(_AuthTokenUpdated value)? authTokenUpdated,
  }) {
    return userChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserChanged value)? userChanged,
    TResult Function(_LogoutRequested value)? logoutRequested,
    TResult Function(_AuthTokenUpdated value)? authTokenUpdated,
    required TResult orElse(),
  }) {
    if (userChanged != null) {
      return userChanged(this);
    }
    return orElse();
  }
}

abstract class _UserChanged implements AppEvent {
  const factory _UserChanged(User user) = _$_UserChanged;

  User get user;
  @JsonKey(ignore: true)
  _$UserChangedCopyWith<_UserChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LogoutRequestedCopyWith<$Res> {
  factory _$LogoutRequestedCopyWith(
          _LogoutRequested value, $Res Function(_LogoutRequested) then) =
      __$LogoutRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$LogoutRequestedCopyWithImpl<$Res> extends _$AppEventCopyWithImpl<$Res>
    implements _$LogoutRequestedCopyWith<$Res> {
  __$LogoutRequestedCopyWithImpl(
      _LogoutRequested _value, $Res Function(_LogoutRequested) _then)
      : super(_value, (v) => _then(v as _LogoutRequested));

  @override
  _LogoutRequested get _value => super._value as _LogoutRequested;
}

/// @nodoc

class _$_LogoutRequested implements _LogoutRequested {
  const _$_LogoutRequested();

  @override
  String toString() {
    return 'AppEvent.logoutRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LogoutRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) userChanged,
    required TResult Function() logoutRequested,
    required TResult Function(String? token) authTokenUpdated,
  }) {
    return logoutRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user)? userChanged,
    TResult Function()? logoutRequested,
    TResult Function(String? token)? authTokenUpdated,
  }) {
    return logoutRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? userChanged,
    TResult Function()? logoutRequested,
    TResult Function(String? token)? authTokenUpdated,
    required TResult orElse(),
  }) {
    if (logoutRequested != null) {
      return logoutRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserChanged value) userChanged,
    required TResult Function(_LogoutRequested value) logoutRequested,
    required TResult Function(_AuthTokenUpdated value) authTokenUpdated,
  }) {
    return logoutRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UserChanged value)? userChanged,
    TResult Function(_LogoutRequested value)? logoutRequested,
    TResult Function(_AuthTokenUpdated value)? authTokenUpdated,
  }) {
    return logoutRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserChanged value)? userChanged,
    TResult Function(_LogoutRequested value)? logoutRequested,
    TResult Function(_AuthTokenUpdated value)? authTokenUpdated,
    required TResult orElse(),
  }) {
    if (logoutRequested != null) {
      return logoutRequested(this);
    }
    return orElse();
  }
}

abstract class _LogoutRequested implements AppEvent {
  const factory _LogoutRequested() = _$_LogoutRequested;
}

/// @nodoc
abstract class _$AuthTokenUpdatedCopyWith<$Res> {
  factory _$AuthTokenUpdatedCopyWith(
          _AuthTokenUpdated value, $Res Function(_AuthTokenUpdated) then) =
      __$AuthTokenUpdatedCopyWithImpl<$Res>;
  $Res call({String? token});
}

/// @nodoc
class __$AuthTokenUpdatedCopyWithImpl<$Res> extends _$AppEventCopyWithImpl<$Res>
    implements _$AuthTokenUpdatedCopyWith<$Res> {
  __$AuthTokenUpdatedCopyWithImpl(
      _AuthTokenUpdated _value, $Res Function(_AuthTokenUpdated) _then)
      : super(_value, (v) => _then(v as _AuthTokenUpdated));

  @override
  _AuthTokenUpdated get _value => super._value as _AuthTokenUpdated;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_AuthTokenUpdated(
      token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_AuthTokenUpdated implements _AuthTokenUpdated {
  const _$_AuthTokenUpdated(this.token);

  @override
  final String? token;

  @override
  String toString() {
    return 'AppEvent.authTokenUpdated(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthTokenUpdated &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  _$AuthTokenUpdatedCopyWith<_AuthTokenUpdated> get copyWith =>
      __$AuthTokenUpdatedCopyWithImpl<_AuthTokenUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) userChanged,
    required TResult Function() logoutRequested,
    required TResult Function(String? token) authTokenUpdated,
  }) {
    return authTokenUpdated(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user)? userChanged,
    TResult Function()? logoutRequested,
    TResult Function(String? token)? authTokenUpdated,
  }) {
    return authTokenUpdated?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? userChanged,
    TResult Function()? logoutRequested,
    TResult Function(String? token)? authTokenUpdated,
    required TResult orElse(),
  }) {
    if (authTokenUpdated != null) {
      return authTokenUpdated(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserChanged value) userChanged,
    required TResult Function(_LogoutRequested value) logoutRequested,
    required TResult Function(_AuthTokenUpdated value) authTokenUpdated,
  }) {
    return authTokenUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UserChanged value)? userChanged,
    TResult Function(_LogoutRequested value)? logoutRequested,
    TResult Function(_AuthTokenUpdated value)? authTokenUpdated,
  }) {
    return authTokenUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserChanged value)? userChanged,
    TResult Function(_LogoutRequested value)? logoutRequested,
    TResult Function(_AuthTokenUpdated value)? authTokenUpdated,
    required TResult orElse(),
  }) {
    if (authTokenUpdated != null) {
      return authTokenUpdated(this);
    }
    return orElse();
  }
}

abstract class _AuthTokenUpdated implements AppEvent {
  const factory _AuthTokenUpdated(String? token) = _$_AuthTokenUpdated;

  String? get token;
  @JsonKey(ignore: true)
  _$AuthTokenUpdatedCopyWith<_AuthTokenUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

AppState _$AppStateFromJson(Map<String, dynamic> json) {
  return _AppState.fromJson(json);
}

/// @nodoc
class _$AppStateTearOff {
  const _$AppStateTearOff();

  _AppState call(
      {User user = User.empty,
      AuthStatus status = AuthStatus.unauthenticated,
      String? authToken}) {
    return _AppState(
      user: user,
      status: status,
      authToken: authToken,
    );
  }

  AppState fromJson(Map<String, Object?> json) {
    return AppState.fromJson(json);
  }
}

/// @nodoc
const $AppState = _$AppStateTearOff();

/// @nodoc
mixin _$AppState {
  User get user => throw _privateConstructorUsedError;
  AuthStatus get status => throw _privateConstructorUsedError;
  String? get authToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res>;
  $Res call({User user, AuthStatus status, String? authToken});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState _value;
  // ignore: unused_field
  final $Res Function(AppState) _then;

  @override
  $Res call({
    Object? user = freezed,
    Object? status = freezed,
    Object? authToken = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthStatus,
      authToken: authToken == freezed
          ? _value.authToken
          : authToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$AppStateCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$AppStateCopyWith(_AppState value, $Res Function(_AppState) then) =
      __$AppStateCopyWithImpl<$Res>;
  @override
  $Res call({User user, AuthStatus status, String? authToken});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$AppStateCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$AppStateCopyWith<$Res> {
  __$AppStateCopyWithImpl(_AppState _value, $Res Function(_AppState) _then)
      : super(_value, (v) => _then(v as _AppState));

  @override
  _AppState get _value => super._value as _AppState;

  @override
  $Res call({
    Object? user = freezed,
    Object? status = freezed,
    Object? authToken = freezed,
  }) {
    return _then(_AppState(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthStatus,
      authToken: authToken == freezed
          ? _value.authToken
          : authToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppState implements _AppState {
  const _$_AppState(
      {this.user = User.empty,
      this.status = AuthStatus.unauthenticated,
      this.authToken});

  factory _$_AppState.fromJson(Map<String, dynamic> json) =>
      _$$_AppStateFromJson(json);

  @JsonKey()
  @override
  final User user;
  @JsonKey()
  @override
  final AuthStatus status;
  @override
  final String? authToken;

  @override
  String toString() {
    return 'AppState(user: $user, status: $status, authToken: $authToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppState &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.authToken, authToken));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(authToken));

  @JsonKey(ignore: true)
  @override
  _$AppStateCopyWith<_AppState> get copyWith =>
      __$AppStateCopyWithImpl<_AppState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppStateToJson(this);
  }
}

abstract class _AppState implements AppState {
  const factory _AppState({User user, AuthStatus status, String? authToken}) =
      _$_AppState;

  factory _AppState.fromJson(Map<String, dynamic> json) = _$_AppState.fromJson;

  @override
  User get user;
  @override
  AuthStatus get status;
  @override
  String? get authToken;
  @override
  @JsonKey(ignore: true)
  _$AppStateCopyWith<_AppState> get copyWith =>
      throw _privateConstructorUsedError;
}
