import 'package:flutter/material.dart';

Color primary = const Color(0xFF687DAF);

class AppStyles {
  static Color primaryColor = primary;
  static Color textColor = const Color(0xFF3B3B3B);
  static Color ticketBlue = const Color(0XFF526799);
  static Color ticketOrange = const Color(0xFFF37B67);
  static Color kakiColor = const Color(0xFFd2bdb6);
  static Color plainText = const Color(0XFFBFC2DF);
  static Color bgColor = const Color.fromARGB(255, 223, 220, 220);
  static Color buttonColor = const Color(0XD91130CE);
  static Color circleColor = const Color(0XFF189999);
  static Color whiteColor = const Color(0XFFFFFFFF);
  static Color blackDotesColor = const Color.fromARGB(255, 20, 19, 19);
  static Color darkTextColor = const Color.fromARGB(255, 20, 19, 19);

  static TextStyle textStyle =
      TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: textColor);
  static TextStyle headLine1 =
      TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: textColor);
  static TextStyle headLine2 =
      TextStyle(fontSize: 21, fontWeight: FontWeight.w500, color: textColor);
  static TextStyle headLine3 =
      const TextStyle(fontSize: 17, fontWeight: FontWeight.w500);
  static TextStyle headLine4 =
      const TextStyle(fontSize: 14, fontWeight: FontWeight.w400);
  static TextStyle defaultTextstyle =
      const TextStyle(fontSize: 13, fontWeight: FontWeight.w400);
}
