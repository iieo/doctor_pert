import 'package:doctor_pert/screens/authentication/authentication_components.dart';
import 'package:doctor_pert/screens/authentication/authentication_screen.dart';
import 'package:doctor_pert/theme/theme_data.dart';
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
      ShowError("Login Failed: ${FirebaseAuthHandler.getFirebaseErrorText(e)}",
          context);
    } catch (e) {
      ShowError("Unknown Error. Please try again.", context);
    }
    UpdateLoading(false);
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      AuthItemWrapper(
          child: Text("Sign Up",
              textAlign: TextAlign.left,
              style: Theme.of(context).textTheme.headlineMedium)),
      AuthItemWrapper(child: GoogleSignInButton()),
      AuthItemWrapper(
          maxHeight: 35,
          minHeight: 25,
          paddingHeight: 10,
          paddingWidth: 15,
          child: Text("or sign up with email:",
              textAlign: TextAlign.left,
              style: Theme.of(context).textTheme.titleSmall)),
      AuthItemWrapper(
          child: TextFormField(
        controller: lastNameController,
        style: Theme.of(context).textTheme.bodyMedium,
        autofillHints: const [AutofillHints.familyName],
        decoration: const InputDecoration(
            labelText: 'Last name', hintText: 'Enter your family name.'),
      )),
      AuthItemWrapper(
          child: TextFormField(
        controller: emailController,
        autofillHints: const [AutofillHints.email],
        style: Theme.of(context).textTheme.bodyMedium,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: (value) => value!.isValidEmail() ? null : "Invalid Email",
        decoration: const InputDecoration(
            labelText: 'Email', hintText: 'Enter valid mail.'),
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
          decoration: InputDecoration(
              border: GetCurrentTheme(context).inputDecorationTheme.border,
              labelText: 'Password',
              hintText: 'Enter your password'),
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
          decoration: InputDecoration(
              border: GetCurrentTheme(context).inputDecorationTheme.border,
              labelText: 'Repeat your Password',
              hintText: 'Enter your password'),
        ),
      ),
      AuthItemWrapper(
          child: SizedBox.expand(
              child: ElevatedButton(
                  onPressed: _signupUser,
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          GetCurrentTheme(context).primaryColor)),
                  child: loading
                      ? const CircularProgressIndicator()
                      : const Text('Sign Up')))),
      AuthItemWrapper(
          paddingHeight: 2,
          minHeight: 20,
          maxHeight: 30,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            InkWell(
                child: Text("Have an account? Login.",
                    style: Theme.of(context).textTheme.titleSmall),
                onTap: () {
                  FirebaseAuthHandler.logout();
                  GoRouter.of(context).go("/login");
                })
          ])),
    ]);
  }
}
