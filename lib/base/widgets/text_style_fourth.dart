import 'package:flutter/material.dart';
import 'package:flutter_application_1/base/res/styles/app_styles.dart';

class TextStyleFourth extends StatelessWidget {
  final String text;
  final TextAlign alignText;
  final bool isColored;

  const TextStyleFourth(
      {super.key,
      required this.text,
      this.alignText = TextAlign.start,
      required this.isColored});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: alignText,
      style: AppStyles.headLine4.copyWith(
          fontSize: 14, color: isColored ? Colors.white : AppStyles.textColor),
    );
  }
}
