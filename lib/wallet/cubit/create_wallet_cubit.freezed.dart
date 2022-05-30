// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_wallet_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateWalletState _$CreateWalletStateFromJson(Map<String, dynamic> json) {
  return _CreateWalletState.fromJson(json);
}

/// @nodoc
class _$CreateWalletStateTearOff {
  const _$CreateWalletStateTearOff();

  _CreateWalletState call(
      {Wallet wallet = Wallet.empty,
      CreateWalletStatus createWalletStatus = CreateWalletStatus.initial,
      FetchCurrenciesStatus fetchCurrenciesStatus =
          FetchCurrenciesStatus.initial,
      List<Currency> availableCurrencies = const <Currency>[],
      WalletType? walletType,
      String? errorMessage}) {
    return _CreateWalletState(
      wallet: wallet,
      createWalletStatus: createWalletStatus,
      fetchCurrenciesStatus: fetchCurrenciesStatus,
      availableCurrencies: availableCurrencies,
      walletType: walletType,
      errorMessage: errorMessage,
    );
  }

  CreateWalletState fromJson(Map<String, Object?> json) {
    return CreateWalletState.fromJson(json);
  }
}

/// @nodoc
const $CreateWalletState = _$CreateWalletStateTearOff();

/// @nodoc
mixin _$CreateWalletState {
  Wallet get wallet => throw _privateConstructorUsedError;
  CreateWalletStatus get createWalletStatus =>
      throw _privateConstructorUsedError;
  FetchCurrenciesStatus get fetchCurrenciesStatus =>
      throw _privateConstructorUsedError;
  List<Currency> get availableCurrencies => throw _privateConstructorUsedError;
  WalletType? get walletType => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateWalletStateCopyWith<CreateWalletState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateWalletStateCopyWith<$Res> {
  factory $CreateWalletStateCopyWith(
          CreateWalletState value, $Res Function(CreateWalletState) then) =
      _$CreateWalletStateCopyWithImpl<$Res>;
  $Res call(
      {Wallet wallet,
      CreateWalletStatus createWalletStatus,
      FetchCurrenciesStatus fetchCurrenciesStatus,
      List<Currency> availableCurrencies,
      WalletType? walletType,
      String? errorMessage});

  $WalletCopyWith<$Res> get wallet;
}

/// @nodoc
class _$CreateWalletStateCopyWithImpl<$Res>
    implements $CreateWalletStateCopyWith<$Res> {
  _$CreateWalletStateCopyWithImpl(this._value, this._then);

  final CreateWalletState _value;
  // ignore: unused_field
  final $Res Function(CreateWalletState) _then;

  @override
  $Res call({
    Object? wallet = freezed,
    Object? createWalletStatus = freezed,
    Object? fetchCurrenciesStatus = freezed,
    Object? availableCurrencies = freezed,
    Object? walletType = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      wallet: wallet == freezed
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as Wallet,
      createWalletStatus: createWalletStatus == freezed
          ? _value.createWalletStatus
          : createWalletStatus // ignore: cast_nullable_to_non_nullable
              as CreateWalletStatus,
      fetchCurrenciesStatus: fetchCurrenciesStatus == freezed
          ? _value.fetchCurrenciesStatus
          : fetchCurrenciesStatus // ignore: cast_nullable_to_non_nullable
              as FetchCurrenciesStatus,
      availableCurrencies: availableCurrencies == freezed
          ? _value.availableCurrencies
          : availableCurrencies // ignore: cast_nullable_to_non_nullable
              as List<Currency>,
      walletType: walletType == freezed
          ? _value.walletType
          : walletType // ignore: cast_nullable_to_non_nullable
              as WalletType?,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $WalletCopyWith<$Res> get wallet {
    return $WalletCopyWith<$Res>(_value.wallet, (value) {
      return _then(_value.copyWith(wallet: value));
    });
  }
}

/// @nodoc
abstract class _$CreateWalletStateCopyWith<$Res>
    implements $CreateWalletStateCopyWith<$Res> {
  factory _$CreateWalletStateCopyWith(
          _CreateWalletState value, $Res Function(_CreateWalletState) then) =
      __$CreateWalletStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Wallet wallet,
      CreateWalletStatus createWalletStatus,
      FetchCurrenciesStatus fetchCurrenciesStatus,
      List<Currency> availableCurrencies,
      WalletType? walletType,
      String? errorMessage});

  @override
  $WalletCopyWith<$Res> get wallet;
}

/// @nodoc
class __$CreateWalletStateCopyWithImpl<$Res>
    extends _$CreateWalletStateCopyWithImpl<$Res>
    implements _$CreateWalletStateCopyWith<$Res> {
  __$CreateWalletStateCopyWithImpl(
      _CreateWalletState _value, $Res Function(_CreateWalletState) _then)
      : super(_value, (v) => _then(v as _CreateWalletState));

  @override
  _CreateWalletState get _value => super._value as _CreateWalletState;

  @override
  $Res call({
    Object? wallet = freezed,
    Object? createWalletStatus = freezed,
    Object? fetchCurrenciesStatus = freezed,
    Object? availableCurrencies = freezed,
    Object? walletType = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_CreateWalletState(
      wallet: wallet == freezed
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as Wallet,
      createWalletStatus: createWalletStatus == freezed
          ? _value.createWalletStatus
          : createWalletStatus // ignore: cast_nullable_to_non_nullable
              as CreateWalletStatus,
      fetchCurrenciesStatus: fetchCurrenciesStatus == freezed
          ? _value.fetchCurrenciesStatus
          : fetchCurrenciesStatus // ignore: cast_nullable_to_non_nullable
              as FetchCurrenciesStatus,
      availableCurrencies: availableCurrencies == freezed
          ? _value.availableCurrencies
          : availableCurrencies // ignore: cast_nullable_to_non_nullable
              as List<Currency>,
      walletType: walletType == freezed
          ? _value.walletType
          : walletType // ignore: cast_nullable_to_non_nullable
              as WalletType?,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateWalletState implements _CreateWalletState {
  const _$_CreateWalletState(
      {this.wallet = Wallet.empty,
      this.createWalletStatus = CreateWalletStatus.initial,
      this.fetchCurrenciesStatus = FetchCurrenciesStatus.initial,
      this.availableCurrencies = const <Currency>[],
      this.walletType,
      this.errorMessage});

  factory _$_CreateWalletState.fromJson(Map<String, dynamic> json) =>
      _$$_CreateWalletStateFromJson(json);

  @JsonKey()
  @override
  final Wallet wallet;
  @JsonKey()
  @override
  final CreateWalletStatus createWalletStatus;
  @JsonKey()
  @override
  final FetchCurrenciesStatus fetchCurrenciesStatus;
  @JsonKey()
  @override
  final List<Currency> availableCurrencies;
  @override
  final WalletType? walletType;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'CreateWalletState(wallet: $wallet, createWalletStatus: $createWalletStatus, fetchCurrenciesStatus: $fetchCurrenciesStatus, availableCurrencies: $availableCurrencies, walletType: $walletType, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateWalletState &&
            const DeepCollectionEquality().equals(other.wallet, wallet) &&
            const DeepCollectionEquality()
                .equals(other.createWalletStatus, createWalletStatus) &&
            const DeepCollectionEquality()
                .equals(other.fetchCurrenciesStatus, fetchCurrenciesStatus) &&
            const DeepCollectionEquality()
                .equals(other.availableCurrencies, availableCurrencies) &&
            const DeepCollectionEquality()
                .equals(other.walletType, walletType) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(wallet),
      const DeepCollectionEquality().hash(createWalletStatus),
      const DeepCollectionEquality().hash(fetchCurrenciesStatus),
      const DeepCollectionEquality().hash(availableCurrencies),
      const DeepCollectionEquality().hash(walletType),
      const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$CreateWalletStateCopyWith<_CreateWalletState> get copyWith =>
      __$CreateWalletStateCopyWithImpl<_CreateWalletState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateWalletStateToJson(this);
  }
}

abstract class _CreateWalletState implements CreateWalletState {
  const factory _CreateWalletState(
      {Wallet wallet,
      CreateWalletStatus createWalletStatus,
      FetchCurrenciesStatus fetchCurrenciesStatus,
      List<Currency> availableCurrencies,
      WalletType? walletType,
      String? errorMessage}) = _$_CreateWalletState;

  factory _CreateWalletState.fromJson(Map<String, dynamic> json) =
      _$_CreateWalletState.fromJson;

  @override
  Wallet get wallet;
  @override
  CreateWalletStatus get createWalletStatus;
  @override
  FetchCurrenciesStatus get fetchCurrenciesStatus;
  @override
  List<Currency> get availableCurrencies;
  @override
  WalletType? get walletType;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$CreateWalletStateCopyWith<_CreateWalletState> get copyWith =>
      throw _privateConstructorUsedError;
}
