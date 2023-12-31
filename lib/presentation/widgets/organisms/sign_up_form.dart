import 'package:flutter/material.dart';
import 'package:water_tracker/config/theme/theme_palette/light_palette.dart';
import 'package:water_tracker/env_variables.dart';
import 'package:water_tracker/form_validators.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:water_tracker/generated/assets/assets.gen.dart';
import 'package:water_tracker/generated/locale_keys.g.dart';
import 'package:water_tracker/presentation/widgets/molecules/custom_button.dart';
import 'package:water_tracker/presentation/widgets/molecules/input_field_widget.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({
    super.key,
    required this.isButtonEnabled,
    required this.onSignUpButtonPressed,
  });

  final void Function(String email, String password) onSignUpButtonPressed;
  final bool isButtonEnabled;

  @override
  State<SignUpForm> createState() => _MyLogFormWidgetState();
}

class _MyLogFormWidgetState extends State<SignUpForm> {
  static const spacer = SizedBox(height: 28);
  final _pass = TextEditingController();
  final _email = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final emailNode = FocusNode();
  static const fontSize = 24.0;

  @override
  void dispose() {
    _pass.dispose();
    _email.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          Text(
            LocaleKeys.start_your_journey.tr(),
            style: Theme.of(context).textTheme.headline2?.copyWith(
                  fontSize: fontSize,
                  color: LightPalette.primaryColor,
                  fontWeight: FontWeight.w500,
                  fontFamily: Assets.fonts.senBold,
                ),
          ),
          spacer,
          InputFieldWidget(
            labelText: LocaleKeys.enter_your_email.tr(),
            validator: FormValidators.emailValidator,
            controller: _email,
          ),
          spacer,
          InputFieldWidget(
            labelText: LocaleKeys.enter_password.tr(),
            validator: FormValidators.passwordRegValidator,
            controller: _pass,
          ),
          spacer,
          InputFieldWidget(
            labelText: LocaleKeys.re_enter_your_password.tr(),
            validator: (value) =>
                FormValidators.repeatPasswordValidator(value, _pass.text),
          ),
          spacer,
          CustomButton(
            isEnabled: widget.isButtonEnabled,
            onPressed: () {
              if (EnvVariables.disableValidation ||
                  formKey.currentState!.validate()) {
                widget.onSignUpButtonPressed(_email.text, _pass.text);
              }
            },
            text: LocaleKeys.sign_up.tr(),
            buttonColor: Theme.of(context).primaryColor,
            textButtonColor: Theme.of(context).primaryColorLight,
          ),
        ],
      ),
    );
  }
}
