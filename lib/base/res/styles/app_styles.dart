import 'package:flutter/material.dart';

Color primary = const Color(0xFF687DAF);

class AppStyles {
  static Color primaryColor = primary;
  static Color textColor = const Color(0xFF3B3B3B);
  static Color ticketBlue = const Color(0XFF526799);
  static Color ticketOrange = const Color(0xFFF37B67);
  static Color kakiColor = const Color(0xFFd2bdb6);

  static TextStyle textStyle =
      TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: textColor);
  static TextStyle headLine1 =
      TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: textColor);
  static TextStyle headLine2 =
      TextStyle(fontSize: 21, fontWeight: FontWeight.w500, color: textColor);
  static TextStyle headLine3 =
      const TextStyle(fontSize: 17, fontWeight: FontWeight.w500);
  static TextStyle headLine4 =
      const TextStyle(fontSize: 14, fontWeight: FontWeight.w500);
}
