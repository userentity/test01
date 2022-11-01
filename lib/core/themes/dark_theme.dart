import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../const/ui.dart';

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: UI.primaryColor,
  scaffoldBackgroundColor: UI.darkBcgColor,
  fontFamily: GoogleFonts.poppins().fontFamily,
  appBarTheme: const AppBarTheme(
    backgroundColor: UI.darkBcgLightColor,
  ),
  textTheme: GoogleFonts.poppinsTextTheme(
    const TextTheme(
      bodyText1: TextStyle(
        color: UI.darkTextColor,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
      bodyText2: TextStyle(
        color: UI.darkTextColor,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
      headline1: TextStyle(
        color: UI.darkTitleColor,
        fontWeight: FontWeight.w600,
        fontSize: 32,
      ),
      headline2: TextStyle(
        color: UI.darkTitleColor,
        fontWeight: FontWeight.w600,
        fontSize: 23,
      ),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    fillColor: UI.darkBcgLightColor,
    filled: true,
    contentPadding:
        const EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
    hintStyle: const TextStyle(
      fontSize: 16,
      color: UI.darkTextColor,
    ),
    helperStyle: const TextStyle(
      fontSize: 11,
      fontWeight: FontWeight.w400,
      color: UI.darkTextColor,
    ),
    suffixIconColor: UI.primaryColor,
    suffixStyle: const TextStyle(
      color: UI.primaryColor,
    ),
    labelStyle: const TextStyle(
      color: UI.darkTextColor,
      fontSize: 16,
      fontWeight: FontWeight.w300,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: const BorderSide(
        width: 1,
        style: BorderStyle.solid,
        color: UI.darkBcgLightColor,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: const BorderSide(
        width: 1,
        style: BorderStyle.solid,
        color: UI.primaryColor,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: const BorderSide(
        width: 1,
        style: BorderStyle.solid,
        color: UI.darkBcgLightColor,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: const BorderSide(
        width: 1,
        style: BorderStyle.solid,
        color: UI.errorColor,
      ),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      textStyle: const TextStyle(
        color: UI.primaryColor,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: UI.primaryColor,
      minimumSize: const Size(double.infinity, 56),
      maximumSize: const Size(double.infinity, 56),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      textStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: UI.darkTitleColor,
      ),
    ),
  ),
);
