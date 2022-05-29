// ignore_for_file: require_trailing_commas

import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared/shared.dart';

part 'sign_up_cubit.freezed.dart';
part 'sign_up_cubit.g.dart';
part 'sign_up_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this._authenticationRepository) : super(const SignupState());

  final AuthenticationRepository _authenticationRepository;

  void nameChanged(String value) {
    final name = Name.dirty(value);
    emit(state.copyWith(
      name: name,
      status: Formz.validate([
        name,
        state.lastname,
        state.username,
        state.phone,
        state.email,
        state.password,
        state.confirmedPassword,
      ]),
    ));
  }

  void lastnameChanged(String value) {
    final lastname = Name.dirty(value);
    emit(state.copyWith(
      lastname: lastname,
      status: Formz.validate([
        state.name,
        lastname,
        state.username,
        state.phone,
        state.email,
        state.password,
        state.confirmedPassword,
      ]),
    ));
  }

  void emailChanged(String value) {
    final email = Email.dirty(value);
    emit(state.copyWith(
      email: email,
      status: Formz.validate([
        state.name,
        state.lastname,
        state.username,
        state.phone,
        email,
        state.password,
        state.confirmedPassword,
      ]),
    ));
  }

  void phoneChanged(String value) {
    final phone = Phone.dirty(value);
    emit(state.copyWith(
      phone: phone,
      status: Formz.validate([
        state.name,
        state.lastname,
        state.username,
        phone,
        state.email,
        state.password,
        state.confirmedPassword,
      ]),
    ));
  }

  void usernameChanged(String value) {
    final username = Name.dirty(value);
    emit(state.copyWith(
      username: username,
      status: Formz.validate([
        state.name,
        state.lastname,
        username,
        state.phone,
        state.email,
        state.password,
        state.confirmedPassword,
      ]),
    ));
  }

  void passwordChanged(String value) {
    final password = Password.dirty(value);
    final confirmedPassword = ConfirmedPassword.dirty(
      password: password.value,
      value: state.confirmedPassword.value,
    );
    emit(state.copyWith(
      password: password,
      confirmedPassword: confirmedPassword,
      status: Formz.validate([
        state.name,
        state.lastname,
        state.username,
        state.phone,
        state.email,
        password,
        confirmedPassword,
      ]),
    ));
  }

  void confirmedPasswordChanged(String value) {
    final confirmedPassword = ConfirmedPassword.dirty(
      password: state.password.value,
      value: value,
    );
    emit(state.copyWith(
      confirmedPassword: confirmedPassword,
      status: Formz.validate([
        state.name,
        state.lastname,
        state.username,
        state.phone,
        state.email,
        state.password,
        confirmedPassword,
      ]),
    ));
  }

  Future<void> signUpWithCredentials() async {
    if (!state.status.isValidated) return;
    emit(state.copyWith(status: FormzStatus.submissionInProgress));
    try {
      await _authenticationRepository.signup(
        name: state.name.value,
        lastname: state.lastname.value,
        username: state.username.value,
        phonenumber: state.phone.value,
        email: state.email.value,
        password: state.password.value,
      );
      emit(state.copyWith(status: FormzStatus.submissionSuccess));
    }
    // on SignUpWithEmailAndPasswordFailure catch (e) {
    //   emit(state.copyWith(
    //     errorMessage: e.message,
    //     status: FormzStatus.submissionFailure,
    //   ));
    // }
    catch (_) {
      emit(state.copyWith(status: FormzStatus.submissionFailure));
    }
  }
}
