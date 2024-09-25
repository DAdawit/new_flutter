import 'package:flutter/material.dart';
import 'package:flutter_application_1/base/res/styles/app_styles.dart';

class AppLayoutbuilderWidget extends StatelessWidget {
  final int randomDivider;
  final double width;
  final bool isColored;

  const AppLayoutbuilderWidget(
      {super.key,
      required this.randomDivider,
      this.width = 3,
      required this.isColored});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      // print("${(constraints.constrainWidth() / randomDivider).floor()}");
      return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List.generate(
              (constraints.constrainWidth() / randomDivider).floor(),
              (index) => SizedBox(
                    width: width,
                    height: 1,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: isColored
                                ? AppStyles.whiteColor
                                : AppStyles.textColor)),
                  )));
    });
  }
}
