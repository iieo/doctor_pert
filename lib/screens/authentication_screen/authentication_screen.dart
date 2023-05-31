import 'package:flutter/material.dart';

import 'authentication_components.dart';

extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }
}

extension PasswordValidator on String {
  bool isValidPassword() {
    return length >= 6 &&
        contains(RegExp(r'[0-9]')) &&
        contains(RegExp(r'[A-Z]')) &&
        contains(RegExp(r'[a-z]')) &&
        contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));
  }
}

class AuthenticationScreen extends StatefulWidget {
  final Widget child;

  const AuthenticationScreen({super.key, required this.child});

  @override
  State<AuthenticationScreen> createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Flexible(
            flex: 1,
            child: SizedBox.expand(
              child: Container(color: Theme.of(context).primaryColor),
            )),
        Flexible(flex: 2, child: Center(child: widget.child))
      ],
    ));
  }
}

void ShowError(String message, BuildContext context) {
  ScaffoldMessenger.of(context).removeCurrentSnackBar();
  ScaffoldMessenger.of(context)
      .showSnackBar(ErrorSnackBar(message: message, context: context));
}

void ShowInfo(String message, BuildContext context) {
  ScaffoldMessenger.of(context).removeCurrentSnackBar();
  ScaffoldMessenger.of(context)
      .showSnackBar(InfoSnackBar(message: message, context: context));
}

void ShowErrorWithAction(
    String message, String action, Function handler, BuildContext context) {
  ScaffoldMessenger.of(context).removeCurrentSnackBar();
  ScaffoldMessenger.of(context).showSnackBar(ErrorSnackBarWithAction(
      message: "Test", action: action, handler: handler, context: context));
}
