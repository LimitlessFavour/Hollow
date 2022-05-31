import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';
import 'package:hollow/app/app.dart';
import 'package:hollow/authentication/cubits/signup/sign_up_cubit.dart';
import 'package:hollow/authentication/widgets/app_checkbox.dart';
import 'package:hollow/authentication/widgets/onboarding_checkbox.dart';
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
      create: (context) => SignupCubit(
        context.read<AuthenticationRepository>(),
        context.read<AppBloc>(),
      ),
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
      listenWhen: (previous, current) => previous.status != current.status,
      buildWhen: (previous, current) => previous.status != current.status,
      listener: (context, state) {
        if (state.status.isSubmissionSuccess) {
          print('submission success now');
        }
        if (state.status.isSubmissionFailure) {
          print('submission failure');
        }
      },
      builder: (context, state) {
        return AppScaffold(
          inProgress: state.status == FormzStatus.submissionInProgress,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AppGap.large(),
                const _CreateNewAccountText(),
                const AppGap.regular(),
                AppText.paragraph1(
                  l10n.we_glad_you_here,
                  color: context.theme.colors.grey700,
                ),
                const AppGap.big(),
                const _FirstNameMiddleName(),
                const _LastName(),
                const _PreferredName(),
                const _PhoneNumber(),
                const _EmailAddress(),
                const _Password(),
                const AppGap.big(),
                const _TermsConditions(),
                const AppGap.large(),
                const _SignupButton(),
                const AppGap.big(),
                const _GotAccount(),
                const AppGap.big(),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _CreateNewAccountText extends StatelessWidget {
  const _CreateNewAccountText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: context.width * 0.55),
      child: AppText.heading2(
        l10n.create_new_account,
        fontFamily: AppFontFamily.karla,
        fontWeight: FontWeight.w500,
      ),
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
          padding: const AppEdgeInsets.only(bottom: AppGapSize.semiBig),
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
          padding: const AppEdgeInsets.only(bottom: AppGapSize.semiBig),
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
          padding: const AppEdgeInsets.only(bottom: AppGapSize.semiBig),
          hintText: l10n.preferred_name_username,
          errorText: state.username.invalid ? 'l10n.enter username' : null,
          onChanged: (name) =>
              context.read<SignupCubit>().usernameChanged(name),
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
          padding: const AppEdgeInsets.only(bottom: AppGapSize.semiBig),
          hintText: l10n.phone_number,
          keyboardType: TextInputType.phone,
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
          padding: const AppEdgeInsets.only(bottom: AppGapSize.semiBig),
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
    final theme = context.theme;
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
            const AppGap.semiBig(),
            AppTextField(
              hintText: 'l10n.confirm_passsword',
              onChanged: (password) => context
                  .read<SignupCubit>()
                  .confirmedPasswordChanged(password),
            ),
            const AppGap.regular(),
            BlocBuilder<SignupCubit, SignupState>(
              builder: (context, state) {
                final pure = state.password.pure;
                return AnimatedSwitcher(
                  duration: theme.durations.regular,
                  child: pure
                      ? const SizedBox.shrink()
                      : Column(
                          children: const [
                            _CharactersLengthCheckBox(),
                            _SpecialCharacterCheckBox(),
                            _NumberCheckBox(),
                            _PasswordMatchCheckbox(),
                          ],
                        ),
                );
              },
            ),
          ],
        );
      },
    );
  }
}

class _CharactersLengthCheckBox extends StatelessWidget {
  const _CharactersLengthCheckBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return BlocBuilder<SignupCubit, SignupState>(
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state) {
        return OnboardingCheckbox(
          title: l10n.must_be_8_chars,
          value: !(state.password.error ?? [])
              .contains(PasswordValidationError.invalidLength),
        );
      },
    );
  }
}

class _SpecialCharacterCheckBox extends StatelessWidget {
  const _SpecialCharacterCheckBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return BlocBuilder<SignupCubit, SignupState>(
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state) {
        return OnboardingCheckbox(
          title: l10n.must_contain_special_char,
          value: !(state.password.error ?? [])
              .contains(PasswordValidationError.noSpecialCharacters),
        );
      },
    );
  }
}

class _NumberCheckBox extends StatelessWidget {
  const _NumberCheckBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return BlocBuilder<SignupCubit, SignupState>(
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state) {
        return OnboardingCheckbox(
          title: l10n.must_contain_number,
          value: !(state.password.error ?? [])
              .contains(PasswordValidationError.noNumbers),
        );
      },
    );
  }
}

class _PasswordMatchCheckbox extends StatelessWidget {
  const _PasswordMatchCheckbox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return BlocBuilder<SignupCubit, SignupState>(
      buildWhen: (previous, current) =>
          previous.password != current.password ||
          previous.confirmedPassword != current.confirmedPassword,
      builder: (context, state) {
        return OnboardingCheckbox(
          title: 'l10n.passwords match',
          value: !state.confirmedPassword.invalid && !state.password.pure,
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
      buildWhen: (previous, current) => previous.status != current.status,
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
          style: theme.typography.paragraph1.copyWith(
            color: theme.colors.primary600,
          ),
          children: <TextSpan>[
            const TextSpan(text: ' '),
            TextSpan(
              text: l10n.sign_in,
              style: theme.typography.paragraph1.copyWith(
                color: theme.colors.success,
                fontWeight: FontWeight.w500,
                decoration: TextDecoration.underline,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () => _navigateToSignIn(context),
            ),
          ],
        ),
      ),
    );
  }

  void _navigateToSignIn(BuildContext context) =>
      context.pushNamed(Routes.login);
}

class _TermsConditions extends StatelessWidget {
  const _TermsConditions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final theme = context.theme;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BlocBuilder<SignupCubit, SignupState>(
          buildWhen: (previous, current) =>
              previous.termsCondition != current.termsCondition,
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.only(top: 3),
              child: AppCheckbox(
                value: state.termsCondition.value,
                size: theme.spacing.semiBig - 4,
                checkedColor: theme.colors.white,
                uncheckedColor: theme.colors.white,
                borderRadius: BorderRadius.circular(6),
                border: Border.all(
                  color: theme.colors.success,
                ),
                checkedWidget: Icon(
                  Icons.check,
                  color: theme.colors.success,
                  size: theme.spacing.regular,
                ),
                onChanged: (bool? value) => context
                    .read<SignupCubit>()
                    .agreeToTermsChanged(!(value ?? false)),
              ),
            );
          },
        ),
        const AppGap.semiSmall(),
        Expanded(
          child: RichText(
            text: TextSpan(
              text: l10n.i_have_read_chagera,
              style: theme.typography.paragraph2.copyWith(
                color: theme.colors.primary600,
              ),
              children: <TextSpan>[
                const TextSpan(text: ' '),
                TextSpan(
                  text: l10n.terms_of_service,
                  style: theme.typography.paragraph2.copyWith(
                    color: theme.colors.success,
                    fontWeight: FontWeight.w500,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = _launchTermsOfService,
                  children: [
                    const TextSpan(text: ', '),
                    TextSpan(
                      text: l10n.privacy_policy,
                      style: theme.typography.paragraph2.copyWith(
                        color: theme.colors.success,
                        fontWeight: FontWeight.w500,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = _launchPrivacyPolicy,
                      children: [
                        const TextSpan(text: ' '),
                        TextSpan(
                          text: l10n.and,
                          style: theme.typography.paragraph2.copyWith(
                            color: theme.colors.primary600,
                          ),
                        ),
                        const TextSpan(text: ' '),
                        TextSpan(
                          text: l10n.card_holder_agreement,
                          style: theme.typography.paragraph2.copyWith(
                            color: theme.colors.success,
                            fontWeight: FontWeight.w500,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = _launchCardholderAgreement,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  void _launchTermsOfService() => launchUrl('https://www.google.com');

  void _launchPrivacyPolicy() => launchUrl('https://www.google.com');

  void _launchCardholderAgreement() => launchUrl('https://www.google.com');
}
