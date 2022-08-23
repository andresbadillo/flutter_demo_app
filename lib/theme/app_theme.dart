import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.indigo;

  static final ThemeData lighTheme = ThemeData.light().copyWith(
    // COlor primario
    primaryColor: primary,

    //AppBar Theme
    appBarTheme:
        const AppBarTheme(color: primary, elevation: 0, centerTitle: true),
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      // COlor primario
      primaryColor: primary,

      //AppBar Theme
      appBarTheme: const AppBarTheme(color: primary, elevation: 0),

      //Scaffold
      scaffoldBackgroundColor: Colors.black12);
}
