import 'package:flutter/material.dart';
import 'package:flutter_application_1/base/res/styles/app_styles.dart';
import 'package:flutter_application_1/base/widgets/app_column_text_layout.dart';
import 'package:flutter_application_1/base/widgets/app_layoutbuilder_widget.dart';
import 'package:flutter_application_1/base/widgets/big_circle_dot.dart';
import 'package:flutter_application_1/base/widgets/big_dot.dart';
import 'package:flutter_application_1/base/widgets/text_style_fourth.dart';

class Tickeview extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool wholeScreen;
  final bool isColored;
  const Tickeview(
      {super.key,
      required this.ticket,
      this.wholeScreen = false,
      required this.isColored});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      height: 180,
      child: Container(
          margin: EdgeInsets.only(right: wholeScreen ? 0 : 16),
          child: Column(
            children: [
              // ble part of the ticket
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: isColored ? AppStyles.ticketBlue : Colors.white,
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
                          style: AppStyles.headLine3.copyWith(
                              color: isColored
                                  ? Colors.white
                                  : AppStyles.darkTextColor),
                        ),
                        Expanded(child: Container()),
                        BigDot(
                          isColored: isColored,
                        ),
                        // ticket flying icon
                        Expanded(
                            child: Stack(
                          children: [
                            SizedBox(
                              height: 24,
                              child: AppLayoutbuilderWidget(
                                randomDivider: 6,
                                isColored: isColored,
                              ),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.57,
                                child: Icon(
                                  Icons.local_airport_rounded,
                                  color: isColored
                                      ? Colors.white
                                      : AppStyles.darkTextColor,
                                ),
                              ),
                            )
                          ],
                        )),
                        BigDot(
                          isColored: isColored,
                        ),
                        Expanded(child: Container()),
                        Text(
                          ticket["to"]["code"],
                          style: AppStyles.headLine3.copyWith(
                              color: isColored
                                  ? Colors.white
                                  : AppStyles.darkTextColor),
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
                            child: TextStyleFourth(
                              text: ticket["from"]["name"],
                              isColored: isColored,
                            )),
                        Expanded(child: Container()),
                        TextStyleFourth(
                          text: ticket["flying_time"],
                          isColored: isColored,
                        ),
                        Expanded(child: Container()),
                        SizedBox(
                            width: 100,
                            child: TextStyleFourth(
                              text: ticket["to"]["name"],
                              alignText: TextAlign.end,
                              isColored: isColored,
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              //  circless and dots
              Container(
                height: 20,
                color:
                    isColored ? AppStyles.ticketOrange : AppStyles.whiteColor,
                child: Row(
                  children: [
                    BigCircleDot(
                      isRight: false,
                      isColored: isColored,
                    ),
                    Expanded(
                      child: AppLayoutbuilderWidget(
                        randomDivider: 16,
                        width: 6,
                        isColored: isColored,
                      ),
                    ),
                    BigCircleDot(
                      isRight: true,
                      isColored: isColored,
                    ),
                  ],
                ),
              ),
              // orange part of the ticket
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: isColored
                        ? AppStyles.ticketOrange
                        : AppStyles.whiteColor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: isColored
                            ? const Radius.circular(20)
                            : const Radius.circular(0),
                        bottomRight: isColored
                            ? const Radius.circular(20)
                            : const Radius.circular(0))),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnTextLayout(
                          topText: ticket["date"],
                          bottomText: "Date",
                          isColored: isColored,
                        ),
                        AppColumnTextLayout(
                          topText: ticket["departure_time"],
                          bottomText: "Departure Time",
                          aligment: CrossAxisAlignment.center,
                          isColored: isColored,
                        ),
                        AppColumnTextLayout(
                          topText: ticket["number"].toString(),
                          bottomText: "Number",
                          aligment: CrossAxisAlignment.end,
                          isColored: isColored,
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
