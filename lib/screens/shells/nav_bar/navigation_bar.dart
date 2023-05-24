import 'package:doctor_pert/handler/authentication_handler.dart';
import 'package:doctor_pert/translation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavBar extends StatelessWidget implements PreferredSizeWidget {
  final bool isPinned;
  @override
  final Size preferredSize;
  const NavBar({Key? key, this.isPinned = false})
      : preferredSize = const Size.fromHeight(kToolbarHeight),
        super(key: key);

  void _login(BuildContext context) {
    GoRouter.of(context).go("/login");
  }

  void _register(BuildContext context) {
    GoRouter.of(context).go("/signup");
  }

  void _account() {}
  void _logout() {}

  @override
  Widget build(BuildContext context) {
    bool isLoggedIn = FirebaseAuthHandler.isUserLoggedIn();
    return SliverAppBar(
      floating: true,
      pinned: false,
      snap: false,
      title: InkWell(
          onTap: () => GoRouter.of(context).go("/"),
          child: Text(t(PhraseKey.app_name),
              style: Theme.of(context).textTheme.headlineMedium)),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: TextButton(
              onPressed: isLoggedIn ? _logout : () => _login(context),
              child: Text(isLoggedIn ? t(PhraseKey.logout) : t(PhraseKey.login),
                  style: Theme.of(context).textTheme.labelMedium)),
        ),
        Padding(
            padding: const EdgeInsets.all(8),
            child: ElevatedButton(
                onPressed: isLoggedIn ? _account : () => _register(context),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.secondary,
                  foregroundColor: Theme.of(context).colorScheme.onSecondary,
                ),
                child: Text(
                    isLoggedIn ? t(PhraseKey.account) : t(PhraseKey.signup),
                    style: Theme.of(context).textTheme.labelMedium))),
      ],
    );
  }
}
