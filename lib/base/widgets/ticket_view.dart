import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/base/res/styles/app_styles.dart';
import 'package:flutter_application_1/base/widgets/app_layoutbuilder_widget.dart';
import 'package:flutter_application_1/base/widgets/big_circle_dot.dart';
import 'package:flutter_application_1/base/widgets/big_dot.dart';
import 'package:flutter_application_1/base/widgets/text_style_third.dart';

class Tickeview extends StatelessWidget {
  const Tickeview({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      height: 189,
      child: Container(
          margin: const EdgeInsets.only(right: 16),
          child: Column(
            children: [
              // ble part of the ticket
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: AppStyles.ticketBlue,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Column(
                  children: [
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "NYC",
                          style:
                              AppStyles.headLine3.copyWith(color: Colors.white),
                        ),
                        Expanded(child: Container()),
                        const BigDot(),
                        Expanded(
                            child: Stack(
                          children: [
                            const SizedBox(
                              height: 24,
                              child: AppLayoutbuilderWidget(randomDivider: 6),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.57,
                                child: const Icon(
                                  Icons.local_airport_rounded,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        )),
                        const BigDot(),
                        Expanded(child: Container()),
                        Text(
                          "LDN",
                          style:
                              AppStyles.headLine3.copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                    // show deparure and destination with icons first lline
                    const SizedBox(height: 3),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(
                            width: 100,
                            child: TextStyleThird(
                                text: "New-York", alignTextStart: true)),
                        Expanded(child: Container()),
                        const TextStyleThird(text: "8H 30m"),
                        Expanded(child: Container()),
                        const SizedBox(
                            width: 100, child: TextStyleThird(text: "London")),
                      ],
                    ),
                    const Row(
                      children: [],
                    ),
                  ],
                ),
              ),
              //  circless and dots
              Container(
                height: 20,
                color: AppStyles.ticketOrange,
                child: const Row(
                  children: [
                    BigCircleDot(
                      isRight: false,
                    ),
                    Expanded(
                      child: AppLayoutbuilderWidget(
                        randomDivider: 16,
                        width: 6,
                      ),
                    ),
                    BigCircleDot(
                      isRight: true,
                    ),
                  ],
                ),
              ),
              // orange part of the ticket
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: AppStyles.ticketOrange,
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "1 MAY",
                          style:
                              AppStyles.headLine3.copyWith(color: Colors.white),
                        ),
                        Expanded(child: Container()),
                        Text(
                          "08:00 AM",
                          style:
                              AppStyles.headLine3.copyWith(color: Colors.white),
                        ),
                        Expanded(child: Container()),
                        Text(
                          "23",
                          style:
                              AppStyles.headLine3.copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                    // show deparure and destination with icons first lline
                    const SizedBox(height: 3),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(
                            width: 100,
                            child: TextStyleThird(
                              text: "Date",
                              alignTextStart: true,
                            )),
                        Expanded(child: Container()),
                        const TextStyleThird(text: "Departure time"),
                        Expanded(child: Container()),
                        const SizedBox(
                            width: 100, child: TextStyleThird(text: "Number")),
                      ],
                    ),
                    const Row(
                      children: [],
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
