import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hollow/app/bloc/app_bloc.dart';
import 'package:shared/shared.dart';
import 'package:wallet_repository/wallet_repository.dart';

part 'create_wallet_cubit.freezed.dart';
part 'create_wallet_cubit.g.dart';
part 'create_wallet_state.dart';

class CreateWalletCubit extends Cubit<CreateWalletState> {
  CreateWalletCubit(WalletRepository walletRepository, AppBloc appBloc)
      : _walletRepository = walletRepository,
        _appBloc = appBloc,
        super(const CreateWalletState());

  final WalletRepository _walletRepository;
  final AppBloc _appBloc;

  void selectWalletType(WalletType? type) => emit(
        state.copyWith(walletType: type),
      );

  void proceedWithWalletType() => emit(
        state.copyWith(wallet: state.wallet.copyWith(type: state.walletType)),
      );

  void unselectWalletType() => emit(
        state.copyWith(
          wallet: state.wallet.copyWith(
            type: null,
          ),
        ),
      );

  void selectWalletCurrency(Currency? currency) => emit(
        state.copyWith(
          wallet: state.wallet.copyWith(
            currency: currency,
          ),
        ),
      );

  void unselectWalletCurrency() => emit(
        state.copyWith(
          fetchCurrenciesStatus: FetchCurrenciesStatus.initial,
          wallet: state.wallet.copyWith(
            currency: null,
          ),
        ),
      );

  Future<void> createWallet() async {
    try {
      final user = _appBloc.state.user;
      emit(
        state.copyWith(createWalletStatus: CreateWalletStatus.creating),
      );
      //*create wallet endpoint returns the updated user model containing the added wallet.
      final result = await _walletRepository.createWallet(
        wallet: state.wallet,
        userId: user.userId,
        user: user,
      );
      result.when((error) {
        throw CreateWalletFailure(error.toString());
      }, (user) {
        //* we update the new user
        _appBloc.add(AppEvent.userChanged(user));
        emit(state.copyWith(createWalletStatus: CreateWalletStatus.successful));
      });
    } on CreateWalletFailure catch (e) {
      debugPrint('failed to create wallet');
      _emitErrorState(e.message);
    } catch (e) {
      print(e);
    }
  }

  Future<void> fetchAvailableCurrencies() async {
    if (state.fetchCurrenciesStatus.isSuccessful || state.wallet.type == null) {
      return;
    }
    try {
      emit(
        state.copyWith(fetchCurrenciesStatus: FetchCurrenciesStatus.fetching),
      );
      final result = await _walletRepository.fetchAvailableCurrencies(
        walletType: state.wallet.type!,
      );
      result.when((error) {
        throw FetchAvailableCurrenciesFailure(error.toString());
      }, (currencies) {
        //* we update state with available currencies
        emit(
          state.copyWith(
            availableCurrencies: currencies,
            fetchCurrenciesStatus: FetchCurrenciesStatus.successful,
          ),
        );
      });
    } on FetchAvailableCurrenciesFailure catch (e) {
      debugPrint('failed to fetch currencies');
      _emitErrorState(e.message);
    } catch (e) {
      print(e);
    }
  }

  void _emitErrorState(String message) {
    return emit(
      state.copyWith(
        errorMessage: message,
        createWalletStatus: CreateWalletStatus.failed,
      ),
    );
  }
}
