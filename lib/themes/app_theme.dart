import 'package:flutter/material.dart';

class AppTheme {
  static Color primary = Colors.purple;

  static final ThemeData ligthTheme = ThemeData(
    primaryColor: primary,

    //AppBar
    appBarTheme: AppBarTheme(
      color: primary,
      elevation: 0,
    ),

    //TextButton
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: primary),
    ),

    //Floating Action Button
    floatingActionButtonTheme:
        FloatingActionButtonThemeData(backgroundColor: primary),

    //Elevated Button
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
      backgroundColor: primary,
      shape: const StadiumBorder(),
      elevation: 0,
    )),

    //Input Forms
    inputDecorationTheme: const InputDecorationTheme(
        floatingLabelStyle: TextStyle(
          color: Colors.blue,
        ),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.deepPurple),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                topRight: Radius.circular(15))),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
          color: Colors.red,
        )),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(15),
                topLeft: Radius.circular(15)))),
  );
}
