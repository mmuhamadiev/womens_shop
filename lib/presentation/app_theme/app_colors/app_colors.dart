import 'package:flutter/material.dart';

class AppColors {

  AppColors._();

  /// Main Colors palette

  static Map<int, Color> color =
  {
    50:const Color.fromRGBO(136,14,79, .1),
    100:const Color.fromRGBO(136,14,79, .2),
    200:const Color.fromRGBO(136,14,79, .3),
    300:const Color.fromRGBO(136,14,79, .4),
    400:const Color.fromRGBO(136,14,79, .5),
    500:const Color.fromRGBO(136,14,79, .6),
    600:const Color.fromRGBO(136,14,79, .7),
    700:const Color.fromRGBO(136,14,79, .8),
    800:const Color.fromRGBO(136,14,79, .9),
    900:const Color.fromRGBO(136,14,79, 1),
  };

  final MaterialColor primaryColor =  MaterialColor(0xffE9FF8F, color);

  static Color staticBlackColor = Colors.black;
  static Color mainButtonColor = const Color(0xffE9FF8F);
  static Color staticWhiteColor = Colors.white;
  static Color staticGreyColor = Colors.grey;
  static Color staticRedColor = Colors.red;

}