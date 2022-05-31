// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_up_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SignupState _$SignupStateFromJson(Map<String, dynamic> json) {
  return _SignupState.fromJson(json);
}

/// @nodoc
class _$SignupStateTearOff {
  const _$SignupStateTearOff();

  _SignupState call(
      {@EmailConverter()
          Email email = const Email.pure(),
      @PasswordConverter()
          Password password = const Password.pure(),
      @ConfirmedPasswordConverter()
          ConfirmedPassword confirmedPassword = const ConfirmedPassword.pure(),
      @NameConverter()
          Name name = const Name.pure(),
      @NameConverter()
          Name lastname = const Name.pure(),
      @NameConverter()
          Name username = const Name.pure(),
      @PhoneConverter()
          Phone phone = const Phone.pure(),
      @TermsConditionConverter()
          TermsCondition termsCondition = const TermsCondition.pure(),
      FormzStatus status = FormzStatus.pure,
      String? errorMessage}) {
    return _SignupState(
      email: email,
      password: password,
      confirmedPassword: confirmedPassword,
      name: name,
      lastname: lastname,
      username: username,
      phone: phone,
      termsCondition: termsCondition,
      status: status,
      errorMessage: errorMessage,
    );
  }

  SignupState fromJson(Map<String, Object?> json) {
    return SignupState.fromJson(json);
  }
}

/// @nodoc
const $SignupState = _$SignupStateTearOff();

/// @nodoc
mixin _$SignupState {
  @EmailConverter()
  Email get email => throw _privateConstructorUsedError;
  @PasswordConverter()
  Password get password => throw _privateConstructorUsedError;
  @ConfirmedPasswordConverter()
  ConfirmedPassword get confirmedPassword => throw _privateConstructorUsedError;
  @NameConverter()
  Name get name => throw _privateConstructorUsedError;
  @NameConverter()
  Name get lastname => throw _privateConstructorUsedError;
  @NameConverter()
  Name get username => throw _privateConstructorUsedError;
  @PhoneConverter()
  Phone get phone => throw _privateConstructorUsedError;
  @TermsConditionConverter()
  TermsCondition get termsCondition => throw _privateConstructorUsedError;
  FormzStatus get status => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignupStateCopyWith<SignupState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupStateCopyWith<$Res> {
  factory $SignupStateCopyWith(
          SignupState value, $Res Function(SignupState) then) =
      _$SignupStateCopyWithImpl<$Res>;
  $Res call(
      {@EmailConverter() Email email,
      @PasswordConverter() Password password,
      @ConfirmedPasswordConverter() ConfirmedPassword confirmedPassword,
      @NameConverter() Name name,
      @NameConverter() Name lastname,
      @NameConverter() Name username,
      @PhoneConverter() Phone phone,
      @TermsConditionConverter() TermsCondition termsCondition,
      FormzStatus status,
      String? errorMessage});
}

/// @nodoc
class _$SignupStateCopyWithImpl<$Res> implements $SignupStateCopyWith<$Res> {
  _$SignupStateCopyWithImpl(this._value, this._then);

  final SignupState _value;
  // ignore: unused_field
  final $Res Function(SignupState) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? confirmedPassword = freezed,
    Object? name = freezed,
    Object? lastname = freezed,
    Object? username = freezed,
    Object? phone = freezed,
    Object? termsCondition = freezed,
    Object? status = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      confirmedPassword: confirmedPassword == freezed
          ? _value.confirmedPassword
          : confirmedPassword // ignore: cast_nullable_to_non_nullable
              as ConfirmedPassword,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      lastname: lastname == freezed
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as Name,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as Name,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as Phone,
      termsCondition: termsCondition == freezed
          ? _value.termsCondition
          : termsCondition // ignore: cast_nullable_to_non_nullable
              as TermsCondition,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$SignupStateCopyWith<$Res>
    implements $SignupStateCopyWith<$Res> {
  factory _$SignupStateCopyWith(
          _SignupState value, $Res Function(_SignupState) then) =
      __$SignupStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {@EmailConverter() Email email,
      @PasswordConverter() Password password,
      @ConfirmedPasswordConverter() ConfirmedPassword confirmedPassword,
      @NameConverter() Name name,
      @NameConverter() Name lastname,
      @NameConverter() Name username,
      @PhoneConverter() Phone phone,
      @TermsConditionConverter() TermsCondition termsCondition,
      FormzStatus status,
      String? errorMessage});
}

/// @nodoc
class __$SignupStateCopyWithImpl<$Res> extends _$SignupStateCopyWithImpl<$Res>
    implements _$SignupStateCopyWith<$Res> {
  __$SignupStateCopyWithImpl(
      _SignupState _value, $Res Function(_SignupState) _then)
      : super(_value, (v) => _then(v as _SignupState));

  @override
  _SignupState get _value => super._value as _SignupState;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? confirmedPassword = freezed,
    Object? name = freezed,
    Object? lastname = freezed,
    Object? username = freezed,
    Object? phone = freezed,
    Object? termsCondition = freezed,
    Object? status = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_SignupState(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      confirmedPassword: confirmedPassword == freezed
          ? _value.confirmedPassword
          : confirmedPassword // ignore: cast_nullable_to_non_nullable
              as ConfirmedPassword,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      lastname: lastname == freezed
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as Name,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as Name,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as Phone,
      termsCondition: termsCondition == freezed
          ? _value.termsCondition
          : termsCondition // ignore: cast_nullable_to_non_nullable
              as TermsCondition,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SignupState implements _SignupState {
  const _$_SignupState(
      {@EmailConverter()
          this.email = const Email.pure(),
      @PasswordConverter()
          this.password = const Password.pure(),
      @ConfirmedPasswordConverter()
          this.confirmedPassword = const ConfirmedPassword.pure(),
      @NameConverter()
          this.name = const Name.pure(),
      @NameConverter()
          this.lastname = const Name.pure(),
      @NameConverter()
          this.username = const Name.pure(),
      @PhoneConverter()
          this.phone = const Phone.pure(),
      @TermsConditionConverter()
          this.termsCondition = const TermsCondition.pure(),
      this.status = FormzStatus.pure,
      this.errorMessage});

  factory _$_SignupState.fromJson(Map<String, dynamic> json) =>
      _$$_SignupStateFromJson(json);

  @JsonKey()
  @override
  @EmailConverter()
  final Email email;
  @JsonKey()
  @override
  @PasswordConverter()
  final Password password;
  @JsonKey()
  @override
  @ConfirmedPasswordConverter()
  final ConfirmedPassword confirmedPassword;
  @JsonKey()
  @override
  @NameConverter()
  final Name name;
  @JsonKey()
  @override
  @NameConverter()
  final Name lastname;
  @JsonKey()
  @override
  @NameConverter()
  final Name username;
  @JsonKey()
  @override
  @PhoneConverter()
  final Phone phone;
  @JsonKey()
  @override
  @TermsConditionConverter()
  final TermsCondition termsCondition;
  @JsonKey()
  @override
  final FormzStatus status;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'SignupState(email: $email, password: $password, confirmedPassword: $confirmedPassword, name: $name, lastname: $lastname, username: $username, phone: $phone, termsCondition: $termsCondition, status: $status, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignupState &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.confirmedPassword, confirmedPassword) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.lastname, lastname) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality()
                .equals(other.termsCondition, termsCondition) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(confirmedPassword),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(lastname),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(termsCondition),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$SignupStateCopyWith<_SignupState> get copyWith =>
      __$SignupStateCopyWithImpl<_SignupState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SignupStateToJson(this);
  }
}

abstract class _SignupState implements SignupState {
  const factory _SignupState(
      {@EmailConverter() Email email,
      @PasswordConverter() Password password,
      @ConfirmedPasswordConverter() ConfirmedPassword confirmedPassword,
      @NameConverter() Name name,
      @NameConverter() Name lastname,
      @NameConverter() Name username,
      @PhoneConverter() Phone phone,
      @TermsConditionConverter() TermsCondition termsCondition,
      FormzStatus status,
      String? errorMessage}) = _$_SignupState;

  factory _SignupState.fromJson(Map<String, dynamic> json) =
      _$_SignupState.fromJson;

  @override
  @EmailConverter()
  Email get email;
  @override
  @PasswordConverter()
  Password get password;
  @override
  @ConfirmedPasswordConverter()
  ConfirmedPassword get confirmedPassword;
  @override
  @NameConverter()
  Name get name;
  @override
  @NameConverter()
  Name get lastname;
  @override
  @NameConverter()
  Name get username;
  @override
  @PhoneConverter()
  Phone get phone;
  @override
  @TermsConditionConverter()
  TermsCondition get termsCondition;
  @override
  FormzStatus get status;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$SignupStateCopyWith<_SignupState> get copyWith =>
      throw _privateConstructorUsedError;
}
