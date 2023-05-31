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
          "${t(PhraseKey.signup_failed)} ${FirebaseAuthHandler.getFirebaseErrorText(e)}",
          context);
    } catch (e) {
      ShowError(t(PhraseKey.unknown_error), context);
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
        labelText: label,
        hintText: hint);
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      AuthItemWrapper(
          child: Text(t(PhraseKey.signup),
              textAlign: TextAlign.left,
              style: Theme.of(context).textTheme.headlineMedium)),
      const AuthItemWrapper(child: GoogleSignInButton()),
      AuthItemWrapper(
          maxHeight: 35,
          minHeight: 25,
          paddingHeight: 10,
          paddingWidth: 15,
          child: Text(t(PhraseKey.or_login_with_email),
              textAlign: TextAlign.left,
              style: Theme.of(context).textTheme.titleSmall)),
      AuthItemWrapper(
          child: TextFormField(
        controller: lastNameController,
        style: Theme.of(context).textTheme.bodyMedium,
        autofillHints: const [AutofillHints.familyName],
        decoration: getInputDecoration(
            t(PhraseKey.last_name), t(PhraseKey.last_name_hint)),
      )),
      AuthItemWrapper(
          child: TextFormField(
        controller: emailController,
        autofillHints: const [AutofillHints.email],
        style: Theme.of(context).textTheme.bodyMedium,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: (value) =>
            value!.isValidEmail() ? null : t(PhraseKey.invalid_email),
        decoration:
            getInputDecoration(t(PhraseKey.email), t(PhraseKey.enter_email)),
      )),
      AuthItemWrapper(
          child: TextFormField(
        autofillHints: const [AutofillHints.newPassword],
        style: Theme.of(context).textTheme.bodyMedium,
        controller: passwordController,
        obscureText: true,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: (value) =>
            value!.isValidPassword() ? null : t(PhraseKey.weak_password),
        decoration: getInputDecoration(
          t(PhraseKey.password),
          t(PhraseKey.enter_password),
        ),
      )),
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
                    : t(PhraseKey.passwords_dont_match),
            decoration: getInputDecoration(t(PhraseKey.repeat_password),
                t(PhraseKey.repeat_password_hint))),
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
                      : Text(t(PhraseKey.signup))))),
      AuthItemWrapper(
          paddingHeight: 2,
          minHeight: 20,
          maxHeight: 30,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            InkWell(
                child: Text(t(PhraseKey.go_login),
                    style: Theme.of(context).textTheme.titleSmall),
                onTap: () {
                  FirebaseAuthHandler.logout();
                  GoRouter.of(context).go("/login");
                })
          ])),
    ]);
  }
}
