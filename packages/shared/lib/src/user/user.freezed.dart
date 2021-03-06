// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  _User call(
      {required String userId,
      String? email,
      String? firstname,
      String? middleName,
      String? lastname,
      String? username,
      String? phoneNumber,
      @JsonKey(toJson: walletsToJson, fromJson: walletsFromJson)
          List<Wallet> wallets = const <Wallet>[]}) {
    return _User(
      userId: userId,
      email: email,
      firstname: firstname,
      middleName: middleName,
      lastname: lastname,
      username: username,
      phoneNumber: phoneNumber,
      wallets: wallets,
    );
  }

  User fromJson(Map<String, Object?> json) {
    return User.fromJson(json);
  }
}

/// @nodoc
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  String get userId => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get firstname => throw _privateConstructorUsedError;
  String? get middleName => throw _privateConstructorUsedError;
  String? get lastname => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(toJson: walletsToJson, fromJson: walletsFromJson)
  List<Wallet> get wallets => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {String userId,
      String? email,
      String? firstname,
      String? middleName,
      String? lastname,
      String? username,
      String? phoneNumber,
      @JsonKey(toJson: walletsToJson, fromJson: walletsFromJson)
          List<Wallet> wallets});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? userId = freezed,
    Object? email = freezed,
    Object? firstname = freezed,
    Object? middleName = freezed,
    Object? lastname = freezed,
    Object? username = freezed,
    Object? phoneNumber = freezed,
    Object? wallets = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      firstname: firstname == freezed
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String?,
      middleName: middleName == freezed
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastname: lastname == freezed
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      wallets: wallets == freezed
          ? _value.wallets
          : wallets // ignore: cast_nullable_to_non_nullable
              as List<Wallet>,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String userId,
      String? email,
      String? firstname,
      String? middleName,
      String? lastname,
      String? username,
      String? phoneNumber,
      @JsonKey(toJson: walletsToJson, fromJson: walletsFromJson)
          List<Wallet> wallets});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object? userId = freezed,
    Object? email = freezed,
    Object? firstname = freezed,
    Object? middleName = freezed,
    Object? lastname = freezed,
    Object? username = freezed,
    Object? phoneNumber = freezed,
    Object? wallets = freezed,
  }) {
    return _then(_User(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      firstname: firstname == freezed
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String?,
      middleName: middleName == freezed
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastname: lastname == freezed
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      wallets: wallets == freezed
          ? _value.wallets
          : wallets // ignore: cast_nullable_to_non_nullable
              as List<Wallet>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User extends _User {
  const _$_User(
      {required this.userId,
      this.email,
      this.firstname,
      this.middleName,
      this.lastname,
      this.username,
      this.phoneNumber,
      @JsonKey(toJson: walletsToJson, fromJson: walletsFromJson)
          this.wallets = const <Wallet>[]})
      : super._();

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final String userId;
  @override
  final String? email;
  @override
  final String? firstname;
  @override
  final String? middleName;
  @override
  final String? lastname;
  @override
  final String? username;
  @override
  final String? phoneNumber;
  @override
  @JsonKey(toJson: walletsToJson, fromJson: walletsFromJson)
  final List<Wallet> wallets;

  @override
  String toString() {
    return 'User(userId: $userId, email: $email, firstname: $firstname, middleName: $middleName, lastname: $lastname, username: $username, phoneNumber: $phoneNumber, wallets: $wallets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _User &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.firstname, firstname) &&
            const DeepCollectionEquality()
                .equals(other.middleName, middleName) &&
            const DeepCollectionEquality().equals(other.lastname, lastname) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.wallets, wallets));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(firstname),
      const DeepCollectionEquality().hash(middleName),
      const DeepCollectionEquality().hash(lastname),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(wallets));

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(this);
  }
}

abstract class _User extends User {
  const factory _User(
      {required String userId,
      String? email,
      String? firstname,
      String? middleName,
      String? lastname,
      String? username,
      String? phoneNumber,
      @JsonKey(toJson: walletsToJson, fromJson: walletsFromJson)
          List<Wallet> wallets}) = _$_User;
  const _User._() : super._();

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String get userId;
  @override
  String? get email;
  @override
  String? get firstname;
  @override
  String? get middleName;
  @override
  String? get lastname;
  @override
  String? get username;
  @override
  String? get phoneNumber;
  @override
  @JsonKey(toJson: walletsToJson, fromJson: walletsFromJson)
  List<Wallet> get wallets;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}
