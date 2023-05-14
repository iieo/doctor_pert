import 'package:doctor_pert/theme/theme_data.dart';
import 'package:flutter/material.dart';

class ErrorSnackBar extends SnackBar {
  ErrorSnackBar(
      {Key? key, required String message, required BuildContext context})
      : super(
            key: key,
            duration: const Duration(seconds: 8),
            content: Center(child: Text(message)),
            backgroundColor: GetCurrentTheme(context).colorScheme.error);
}

class InfoSnackBar extends SnackBar {
  InfoSnackBar(
      {Key? key, required String message, required BuildContext context})
      : super(
            key: key,
            duration: const Duration(seconds: 8),
            content: Center(child: Text(message)));
}

class ErrorSnackBarWithAction extends SnackBar {
  ErrorSnackBarWithAction(
      {Key? key,
      required String message,
      required String action,
      required Function handler,
      required BuildContext context})
      : super(
            key: key,
            duration: const Duration(seconds: 1000),
            content: Center(child: Text(message)),
            action: SnackBarAction(
                label: action,
                onPressed: () {
                  ScaffoldMessenger.of(context).hideCurrentSnackBar();
                  handler();
                }),
            backgroundColor: GetCurrentTheme(context).colorScheme.error);
}

class AuthItemWrapper extends StatelessWidget {
  final Widget child;
  final double maxWidth;
  final double maxHeight;
  final double minWidth;
  final double minHeight;
  final double paddingHeight;
  final double paddingWidth;

  const AuthItemWrapper(
      {super.key,
      required this.child,
      this.maxWidth = 350,
      this.minWidth = 250,
      this.maxHeight = 50,
      this.minHeight = 30,
      this.paddingHeight = 10,
      this.paddingWidth = 10});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(
            vertical: paddingHeight, horizontal: paddingWidth),
        child: ConstrainedBox(
            constraints: BoxConstraints(
                maxWidth: maxWidth,
                maxHeight: maxHeight,
                minWidth: minWidth,
                minHeight: minHeight),
            child: SizedBox.expand(child: child)));
  }
}
