import 'package:flutter/material.dart';

double defaultRadius = 8.0;

const Color primaryColor = Color(0xFF0077B6);

const Color secondaryColor = Color(0xFFFEE440);

ColorScheme colorScheme = ColorScheme.fromSeed(
  seedColor: primaryColor,
  brightness: Brightness.light,
  primary: primaryColor,
  secondary: secondaryColor,
);

final ThemeData themeData = ThemeData(
  pageTransitionsTheme: PageTransitionsTheme(
    builders: <TargetPlatform, PageTransitionsBuilder>{
      TargetPlatform.android: NoPageTransitionBuilder(),
      TargetPlatform.iOS: NoPageTransitionBuilder(),
      TargetPlatform.fuchsia: NoPageTransitionBuilder(),
      TargetPlatform.linux: NoPageTransitionBuilder(),
      TargetPlatform.macOS: NoPageTransitionBuilder(),
      TargetPlatform.windows: NoPageTransitionBuilder(),
    },
  ),
  visualDensity: VisualDensity.adaptivePlatformDensity,
  primarySwatch: const MaterialColor(0xFFFEFAE0, {
    50: Color(0xfff2f2f2),
    100: Color(0xffe6e6e6),
    200: Color(0xffcccccc),
    300: Color(0xffb3b3b3),
    400: Color(0xff999999),
    500: Color(0xff808080),
    600: Color(0xff666666),
    700: Color(0xff4d4d4d),
    800: Color(0xff333333),
    900: Color(0xff1a1a1a)
  }),
  primaryColor: primaryColor,
  colorScheme: colorScheme,
  appBarTheme: const AppBarTheme(backgroundColor: primaryColor),
  scaffoldBackgroundColor: colorScheme.primaryContainer,
  dialogBackgroundColor: colorScheme.secondaryContainer,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(secondaryColor),
      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
      ),
    ),
  ),
);

class NoPageTransitionBuilder extends PageTransitionsBuilder {
  @override
  Widget buildTransitions<T>(
    PageRoute<T> route,
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return child;
  }
}
