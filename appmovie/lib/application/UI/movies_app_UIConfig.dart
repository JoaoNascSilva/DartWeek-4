import 'package:flutter/material.dart';

class MoviesAppUiConfig {
  MoviesAppUiConfig._();

  static String get title => 'MoviesApp';
  static ThemeData get themeData => ThemeData(
        fontFamily: 'Metropolis',
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(
            color: Color(0xff222222),
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Color(0xff121212),
      );
}
