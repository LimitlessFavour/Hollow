import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:formz/formz.dart';
import 'package:hollow/app/bloc/app_bloc.dart';
import 'package:hollow/authentication/cubits/login/login_cubit.dart';
import 'package:hollow/l10n/l10n.dart';
import 'package:hollow_design_system/hollow_design_system.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  static Page<void> page(ValueKey<String> key) => CupertinoPage(
        key: key,
        child: const LoginPage(),
      );

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(
        context.read<AuthenticationRepository>(),
        context.read<AppBloc>(),
      ),
      child: const _LoginView(),
    );
  }
}

class _LoginView extends StatelessWidget {
  const _LoginView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return BlocConsumer<LoginCubit, LoginState>(
      listenWhen: (previous, current) => previous.status != current.status,
      buildWhen: (previous, current) => previous.status != current.status,
      listener: (context, state) {},
      builder: (context, state) {
        return AppScaffold(
          inProgress: state.status == FormzStatus.submissionInProgress,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AppGap.large(),
              const _SignInText(),
              const AppGap.regular(),
              AppText.paragraph1(
                l10n.please_proceed_signing,
                color: context.theme.colors.grey700,
              ),
              const AppGap.large(),
              const _EmailAddress(),
              const _Password(),
              const AppGap.large(),
              const _SigninButton(),
            ],
          ),
        );
      },
    );
  }
}

class _SignInText extends StatelessWidget {
  const _SignInText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: context.width * 0.55),
      child: AppText.heading2(
        l10n.sign_in,
        fontFamily: AppFontFamily.karla,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

class _EmailAddress extends StatelessWidget {
  const _EmailAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return AppTextField(
          padding: const AppEdgeInsets.only(bottom: AppGapSize.semiBig),
          hintText: l10n.email_address,
          keyboardType: TextInputType.emailAddress,
          errorText:
              state.email.invalid ? l10n.enter_valid_email : null,
          onChanged: (email) => context.read<LoginCubit>().emailChanged(email),
        );
      },
    );
  }
}

class _Password extends StatelessWidget {
  const _Password({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state) {
        print('password rebuilt');
        print('password ${state.password.value}');
        return AppPadding(
          padding: const AppEdgeInsets.only(bottom: AppGapSize.regular),
          child: AppTextField(
            hintText: l10n.password,
            onChanged: (password) =>
                context.read<LoginCubit>().passwordChanged(password),
          ),
        );
      },
    );
  }
}

class _SigninButton extends StatelessWidget {
  const _SigninButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        final l10n = context.l10n;
        final valid = state.status.isValidated;
        print('signin isvalid? : $valid');
        return AppButton(
          title: l10n.sign_in.toLowerCase(),
          onTap: valid
              ? () => context.read<LoginCubit>().logInWithCredentials()
              : null,
        );
      },
    );
  }
}
