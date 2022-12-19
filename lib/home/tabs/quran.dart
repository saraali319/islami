import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/home/sura_name_item.dart';
import 'package:islami/my_theme_data.dart';

class QuranScreen extends StatelessWidget {
  List<String>suraName=["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
    ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
    ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
    ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
    ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
    ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
    ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
    ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
    ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
    "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Image.asset('assests/images/quran_name_bg.png'),
        width: double.infinity,),
        Divider(
          color: MyThemeData.gold,
          thickness: 2,
        ),
        Text("اسم السورة",style: Theme.of(context).textTheme.subtitle1,),
        Divider(
          color: MyThemeData.gold,
          thickness: 2,
        ),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) {
              return Divider(
                thickness: 1,
                // like margin
                indent: 25,
                endIndent: 25,
                color: MyThemeData.gold,
              );
            },
            itemCount: suraName.length,
            itemBuilder: (BuildContext context, int index) {
              return SuraNameItem(suraName[index],index);//بجيبه من ليست فيو
            },
          ),
        )
      ],
    );
  }
}
