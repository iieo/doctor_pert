import 'package:doctor_pert/screens/home_screen/components/search_bar.dart';
import 'package:doctor_pert/screens/shell/nav_bar/navigation_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: const [Center(child: Text('Home Screen')), SearchBar()]);
  }
}
