import 'package:doctor_pert/screens/authentication/authentication_components.dart';
import 'package:doctor_pert/screens/authentication/authentication_screen.dart';
import 'package:doctor_pert/theme/theme_data.dart';
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

  void onEmailVerified(BuildContext context) {
    GoRouter.of(context).go('/');
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
      if (!context.mounted) {
        return;
      }
      GoRouter.of(context).go("/search");
    } on FirebaseAuthException catch (e) {
      ShowError("Login Failed: ${FirebaseAuthHandler.getFirebaseErrorText(e)}",
          context);
    } on EmailNotVerifiedException catch (e) {
      String? mail = FirebaseAuth.instance.currentUser?.email;
      ShowErrorWithAction("Email not verified. Check your mail: $mail.",
          "Resend Email", FirebaseAuthHandler.resendVerificationEmail, context);
    } catch (e) {
      ShowError("Unknown Error. Please try again.", context);
    }
    UpdateLoading(false);
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      AuthItemWrapper(
          child: Text("Login",
              textAlign: TextAlign.left,
              style: Theme.of(context).textTheme.headlineMedium)),
      AuthItemWrapper(child: GoogleSignInButton()),
      AuthItemWrapper(
          maxHeight: 35,
          minHeight: 25,
          paddingHeight: 10,
          paddingWidth: 15,
          child: Text("or login with email:",
              textAlign: TextAlign.left,
              style: Theme.of(context).textTheme.titleSmall)),
      AuthItemWrapper(
          child: TextFormField(
        autofillHints: const [AutofillHints.email],
        key: passwordValidator,
        controller: emailController,
        style: Theme.of(context).textTheme.bodyMedium,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: (value) => value!.isValidEmail() ? null : "Invalid Email",
        decoration: const InputDecoration(
            labelText: 'Email', hintText: 'Enter valid mail.'),
      )),
      AuthItemWrapper(
        child: TextField(
          autofillHints: const [AutofillHints.password],
          style: Theme.of(context).textTheme.bodyMedium,
          controller: passwordController,
          obscureText: true,
          decoration: InputDecoration(
              border: GetCurrentTheme(context).inputDecorationTheme.border,
              labelText: 'Password',
              hintText: 'Enter your password'),
        ),
      ),
      AuthItemWrapper(
          child: SizedBox.expand(
              child: ElevatedButton(
                  onPressed: _loginUser,
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          GetCurrentTheme(context).primaryColor)),
                  child: loading
                      ? const CircularProgressIndicator()
                      : const Text('Login')))),
      AuthItemWrapper(
          paddingHeight: 2,
          minHeight: 20,
          maxHeight: 30,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            InkWell(
                child: Text("Forgot Password?",
                    style: Theme.of(context).textTheme.titleSmall),
                onTap: () {
                  if (emailController.text.isEmpty) {
                    ShowError("No Email was provided.", context);
                    return;
                  }

                  if (!emailController.text.isValidEmail()) {
                    ShowError(
                        "Email: '${emailController.text}' is not a valid email.",
                        context);
                    return;
                  }

                  UpdateLoading(true);
                  FirebaseAuthHandler.forgotPassword(emailController.text);
                  UpdateLoading(false);
                  ShowInfo(
                      'Email was sent to ${emailController.text}', context);
                }),
            InkWell(
                child: Text("Create User Account.",
                    style: Theme.of(context).textTheme.titleSmall),
                onTap: () {
                  FirebaseAuthHandler.logout();
                  GoRouter.of(context).go("/signup");
                })
          ])),
    ]);
  }
}
