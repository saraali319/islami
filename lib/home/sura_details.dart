import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/my_theme_data.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = "Suradetais";

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> versus = [];

  @override
  Widget build(BuildContext context) {
    //to receive data from args

    var args = ModalRoute
        .of(context)
        ?.settings
        .arguments as SuraDetailsArgs;
    if (versus.isEmpty)
      loadFile(args.index);
    return Stack(
      children: [
        Image.asset('assests/images/background.png',
            width: double.infinity, fit: BoxFit.fitWidth),
        Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              args.suraName,
              style: Theme
                  .of(context)
                  .textTheme
                  .headline1,
            ),
          ),
          body: versus.isEmpty
              ? Center(child: CircularProgressIndicator())
              : ListView.builder(itemBuilder: (context, index) {
            /* لو عملت كدا مش هينفع ابعتله index عشان مش عايزة اعمله action
                  return SuraNameItem(versus[index],index);*/
            return Text(versus[index], style: Theme
                .of(context)
                .textTheme
                .subtitle1
                ?.copyWith(color: MyThemeData.colorBlack,
                // to make space in words
                //letterSpacing:15
              ), textAlign: TextAlign.center,
            );
          },
            itemCount: versus.length,),
        ),
      ],
    );
  }

  // to read from file
  void loadFile(int index) async {
    //هو مستني ال variable فقط nullable ولكن الباقي البرنامج شغال parallel عادي
    //or recieve as future <string>
    // الكونتنت جاي في الصورة كلها
    String content =
    await rootBundle.loadString('assests/files/${index + 1}.txt');
    //الفايل جايلي على هيئة ines فعشان افصلهم
    List<String> lines = content.split('\n');
    //when loaded file ended
    // لما يخلص ويجيب ال lines
    versus = lines;
    //لو عملت بالشكل دا هيقرا الفايل اكتر من مرة وهيفضل في finite loop مش هيقف
    setState(() {

    });
  }
}

class SuraDetailsArgs {
  String suraName;
  int index;

  SuraDetailsArgs(this.suraName, this.index);
}
