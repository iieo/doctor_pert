import 'package:doctor_pert/screens/authentication_screen/authentication_components.dart';
import 'package:doctor_pert/screens/authentication_screen/authentication_screen.dart';
import 'package:doctor_pert/theme/theme_data.dart';
import 'package:doctor_pert/translation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:go_router/go_router.dart';

import '../../handler/authentication_handler.dart';
import 'google_sign_in_button.dart';

class SignUpContainer extends StatefulWidget {
  const SignUpContainer({super.key});

  @override
  State<SignUpContainer> createState() => _SignUpContainer();
}

class _SignUpContainer extends State<SignUpContainer> {
  final double loginWidth = 300;

  final passwordController = TextEditingController();
  final passwordControllerCheck = TextEditingController();
  final emailController = TextEditingController();
  final lastNameController = TextEditingController();
  final passwordValidator = GlobalKey<FormState>();

  bool loading = false;

  @override
  void setState(fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  void UpdateLoading(bool isLoading) {
    setState(() {
      loading = isLoading;
    });
  }

  void _signupUser() async {
    UpdateLoading(true);
    try {
      await FirebaseAuthHandler.trySignup(lastNameController.text,
          emailController.text, passwordController.text);
    } on FirebaseAuthException catch (e) {
      ShowError(
          "${t('signup_failed')} ${FirebaseAuthHandler.getFirebaseErrorText(e)}",
          context);
    } catch (e) {
      ShowError(t("unknown_error"), context);
    }
    UpdateLoading(false);
  }

  InputDecoration getInputDecoration(String label, String hint) {
    return InputDecoration(
        fillColor: Colors.grey[200],
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(defaultRadius)),
        ),
        labelText: t(label),
        hintText: t(hint));
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      AuthItemWrapper(
          child: Text(t("signup"),
              textAlign: TextAlign.left,
              style: Theme.of(context).textTheme.headlineMedium)),
      AuthItemWrapper(child: GoogleSignInButton()),
      AuthItemWrapper(
          maxHeight: 35,
          minHeight: 25,
          paddingHeight: 10,
          paddingWidth: 15,
          child: Text(t("or_login_with_email"),
              textAlign: TextAlign.left,
              style: Theme.of(context).textTheme.titleSmall)),
      AuthItemWrapper(
          child: TextFormField(
        controller: lastNameController,
        style: Theme.of(context).textTheme.bodyMedium,
        autofillHints: const [AutofillHints.familyName],
        decoration: getInputDecoration('Last name', 'Enter your family name.'),
      )),
      AuthItemWrapper(
          child: TextFormField(
        controller: emailController,
        autofillHints: const [AutofillHints.email],
        style: Theme.of(context).textTheme.bodyMedium,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: (value) => value!.isValidEmail() ? null : t("invalid_email"),
        decoration: getInputDecoration('Email', 'Enter your email.'),
      )),
      AuthItemWrapper(
        child: TextFormField(
          autofillHints: const [AutofillHints.newPassword],
          style: Theme.of(context).textTheme.bodyMedium,
          controller: passwordController,
          obscureText: true,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: (value) => value!.isValidPassword()
              ? null
              : "Password must be at least 8 characters long.",
          decoration: getInputDecoration('Password', 'Enter your password'),
        ),
      ),
      AuthItemWrapper(
        child: TextFormField(
            autofillHints: const [AutofillHints.newPassword],
            style: Theme.of(context).textTheme.bodyMedium,
            controller: passwordControllerCheck,
            obscureText: true,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (value) =>
                passwordController.text == passwordControllerCheck.text
                    ? null
                    : "Password must be at least 8 characters long.",
            decoration: getInputDecoration(
                'Repeat your Password', "Enter your password again.")),
      ),
      AuthItemWrapper(
          child: SizedBox.expand(
              child: ElevatedButton(
                  onPressed: _signupUser,
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Theme.of(context).primaryColor)),
                  child: loading
                      ? const CircularProgressIndicator()
                      : Text(t("signup"))))),
      AuthItemWrapper(
          paddingHeight: 2,
          minHeight: 20,
          maxHeight: 30,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            InkWell(
                child: Text(t("go_login"),
                    style: Theme.of(context).textTheme.titleSmall),
                onTap: () {
                  FirebaseAuthHandler.logout();
                  GoRouter.of(context).go("/login");
                })
          ])),
    ]);
  }
}
