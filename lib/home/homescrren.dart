import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/home/tabs/alhadeth.dart';
import 'package:islami/home/tabs/quran.dart';
import 'package:islami/home/tabs/radio.dart';
import 'package:islami/home/tabs/sebha.dart';
import 'package:islami/my_theme_data.dart';

class HomeScreen extends StatefulWidget {
 static const String routeName='homescreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 //change when cleck
 int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[
        Image.asset('assests/images/background.png',width: double.infinity,fit:BoxFit.fitWidth),
        Scaffold(
          //if i want to change this screen background only
          //backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text("Islami",style: Theme.of(context).textTheme.headline1,),
          centerTitle: true,
        ),
          bottomNavigationBar: BottomNavigationBar(
            // عشان لما اضغط عليها الصورة تطلع لفوق والكلمة تكتب
            // fixed all appear
            type: BottomNavigationBarType.shifting,
            onTap:(index){
              currentIndex=index;
              setState(() {

              });
            },
            currentIndex: currentIndex,
            // but this way doesn't work
            //backgroundColor: MyThemeData.gold,
            items: [
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assests/images/quran.png')),label: "quran",backgroundColor: MyThemeData.gold),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assests/images/radio.png')),label: "radio",backgroundColor: MyThemeData.gold),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assests/images/sebha.png')),label:"sebha",backgroundColor: MyThemeData.gold),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assests/images/ahadeth.png')),label: "ahadeth",backgroundColor: MyThemeData.gold),

            ],
          ),
          body:tabs[currentIndex] ,
      ),]
    );
  }
  List<Widget>tabs=[
    QuranScreen(),
    RadioScreen(),
    SebhaScreen(),
    AhadethScreen(),
  ];
}
