import 'package:doctor_pert/screens/home_screen/home_screen.dart';
import 'package:doctor_pert/theme/color_theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();

  runApp(MaterialApp(
    theme: themeData,
    builder: (context, child) => const HomeScreen(),
  ));
}
