import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'homescrren.dart';

void main(){
  runApp(MaterialApp(
    initialRoute:HomeScreen.routeName,
    routes: {
      HomeScreen.routeName:(c)=>HomeScreen(),
    },
    debugShowCheckedModeBanner: false,
  ));
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
