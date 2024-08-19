import 'package:flutter/material.dart';
import 'package:flutter_application_1/base/res/styles/app_styles.dart';
import 'package:flutter_application_1/base/widgets/app_column_text_layout.dart';
import 'package:flutter_application_1/base/widgets/app_layoutbuilder_widget.dart';
import 'package:flutter_application_1/base/widgets/big_circle_dot.dart';
import 'package:flutter_application_1/base/widgets/big_dot.dart';
import 'package:flutter_application_1/base/widgets/text_style_fourth.dart';

class Tickeview extends StatelessWidget {
  final Map<String, dynamic> ticket;
  const Tickeview({super.key, required this.ticket});

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
                          ticket["from"]["code"],
                          style:
                              AppStyles.headLine3.copyWith(color: Colors.white),
                        ),
                        Expanded(child: Container()),
                        const BigDot(),
                        // ticket flying icon
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
                          ticket["to"]["code"],
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
                            child:
                                TextStyleFourth(text: ticket["from"]["name"])),
                        Expanded(child: Container()),
                        TextStyleFourth(text: ticket["flying_time"]),
                        Expanded(child: Container()),
                        SizedBox(
                            width: 100,
                            child: TextStyleFourth(
                              text: ticket["to"]["name"],
                              alignText: TextAlign.end,
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
                        AppColumnTextLayout(
                          topText: ticket["date"],
                          bottomText: "Date",
                        ),
                        AppColumnTextLayout(
                          topText: ticket["departure_time"],
                          bottomText: "Departure Time",
                          aligment: CrossAxisAlignment.center,
                        ),
                        AppColumnTextLayout(
                          topText: ticket["number"].toString(),
                          bottomText: "Number",
                          aligment: CrossAxisAlignment.end,
                        ),
                      ],
                    ),
                    // show deparure and destination with icons first lline
                    const SizedBox(height: 3),
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
