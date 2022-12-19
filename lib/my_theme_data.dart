import 'package:flutter/material.dart';

class MyThemeData{
  static const Color colorBlack= Color.fromRGBO(36, 36, 36, 1.0);
  static const Color gold= Color.fromRGBO(183, 147, 95, 1.0);

  static ThemeData lightTheme=ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
elevation: 0,
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(
        color: colorBlack
      )
    ),
      textTheme: TextTheme(headline1: TextStyle(
          fontSize: 25,
        color: colorBlack,
        fontWeight: FontWeight.bold,

      ),
      subtitle1:  TextStyle(fontSize: 25,
        color: gold,
     )),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: gold,
      selectedItemColor:colorBlack,
      unselectedItemColor: Colors.white,
    )
  );
  static ThemeData darkTheme=ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
backgroundColor: Colors.transparent,
        elevation:0,
      ),

  );
}