import 'package:beginner/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class GoogleTheme {
  static TextTheme lightTextTheme = TextTheme(
    headline1: GoogleFonts.roboto(
        fontSize: 96, fontWeight: FontWeight.w300, letterSpacing: -1.5),
    headline2: GoogleFonts.roboto(
        fontSize: 60, fontWeight: FontWeight.w300, letterSpacing: -0.5),
    headline3: GoogleFonts.roboto(fontSize: 48, fontWeight: FontWeight.w400),
    headline4: GoogleFonts.roboto(
        fontSize: 34,
        fontWeight: FontWeight.w700,
        letterSpacing: 0.25,
        color: AppColor.defautPrimaryColor),
    headline5: GoogleFonts.roboto(
        fontSize: 24, fontWeight: FontWeight.w400, letterSpacing: 1.2),
    headline6: GoogleFonts.roboto(
        fontSize: 20, fontWeight: FontWeight.w500, letterSpacing: 0.15),
    subtitle1: GoogleFonts.roboto(
        fontSize: 18, fontWeight: FontWeight.w500, letterSpacing: 0.15),
    subtitle2: GoogleFonts.roboto(
        fontSize: 16, fontWeight: FontWeight.w500, letterSpacing: 0.1),
    bodyText1: GoogleFonts.roboto(
        fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.5),
    bodyText2: GoogleFonts.roboto(
        fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25),
    button: GoogleFonts.roboto(
        fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25),
    caption: GoogleFonts.roboto(
        fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
    overline: GoogleFonts.roboto(
        fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
  ).apply(
    bodyColor: AppColor.defaultBackgroundColor,
    displayColor: AppColor.defaultBackgroundColor,
  );

  static TextTheme darkTextTheme = TextTheme(
    headline1: GoogleFonts.roboto(
        fontSize: 96, fontWeight: FontWeight.w300, letterSpacing: -1.5),
    headline2: GoogleFonts.roboto(
        fontSize: 60, fontWeight: FontWeight.w300, letterSpacing: -0.5),
    headline3: GoogleFonts.roboto(fontSize: 48, fontWeight: FontWeight.w400),
    headline4: GoogleFonts.roboto(
      fontSize: 34,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.25,
    ),
    headline5: GoogleFonts.roboto(
        fontSize: 24, fontWeight: FontWeight.w400, letterSpacing: 1.2),
    headline6: GoogleFonts.roboto(
        fontSize: 20, fontWeight: FontWeight.w500, letterSpacing: 0.15),
    subtitle1: GoogleFonts.roboto(
        fontSize: 18, fontWeight: FontWeight.w500, letterSpacing: 0.15),
    subtitle2: GoogleFonts.roboto(
        fontSize: 16, fontWeight: FontWeight.w500, letterSpacing: 0.1),
    bodyText1: GoogleFonts.roboto(
        fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.5),
    bodyText2: GoogleFonts.roboto(
        fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25),
    button: GoogleFonts.roboto(
        fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25),
    caption: GoogleFonts.roboto(
        fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
    overline: GoogleFonts.roboto(
        fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
  ).apply(
    bodyColor: AppColor.defautPrimaryColor,
    displayColor: AppColor.defautPrimaryColor,
  );

  static ThemeData get lightTheme => ThemeData(
        scaffoldBackgroundColor: AppColor.mainLightBackgrounColor,
        textTheme: lightTextTheme,
        colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: Colors.blue,
          onPrimary: Colors.green,
          secondary: AppColor.defaultBackgroundColor,
          onSecondary: Colors.black38,
          background: Colors.blue,
          onBackground: Colors.white70,
          onError: Colors.red.shade400,
          error: Colors.red.shade700,
          surface: Colors.white,
          onSurface: Colors.orange.shade600,
        ),
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
        iconTheme: IconThemeData(
          color: AppColor.defaultBackgroundColor,
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            textStyle: TextStyle(
              fontSize: 16,
              color: AppColor.colorButton,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );

  static ThemeData get darkTheme => ThemeData(
        scaffoldBackgroundColor: AppColor.defaultBackgroundColor,
        textTheme: darkTextTheme,
        colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: Colors.blue,
          onPrimary: Colors.green,
          secondary: AppColor.defaultBackgroundColor,
          onSecondary: Colors.black38,
          background: Colors.blue,
          onBackground: Colors.white70,
          onError: Colors.red.shade400,
          error: Colors.red.shade700,
          surface: Colors.white,
          onSurface: Colors.orange.shade600,
        ),
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
        iconTheme: IconThemeData(
          color: AppColor.defautPrimaryColor,
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            textStyle: TextStyle(
              fontSize: 16,
              color: AppColor.colorButton,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );
}