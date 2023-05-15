import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

double defaultRadius = 8.0;

const Color primaryColor = Color(0xFF0077B6);

const Color secondaryColor = Color(0xFFFEE440);

ColorScheme colorScheme = ColorScheme.fromSeed(
  seedColor: primaryColor,
  brightness: Brightness.light,
  primary: primaryColor,
  secondary: secondaryColor,
);

final ThemeData lightTheme = ThemeData(
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
  scaffoldBackgroundColor: Colors.white,
  dialogBackgroundColor: colorScheme.secondaryContainer,
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: Colors.grey[200],
    border: const OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(Radius.circular(100))),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(100),
      borderSide: BorderSide.none,
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(100),
      borderSide: BorderSide.none,
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(100),
      borderSide: BorderSide(color: colorScheme.error),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(100),
      borderSide: BorderSide(color: colorScheme.error),
    ),
    errorStyle: TextStyle(color: colorScheme.errorContainer, fontSize: 0.001),
  ),
  textTheme: TextTheme(
      headlineLarge:
          GoogleFonts.lato(fontSize: 50.0, fontWeight: FontWeight.bold),
      headlineMedium:
          GoogleFonts.lato(fontSize: 35.0, fontWeight: FontWeight.normal),
      headlineSmall:
          GoogleFonts.lato(fontSize: 18.0, fontWeight: FontWeight.w300),
      displayLarge:
          GoogleFonts.lato(fontSize: 55.0, fontWeight: FontWeight.bold),
      displayMedium:
          GoogleFonts.lato(fontSize: 30.0, fontWeight: FontWeight.normal),
      displaySmall:
          GoogleFonts.lato(fontSize: 16.0, fontWeight: FontWeight.w300),
      bodyLarge: GoogleFonts.lato(fontSize: 28.0, fontWeight: FontWeight.bold),
      bodyMedium:
          GoogleFonts.lato(fontSize: 19.0, fontWeight: FontWeight.normal),
      bodySmall: GoogleFonts.lato(fontSize: 14.0, fontWeight: FontWeight.w300),
      labelLarge: GoogleFonts.lato(fontSize: 25.0, fontWeight: FontWeight.bold),
      labelMedium:
          GoogleFonts.lato(fontSize: 18.0, fontWeight: FontWeight.normal),
      labelSmall: GoogleFonts.lato(fontSize: 12.0, fontWeight: FontWeight.w300),
      titleLarge: GoogleFonts.lato(fontSize: 55.0, fontWeight: FontWeight.bold),
      titleMedium:
          GoogleFonts.lato(fontSize: 30.0, fontWeight: FontWeight.normal),
      titleSmall:
          GoogleFonts.lato(fontSize: 18.0, fontWeight: FontWeight.w300)),
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
  buttonTheme: ButtonThemeData(
    buttonColor: secondaryColor,
    textTheme: ButtonTextTheme.primary,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(defaultRadius),
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

ThemeData GetCurrentTheme(BuildContext context) {
  return Theme.of(context);
}
