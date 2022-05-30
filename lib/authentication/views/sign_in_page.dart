import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:formz/formz.dart';
import 'package:hollow/app/bloc/app_bloc.dart';
import 'package:hollow/authentication/cubits/login/login_cubit.dart';
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
    return BlocConsumer<LoginCubit, LoginState>(
      listenWhen: (previous, current) => previous.status != current.status,
      buildWhen: (previous, current) => previous.status != current.status,
      listener: (context, state) {},
      builder: (context, state) {
        return AppScaffold(
          inProgress: state.status == FormzStatus.submissionInProgress,
          body: Center(
            child: AppText.heading3('Sign in page'),
          ),
        );
      },
    );
  }
}
