import 'package:flutter/material.dart';

class ColorCode {
  static const primary = Color(0xFF0b996e);
  static const secondary = Color(0xFF03447C);

  //Greys
  static const grey = Color(0xffD8D8D8);
  static const Color titleGrey = Color(0xff798899);
  static const darkGrey = Color(0xff515C6A);
  static const lightGrey = Color(0xffF8FAFC);
  static const Color borderGrey = Color(0xFFE4ECF4);
  static const shadowColorGrey = Color(0x19000000);
  static const backGroundColorGrey = Color(0xFFF0F5F8);
  static const backGroundColorGrey2 = Color(0xFFeff5f8);
  static const backGroundColorGrey3 = Color(0xFF0075FF1A);
  static const titleGrey7 = Color(0xff82808D);
  static const titleGrey8 = Color(0xff999999);
  static const darkGrey2 = Color(0xff515C6A);
  static const lightGrey3 = Color(0xffF8FAFC);
  //------------------------------------------------
  //blacks#515C6A
  static const black = Color(0xff000000);
  static const Color titleblack = Color(0xff252D36);
  //----------------------------------------------

  //greens
  static const Color greenLight = Color(0xffE9FAF0);
  static const Color greendark = Color.fromARGB(255, 18, 91, 51);
  //------------------------------------------------
  //whites
  static const background = Color(0xffebecf0);
  static const transparent = Colors.transparent;
  static const white = Color(0xffFFFFFF);
  //------------------------------------------------

  //reds
  static const red = Color(0xffBC3A3A);
  static const Color lightRed = Color(0xffE5414C);
  static const Color ExtraLightRed = Color(0xffFBEDF6);
  static const Color darkRed = Color(0xffBE1B30);
  static const Color extraLightRed = Color(0xffFBEDF6);
  //--------------------------------------------------

  //orangs
  static const Color orange = Color(0xffFF9B10);
  static const Color golden = Color(0xFFFFC529);
  static const Color orange2 = Color(0xFFFFCC00);
  //-------------------------------------------------

  //blues
  static const Color highlightblue = Color(0xFF10075FF);
  static const Color deepBlue = Color(0xff312478);
  static const Color lightBlue = Color(0xff1E82F7);
  static const Color lightBlue2 = Color(0xFF99D9F2);

  static const Color savingsColor = Color(0xFF28A745);
  static BoxShadow cardShadow = BoxShadow(
      color: Colors.grey.withOpacity(0.2), spreadRadius: 2, blurRadius: 8);
  static const LinearGradient cardGradient =
      LinearGradient(colors: [Color(0xFFF6F9FC), Color(0xFFE8F0F7)]);
  static const LinearGradient backgroundGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFFE6F3EF), Color(0xFFDCE5F2)],
  );
}
