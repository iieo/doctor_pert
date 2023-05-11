import 'package:doctor_pert/screens/shells/nav_bar/navigation_bar.dart';
import 'package:flutter/material.dart';

class ShellNavBar extends StatelessWidget {
  final Widget child;
  final bool isPinned;
  const ShellNavBar({super.key, required this.child, this.isPinned = true});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) {
        return [
          NavBar(
            isPinned: isPinned,
          ),
        ];
      },
      body: child,
    ));
  }
}
