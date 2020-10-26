import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';

class Constants {
  //Colors for theme
  static Color lightPrimary = Color(0xfffcfcff);
  static Color darkPrimary = Colors.black;
  static Color lightAccent = Colors.blueGrey[900];
  static Color darkAccent = Colors.white;
  static Color lightBG = Color(0xfffcfcff);
  static Color darkBG = Colors.black;
  static Color darkBG1 = Colors.grey[900];
  static Color md1 = Vx.red700;
  static Color md2 = Vx.blue700;
  static Color card1 = Colors.lightBlue[900];
  static Color card2 = Colors.blueGrey[900];
  static Color card3 = Color(0xfffcfcff);
  static Color card4 = Colors.red[600];

  static ThemeData lightTheme = ThemeData(
    backgroundColor: lightBG,
    primaryColor: lightPrimary,
    accentColor: lightAccent,
    cursorColor: lightAccent,
    errorColor: darkBG,
    indicatorColor: darkBG,
    hintColor: md1,
    cardColor: card3,
    shadowColor: card4,
    scaffoldBackgroundColor: lightBG,
    appBarTheme: AppBarTheme(
      elevation: 0,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    backgroundColor: darkBG,
    primaryColor: darkPrimary,
    accentColor: darkAccent,
    errorColor: lightBG,
    hintColor: md2,
    cardColor: card2,
    shadowColor: card1,
    indicatorColor: lightBG,
    scaffoldBackgroundColor: darkBG,
    cursorColor: darkAccent,
    appBarTheme: AppBarTheme(
      elevation: 0,
    ),
  );
}
