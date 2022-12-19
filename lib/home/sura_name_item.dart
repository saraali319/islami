import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/home/sura_details.dart';

class SuraNameItem extends StatelessWidget {
  String suraName;
int index;
  SuraNameItem(this.suraName,this.index);


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, SuraDetails.routeName,arguments:SuraDetailsArgs(suraName,index));
      },
      child: Center(
          child: Text(
        suraName,
        style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 25),
      )),
    );
  }

}
