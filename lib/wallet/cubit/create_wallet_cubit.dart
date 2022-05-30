import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hollow/app/bloc/app_bloc.dart';
import 'package:shared/shared.dart';

part 'create_wallet_cubit.freezed.dart';
part 'create_wallet_cubit.g.dart';
part 'create_wallet_state.dart';

class CreateWalletCubit extends Cubit<CreateWalletState> {
  CreateWalletCubit() : super(const CreateWalletState());

  void selectWalletType(WalletType? type) => emit(
        state.copyWith(walletType: type),
      );

  void proceedWithWalletType() => emit(
        state.copyWith(wallet: state.wallet.copyWith(type: state.walletType)),
      );

  void unselectWalletType() => emit(
        state.copyWith(wallet: state.wallet.copyWith(type: null)),
      );

  void selectWalletCurrency(Currency? currency) => emit(
        state.copyWith(wallet: state.wallet.copyWith(currency: currency)),
      );

  void unselectWalletCurrency() => emit(
        state.copyWith(wallet: state.wallet.copyWith(currency: null)),
      );

  Future<void> createWallet() async {
    emit(
      state.copyWith(createWalletStatus: CreateWalletStatus.creating),
    );
    await Future<void>.delayed(const Duration(seconds: 2));
    emit(
      state.copyWith(createWalletStatus: CreateWalletStatus.successful),
    );
    // try {
    //   await _authenticationRepository.login(
    //     email: state.email.value,
    //     password: state.password.value,
    //     updateTokenCallback: (token) => _appBloc.add(
    //       AppEvent.authTokenUpdated(token),
    //     ),
    //   );
    //   emit(state.copyWith(status: FormzStatus.submissionSuccess));
    // }
    //  on LogInWithEmailAndPasswordFailure catch (e) {
    //   emit(
    //     state.copyWith(
    //       errorMessage: e.message,
    //       status: FormzStatus.submissionFailure,
    //     ),
    //   );
    // }
    // catch (_) {
    //   emit(state.copyWith(status: FormzStatus.submissionFailure));
    // }
  }

  Future<void> fetchAvailableCurrencies() async {
    emit(state.copyWith(fetchCurrenciesStatus: FetchCurrenciesStatus.fetching));
    await Future<void>.delayed(const Duration(seconds: 5));
    emit(
      state.copyWith(
        availableCurrencies: const [
          Currency(name: 'EUR'),
          Currency(name: 'NGN'),
          Currency(name: 'USD'),
        ],
        fetchCurrenciesStatus: FetchCurrenciesStatus.successful,
      ),
    );
  }
}
