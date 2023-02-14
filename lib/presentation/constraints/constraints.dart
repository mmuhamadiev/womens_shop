import 'package:flutter/material.dart';

/// Mockup width and height

const double mockUpWidth = 430.0;

const double mockUpHeight = 932.0;

/// Main Colors palette

Map<int, Color> color =
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

const Color mainBgColor = Colors.black;
const Color mainButtonColor = Color(0xffE9FF8F);
const Color staticWhiteColor = Colors.white;
const Color staticGreyColor = Colors.grey;


/// Text Style

const TextStyle plusJakarta700WhiteStyle  = TextStyle(
    fontFamily: 'PlusJakartaSans',
    color: staticWhiteColor,
    fontWeight: FontWeight.w700
);

const TextStyle plusJakarta600WhiteStyle  = TextStyle(
    fontFamily: 'PlusJakartaSans',
    color: staticWhiteColor,
    fontWeight: FontWeight.w600
);

const TextStyle plusJakarta500WhiteStyle  = TextStyle(
    fontFamily: 'PlusJakartaSans',
    color: staticWhiteColor,
    fontWeight: FontWeight.w500
);

const TextStyle plusJakarta400WhiteStyle  = TextStyle(
    fontFamily: 'PlusJakartaSans',
    color: staticWhiteColor,
    fontWeight: FontWeight.w400
);

const TextStyle plusJakarta700BlackStyle  = TextStyle(
    fontFamily: 'PlusJakartaSans',
    color: mainBgColor,
    fontWeight: FontWeight.w700
);

const TextStyle plusJakarta600BlackStyle  = TextStyle(
    fontFamily: 'PlusJakartaSans',
    color: mainBgColor,
    fontWeight: FontWeight.w600
);

/// ButtonStyle

const ButtonStyle outlinedButtonStyle = ButtonStyle(
  side: MaterialStatePropertyAll(BorderSide(
    color: mainButtonColor,
  ),
  ),
);

final ButtonStyle backIconButtonStyle = ButtonStyle(
  backgroundColor:
  MaterialStatePropertyAll(staticWhiteColor.withOpacity(0.1)),
  shape: MaterialStatePropertyAll<CircleBorder>(
    CircleBorder(
      side: BorderSide(
        color: staticWhiteColor.withOpacity(0.1),
      ),
    ),
  ),
);