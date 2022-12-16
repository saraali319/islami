import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
 static const String routeName='homescreen';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[
        Image.asset('assests/images/background.png',width: double.infinity,fit:BoxFit.fitWidth),
        Scaffold(
          //if i want to change this screen background only
          //backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text("Islami"),
          centerTitle: true,

        ),
      ),]
    );
  }
}
