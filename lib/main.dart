import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/home/sura_details.dart';
import 'package:islami/my_theme_data.dart';

import 'home/homescrren.dart';

void main(){
  runApp(MaterialApp(
    initialRoute:HomeScreen.routeName,
    routes: {
      HomeScreen.routeName:(c)=>HomeScreen(),
      SuraDetails.routeName:(c)=>SuraDetails(),
    },
    debugShowCheckedModeBanner: false,
    /* first we make theme data but we notice that we will use it more than
     one so we will create class theme data
    ThemeData(
      // to make all screens in app to be transparent
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(),)
    */
  theme:MyThemeData.lightTheme,
    darkTheme:MyThemeData.darkTheme,
    themeMode: ThemeMode.light,
  ));
}



