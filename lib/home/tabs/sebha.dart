import 'package:flutter/material.dart';

class  SebhaScreen extends StatefulWidget {
  @override
  State<SebhaScreen> createState() => _SebhaScreenState();
}

class _SebhaScreenState extends State<SebhaScreen> {
double angle=0;

  @override
  Widget build(BuildContext context) {
    var mediaQuery=MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: mediaQuery.height*  0.70,
      alignment: Alignment.center,
      child: Stack(

              children: [
                Positioned(child:
                Image.asset('assests/images/head of seb7a.png',
                  height: mediaQuery.height*  0.1,),
                top: 15,

                left: mediaQuery.width*0.55,),

                GestureDetector(
                  onTap: (){
                    setState(() {
                      angle--;
                    });
  },
                  child: Positioned(
                    left: mediaQuery.width*0.28,
                    top:60,
                  child:
                      Transform.rotate(angle: angle,
                  child:
                  Image.asset('assests/images/body of seb7a.png'),
                 ),
                ))
              ],
            ),
          ),


        ],
      ),
    );
  }
}