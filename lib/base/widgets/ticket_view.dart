import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/base/res/styles/app_styles.dart';
import 'package:flutter_application_1/base/widgets/app_layoutbuilder_widget.dart';
import 'package:flutter_application_1/base/widgets/big_circle_dot.dart';
import 'package:flutter_application_1/base/widgets/big_dot.dart';

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
                        SizedBox(
                            width: 100,
                            child: Text(
                              "New-York",
                              style: AppStyles.headLine4
                                  .copyWith(fontSize: 14, color: Colors.white),
                            )),
                        Expanded(child: Container()),
                        Text(
                          "8H 30M",
                          style: AppStyles.headLine4
                              .copyWith(fontSize: 14, color: Colors.white),
                        ),
                        Expanded(child: Container()),
                        SizedBox(
                            width: 100,
                            child: Text(
                              "London",
                              textAlign: TextAlign.end,
                              style: AppStyles.headLine4
                                  .copyWith(fontSize: 14, color: Colors.white),
                            )),
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
                        SizedBox(
                            width: 100,
                            child: Text(
                              "Date",
                              style: AppStyles.headLine4
                                  .copyWith(fontSize: 14, color: Colors.white),
                            )),
                        Expanded(child: Container()),
                        Text(
                          "Departure time",
                          style: AppStyles.headLine4
                              .copyWith(fontSize: 14, color: Colors.white),
                        ),
                        Expanded(child: Container()),
                        SizedBox(
                            width: 100,
                            child: Text(
                              "Number",
                              textAlign: TextAlign.end,
                              style: AppStyles.headLine4
                                  .copyWith(fontSize: 14, color: Colors.white),
                            )),
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
