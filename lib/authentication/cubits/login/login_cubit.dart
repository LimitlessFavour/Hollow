import 'package:authentication_repository/authentication_repository.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hollow/app/bloc/app_bloc.dart';
import 'package:shared/shared.dart';

part 'login_cubit.freezed.dart';
part 'login_cubit.g.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._authenticationRepository, this._appBloc)
      : super(const LoginState());

  final AuthenticationRepository _authenticationRepository;
  final AppBloc _appBloc;

  void emailChanged(String value) {
    final email = Email.dirty(value);
    emit(
      state.copyWith(
        email: email,
        status: Formz.validate([email, state.password]),
      ),
    );
  }

  void passwordChanged(String value) {
    final password = Password.dirty(value);
    emit(
      state.copyWith(
        password: password,
        status: Formz.validate([state.email, password]),
      ),
    );
  }

  Future<void> logInWithCredentials() async {
    if (!state.status.isValidated) return;
    emit(state.copyWith(status: FormzStatus.submissionInProgress));
    try {
      final result = await _authenticationRepository.login(
        email: state.email.value,
        password: state.password.value,
        updateTokenCallback: (token) => _appBloc.add(
          AppEvent.authTokenUpdated(token),
        ),
      );
      result.when((error) {
        throw LogInWithEmailAndPasswordFailure(error.toString());
      }, (user) {
        _appBloc.add(AppEvent.userChanged(user));
        emit(state.copyWith(status: FormzStatus.submissionSuccess));
      });
    } on LogInWithEmailAndPasswordFailure catch (e) {
      emit(
        state.copyWith(
          errorMessage: e.message,
          status: FormzStatus.submissionFailure,
        ),
      );
    } catch (_) {
      emit(state.copyWith(status: FormzStatus.submissionFailure));
    }
  }
}
