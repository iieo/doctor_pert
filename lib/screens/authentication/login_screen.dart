import 'package:doctor_pert/screens/authentication/authentication_components.dart';
import 'package:doctor_pert/screens/authentication/authentication_screen.dart';
import 'package:doctor_pert/theme/theme_data.dart';
import 'package:doctor_pert/translation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:go_router/go_router.dart';

import '../../handler/authentication_handler.dart';
import 'google_sign_in_button.dart';

class LoginContainer extends StatefulWidget {
  const LoginContainer({super.key});

  @override
  State<LoginContainer> createState() => _LoginContainer();
}


/**
 * ich hab die texte durch t("textinhalt") ersetzt, damit man auch die sprache ändern kann
 * 
 * zudem würde ich empfehlen die AuthItemWrapper zu vermeiden. ich hatte des ja auch im letzten projekt mit meinem button
 * letztendlich ist es aber sinnvoller es nur dann hin zu schreiben, wenn man es wirklich braucht
 * Des Problem ist halt, dass die Größe in Zahlen angegeben ist und des sollte man, wenn möglich immer vermeiden
 * damit es halt responsive ist.
 * z.B. beim textfield error sieht man des ganz gut
 * 
 * was zu überlegen ist: es gibt ein Form Widget. Da werden normal die TextFormFields rein getan. Was das bringt keine Ahnung
 * aber bestimmt interessant anzuschauen
 * 
 * Design sieht sonst aber mega aus, ich hoff ich hab nix zerstört :O
 * hab nämlich versucht meins zu reparieren und hab deswegen die border eigenschaft von der
 * themedata entfernt.
 * 
 */

class _LoginContainer extends State<LoginContainer> {
  final double loginWidth = 300;

  final passwordController = TextEditingController();
  final emailController = TextEditingController();
  final passwordValidator = GlobalKey<FormState>();

  bool loading = false;

  @override
  void setState(fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  @override
  void initState() {
    super.initState();

    if (FirebaseAuth.instance.currentUser != null) {
      emailController.text = FirebaseAuth.instance.currentUser!.email!;
    }
  }

  void UpdateLoading(bool isLoading) {
    setState(() {
      loading = isLoading;
    });
  }

  void _loginUser() async {
    UpdateLoading(true);
    try {
      await FirebaseAuthHandler.tryLogin(
          emailController.text, passwordController.text);
    } on FirebaseAuthException catch (e) {
      ShowError("Login Failed: ${FirebaseAuthHandler.getFirebaseErrorText(e)}",
          context);
    } on EmailNotVerifiedException catch (e) {
      String? mail = FirebaseAuth.instance.currentUser?.email;
      ShowErrorWithAction(
          "${t('email_not_verified')} $mail.",
          t("resend_email"),
          FirebaseAuthHandler.resendVerificationEmail,
          context);
    } catch (e) {
      ShowError(t("unknown_error"), context);
    }
    UpdateLoading(false);
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      AuthItemWrapper(
          child: Text(t("login"),
              textAlign: TextAlign.left,
              style: Theme.of(context).textTheme.headlineMedium)),
      AuthItemWrapper(child: GoogleSignInButton()),
      AuthItemWrapper(
          paddingHeight: 10,
          paddingWidth: 15,
          child: Text(t("or_login_with_email"),
              textAlign: TextAlign.left,
              style: Theme.of(context).textTheme.titleSmall)),
      AuthItemWrapper(
          child: TextFormField(
        autofillHints: const [AutofillHints.email],
        key: passwordValidator,
        controller: emailController,
        style: Theme.of(context).textTheme.bodyMedium,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: (value) => value!.isValidEmail() ? null : t("invalidEmail"),
        decoration: InputDecoration(
            labelText: t("email"),
            hintText: t("enterEmail"),
            fillColor: Colors.grey[200],
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(defaultRadius)),
            )),
      )),
      AuthItemWrapper(
        child: TextField(
            autofillHints: const [AutofillHints.password],
            style: Theme.of(context).textTheme.bodyMedium,
            controller: passwordController,
            obscureText: true,
            decoration: InputDecoration(
                fillColor: Colors.grey[200],
                labelText: t("password"),
                hintText: t("enterPassword"),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius:
                      BorderRadius.all(Radius.circular(defaultRadius)),
                ))),
      ),
      AuthItemWrapper(
          child: SizedBox.expand(
              child: ElevatedButton(
                  onPressed: _loginUser,
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Theme.of(context).primaryColor)),
                  child: loading
                      ? const CircularProgressIndicator()
                      : Text(t("login"))))),
      AuthItemWrapper(
          paddingHeight: 2,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            InkWell(
                child: Text(t("forgot_password"),
                    style: Theme.of(context).textTheme.titleSmall),
                onTap: () {
                  if (emailController.text.isEmpty) {
                    ShowError(t("no_email_provided"), context);
                    return;
                  }

                  if (!emailController.text.isValidEmail()) {
                    ShowError("${t('invalid_email')} '${emailController.text}'",
                        context);
                    return;
                  }

                  UpdateLoading(true);
                  FirebaseAuthHandler.forgotPassword(emailController.text);
                  UpdateLoading(false);
                  ShowInfo(
                      '${t('email_sent_to')} ${emailController.text}', context);
                }),
            InkWell(
                child: Text(t("create_account"),
                    style: Theme.of(context).textTheme.titleSmall),
                onTap: () {
                  FirebaseAuthHandler.logout();
                  GoRouter.of(context).go("/signup");
                })
          ])),
    ]);
  }
}
