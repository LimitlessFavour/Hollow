import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:formz/formz.dart';
import 'package:hollow/app/bloc/app_bloc.dart';
import 'package:hollow/authentication/cubits/signup/sign_up_cubit.dart';
import 'package:hollow/l10n/l10n.dart';
import 'package:hollow_design_system/hollow_design_system.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  static Page<void> page(ValueKey<String> key) => CupertinoPage(
        key: key,
        child: const SignupPage(),
      );

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          SignupCubit(context.read<AuthenticationRepository>()),
      child: const _SignupView(),
    );
  }
}

class _SignupView extends StatelessWidget {
  const _SignupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return BlocConsumer<SignupCubit, SignupState>(
      listener: (context, state) {},
      builder: (context, state) {
        return AppScaffold(
          inProgress: state.status == FormzStatus.submissionInProgress,
          body: Center(
            child: AppScrollableColumn(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AppGap.large(),
                AppText.heading3(l10n.create_new_account),
                const AppGap.regular(),
                AppText.heading3(l10n.we_glad_you_here),
                const AppGap.big(),
                const _FirstNameMiddleName(),
                const _LastName(),
                const _PreferredName(),
                const _PhoneNumber(),
                const _EmailAddress(),
                const _Password(),
                const AppGap.large(),
                const _TermsConditions(),
                const AppGap.large(),
                const _SignupButton(),
                const AppGap.big(),
                const _GotAccount(),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _FirstNameMiddleName extends StatelessWidget {
  const _FirstNameMiddleName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return BlocBuilder<SignupCubit, SignupState>(
      buildWhen: (previous, current) => previous.name != current.name,
      builder: (context, state) {
        return AppTextField(
          padding: const AppEdgeInsets.only(bottom: AppGapSize.regular),
          hintText: l10n.first_name_middle_name,
          errorText: state.name.invalid ? 'l10n.type in a name' : null,
          onChanged: (name) => context.read<SignupCubit>().nameChanged(name),
        );
      },
    );
  }
}

class _LastName extends StatelessWidget {
  const _LastName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return BlocBuilder<SignupCubit, SignupState>(
      buildWhen: (previous, current) => previous.lastname != current.lastname,
      builder: (context, state) {
        return AppTextField(
          padding: const AppEdgeInsets.only(bottom: AppGapSize.regular),
          hintText: l10n.last_name,
          errorText: state.lastname.invalid ? 'l10n.enter a last name' : null,
          onChanged: (lastname) =>
              context.read<SignupCubit>().lastnameChanged(lastname),
        );
      },
    );
  }
}

class _PreferredName extends StatelessWidget {
  const _PreferredName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return BlocBuilder<SignupCubit, SignupState>(
      buildWhen: (previous, current) => previous.username != current.username,
      builder: (context, state) {
        return AppTextField(
          padding: const AppEdgeInsets.only(bottom: AppGapSize.regular),
          hintText: l10n.preferred_name_username,
          errorText: state.username.invalid ? 'l10n.enter username' : null,
          onChanged: (name) => context.read<SignupCubit>().nameChanged(name),
        );
      },
    );
  }
}

class _PhoneNumber extends StatelessWidget {
  const _PhoneNumber({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return BlocBuilder<SignupCubit, SignupState>(
      buildWhen: (previous, current) => previous.phone != current.phone,
      builder: (context, state) {
        return AppTextField(
          padding: const AppEdgeInsets.only(bottom: AppGapSize.regular),
          hintText: l10n.phone_number,
          errorText:
              state.phone.invalid ? 'l10n.enter a valid phonenumber' : null,
          onChanged: (phone) => context.read<SignupCubit>().phoneChanged(phone),
        );
      },
    );
  }
}

class _EmailAddress extends StatelessWidget {
  const _EmailAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return BlocBuilder<SignupCubit, SignupState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return AppTextField(
          padding: const AppEdgeInsets.only(bottom: AppGapSize.regular),
          hintText: l10n.email_address,
          errorText:
              state.email.invalid ? 'l10n.enter a valid email address' : null,
          onChanged: (email) => context.read<SignupCubit>().emailChanged(email),
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
    return BlocBuilder<SignupCubit, SignupState>(
      buildWhen: (previous, current) =>
          previous.password != current.password ||
          previous.confirmedPassword != current.confirmedPassword,
      builder: (context, state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppTextField(
              hintText: l10n.password,
              onChanged: (password) =>
                  context.read<SignupCubit>().passwordChanged(password),
            ),
            const AppGap.regular(),
            AppTextField(
              hintText: 'l10n.confirm_passsword',
              onChanged: (password) => context
                  .read<SignupCubit>()
                  .confirmedPasswordChanged(password),
            ),
            const AppGap.regular(),
          ],
        );
      },
    );
  }
}

class _SignupButton extends StatelessWidget {
  const _SignupButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignupCubit, SignupState>(
      // buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        final l10n = context.l10n;
        return AppButton(
          title: l10n.create_my_account,
          onTap: state.status.isValid
              ? () => context.read<SignupCubit>().signUpWithCredentials()
              : null,
        );
      },
    );
  }
}

class _GotAccount extends StatelessWidget {
  const _GotAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final theme = context.theme;
    return Center(
      child: RichText(
        text: TextSpan(
          text: l10n.got_an_account_question,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: theme.colors.primary600,
          ),
          children: <TextSpan>[
            TextSpan(
              text: l10n.sign_in,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: theme.colors.primary600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _TermsConditions extends StatelessWidget {
  const _TermsConditions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final theme = context.theme;
    return RichText(
      text: TextSpan(
        text: l10n.i_have_read_chagera,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: theme.colors.primary600,
        ),
        children: <TextSpan>[
          TextSpan(
            text: l10n.terms_of_service,
          ),
          TextSpan(
            text: l10n.privacy_policy,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: theme.colors.primary600,
              decoration: TextDecoration.underline,
            ),
          ),
          TextSpan(
            text: l10n.card_holder_agreement,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: theme.colors.primary600,
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
    );
  }
}
