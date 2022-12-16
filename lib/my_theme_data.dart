import 'package:flutter/material.dart';

class MyThemeData{
  static const Color colorBlack= Color.fromRGBO(36, 36, 36, 1.0);

  static ThemeData lightTheme=ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(

    ),
      textTheme: TextTheme(headline1: TextStyle(
          fontSize: 25,
        color: colorBlack,
      ))
  );
  static ThemeData darkTheme=ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
backgroundColor: Colors.transparent,
        elevation:0,
      ),

  );
}