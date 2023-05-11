import 'package:firebase_auth/firebase_auth.dart';
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
    bool isLoggedIn = FirebaseAuth.instance.currentUser != null;
    return SliverAppBar(
      title: const Text('Doctor Pert'),
      actions: [
        TextButton(
            onPressed: _login,
            child:
                Text('Login', style: Theme.of(context).textTheme.labelMedium)),
        ElevatedButton(
            onPressed: _register,
            child:
                Text('Login', style: Theme.of(context).textTheme.labelMedium))
      ],
    );
  }
}
