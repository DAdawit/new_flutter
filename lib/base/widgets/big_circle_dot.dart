import 'package:flutter/material.dart';
import 'package:flutter_application_1/base/res/styles/app_styles.dart';

class BigCircleDot extends StatelessWidget {
  final bool isRight;
  final bool isColored;

  const BigCircleDot(
      {super.key, required this.isRight, required this.isColored});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      width: 10,
      child: DecoratedBox(
          decoration: BoxDecoration(
              color: isColored ? Colors.white : AppStyles.textColor,
              borderRadius: isRight == true
                  ? const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10))
                  : const BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10)))),
    );
  }
}
