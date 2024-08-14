import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/base/res/styles/app_styles.dart';
import 'package:flutter_application_1/base/widgets/app_layoutbuilder_widget.dart';
import 'package:flutter_application_1/base/widgets/big_dot.dart';

class Tickeview extends StatelessWidget {
  const Tickeview({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      height: 179,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: AppStyles.ticketBlue,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Column(
          children: [
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "NYC",
                  style: AppStyles.headLine3.copyWith(color: Colors.white),
                ),
                Expanded(child: Container()),
                const BigDot(),
                const Expanded(
                    child: Stack(
                  children: [
                    SizedBox(
                      child: AppLayoutbuilderWidget(randomDivider: 6),
                    ),
                    Center(
                        // child: Text("helllo"),
                        )
                  ],
                )),
                const BigDot(),
                Expanded(child: Container()),
                Text(
                  "NYC",
                  style: AppStyles.headLine3.copyWith(color: Colors.white),
                ),
              ],
            ),
            const Row(
              children: [],
            ),
          ],
        ),
      ),
    );
  }
}
