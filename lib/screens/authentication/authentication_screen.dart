import 'package:flutter/material.dart';

import 'authentication_components.dart';

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
