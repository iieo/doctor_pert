import 'package:doctor_pert/screens/public_components/navigation_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) {
        return [
          const NavBar(),
        ];
      },
      body: Column(children: const [Center(child: Text('Home Screen'))]),
    ));
  }
}
