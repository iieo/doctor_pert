import 'package:doctor_pert/screens/nav_bar/navigation_bar.dart';
import 'package:flutter/material.dart';

class ShellNavBar extends StatelessWidget {
  final Widget child;

  const ShellNavBar({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) {
        return [
          const NavBar(),
        ];
      },
      body: child,
    ));
  }
}
