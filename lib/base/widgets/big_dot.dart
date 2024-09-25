import 'package:flutter/material.dart';
import 'package:flutter_application_1/base/res/styles/app_styles.dart';

class BigDot extends StatelessWidget {
  final bool isColored;
  const BigDot({super.key, required this.isColored});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        border: Border.all(
            width: 1.8,
            color:
                isColored ? AppStyles.whiteColor : AppStyles.blackDotesColor),
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
