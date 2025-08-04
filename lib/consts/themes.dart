import 'package:flutter/material.dart';

import 'colors.dart';

class Themes {
  static final light = ThemeData(
    fontFamily: 'SF',
    primaryColor: ColorCode.primary,
    scaffoldBackgroundColor: ColorCode.white,
    secondaryHeaderColor: ColorCode.white,
    disabledColor:  ColorCode.darkGrey,
    brightness: Brightness.light,
    hintColor: const Color(0xFF7B7B81).withOpacity(.5),
    cardColor: Colors.white,
    hoverColor: const Color(0xffEAE9E5),
   
  );
}
