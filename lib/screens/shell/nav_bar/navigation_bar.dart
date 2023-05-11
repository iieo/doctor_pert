import 'package:doctor_pert/translation.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;
  const NavBar({Key? key})
      : preferredSize = const Size.fromHeight(kToolbarHeight),
        super(key: key);

  void _login() {}
  void _register() {}

  void _account() {}
  void _logout() {}

  @override
  Widget build(BuildContext context) {
    bool isLoggedIn = false;
    return SliverAppBar(
      title: const Text('Doctor Pert'),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: TextButton(
              onPressed: isLoggedIn ? _logout : _login,
              child: Text(t("login"),
                  style: Theme.of(context).textTheme.labelMedium)),
        ),
        Padding(
            padding: const EdgeInsets.all(8),
            child: ElevatedButton(
                onPressed: _register,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.secondary,
                  foregroundColor: Theme.of(context).colorScheme.onSecondary,
                ),
                child: Text(t("signup"),
                    style: Theme.of(context).textTheme.labelMedium))),
      ],
    );
  }
}
