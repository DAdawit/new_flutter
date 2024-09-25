import 'package:flutter/material.dart';
import 'package:flutter_application_1/base/res/styles/app_styles.dart';

class AppColumnTextLayout extends StatelessWidget {
  final String topText;
  final String bottomText;
  final bool isColored;
  final CrossAxisAlignment aligment;
  const AppColumnTextLayout(
      {super.key,
      required this.topText,
      required this.bottomText,
      required this.isColored,
      this.aligment = CrossAxisAlignment.start});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: aligment,
      children: [
        Text(
          topText,
          style: AppStyles.headLine4.copyWith(
              color: isColored ? Colors.white : AppStyles.textColor,
              fontSize: 16,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 3),
        Text(
          bottomText,
          style: AppStyles.headLine4
              .copyWith(color: isColored ? Colors.white : AppStyles.textColor),
        ),
      ],
    );
  }
}
