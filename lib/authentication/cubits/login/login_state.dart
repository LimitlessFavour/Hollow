// ignore_for_file: invalid_annotation_target

part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @EmailConverter() @Default(Email.pure()) Email email,
    @PasswordConverter() @Default(Password.pure()) Password password,
    @Default(FormzStatus.pure) FormzStatus status,
    String? errorMessage,
  }) = _LoginState;

  factory LoginState.fromJson(JSON json) => _$LoginStateFromJson(json);
}
