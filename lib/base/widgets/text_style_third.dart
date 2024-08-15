import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/base/res/styles/app_styles.dart';

class TextStyleThird extends StatelessWidget {
  final String text;
  final bool alignTextStart;
  const TextStyleThird(
      {super.key, required this.text, this.alignTextStart = false});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: alignTextStart ? TextAlign.start : TextAlign.end,
      style: AppStyles.headLine4.copyWith(fontSize: 14, color: Colors.white),
    );
  }
}
