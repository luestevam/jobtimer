import 'package:flutter/material.dart';

class AppConfigUi {
  AppConfigUi.__();

  //https://maketintsandshades.com/#0066B0  para ajustar a coloração
  static const MaterialColor _primarySwath = MaterialColor(0XFF0066B0, {
    50: Color(0XFF005c9e),
    100: Color(0XFF00528d),
    200: Color(0XFF00477b),
    300: Color(0XFF003d6a),
    400: Color(0XFF003358),
    500: Color(0XFF003d6a),
    600: Color(0XFF002946),
    700: Color(0XFF001423),
    800: Color(0XFF000a12),
    900: Color(0XFF000000),
  });

  static final ThemeData theme = ThemeData(
    //https://maketintsandshades.com/#0066B0  para ajustar a coloração
    primarySwatch: _primarySwath,

    primaryColor: const Color(0XFF0066B0),
    primaryColorLight: const Color(0XFF219FFF),
    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey),
      ),
      labelStyle: TextStyle(color: Colors.black),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
  );
}
