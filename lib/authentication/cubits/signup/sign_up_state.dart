part of 'sign_up_cubit.dart';

@freezed
class SignupState with _$SignupState {
  const factory SignupState({
    @EmailConverter() @Default(Email.pure()) Email email,
    @PasswordConverter() @Default(Password.pure()) Password password,
    @ConfirmedPasswordConverter()
    @Default(ConfirmedPassword.pure())
        ConfirmedPassword confirmedPassword,
    @NameConverter() @Default(Name.pure()) Name name,
    @NameConverter() @Default(Name.pure()) Name lastname,
    @NameConverter() @Default(Name.pure()) Name username,
    @PhoneConverter() @Default(Phone.pure()) Phone phone,
    @Default(FormzStatus.pure) FormzStatus status,
    String? errorMessage,
  }) = _SignupState;

  factory SignupState.fromJson(JSON json) => _$SignupStateFromJson(json);
}
