import 'package:flutter/material.dart';

Color primary = const Color(0xFF687DAF);

class AppStyles {
  static Color primaryColor = primary;
  static Color textColor = const Color(0xFF3B3B3B);
  static TextStyle textStyle =
      TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: textColor);
  static TextStyle headLine1 =
      TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: textColor);
  static TextStyle headLine2 =
      TextStyle(fontSize: 21, fontWeight: FontWeight.w500, color: textColor);
  static TextStyle headLine3 =
      const TextStyle(fontSize: 17, fontWeight: FontWeight.w500);
}
