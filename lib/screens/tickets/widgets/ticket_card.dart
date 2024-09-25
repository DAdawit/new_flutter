import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/base/res/styles/app_styles.dart';
import 'package:flutter_application_1/base/utils/all_json.dart';
import 'package:flutter_application_1/base/widgets/app_layoutbuilder_widget.dart';

class TicketCard extends StatelessWidget {
  const TicketCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 1,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          // margin: const EdgeInsets.symmetric(vertical: -10),
          color: AppStyles.whiteColor,
          child: Column(
            children: [
              TextValue(
                value1: ticketDetail["passenger"],
                value2: ticketDetail["passport"],
              ),
              const TextTitle(title1: "Passanger", title2: "passport"),
              const SizedBox(
                height: 24,
                child: AppLayoutbuilderWidget(
                  randomDivider: 18,
                  isColored: false,
                ),
              ),
              TextValue(
                value1: ticketDetail["number_of_eTicket"],
                value2: ticketDetail["booking_code"],
              ),
              const TextTitle(
                  title1: "Number of E-ticket", title2: "Booking code"),
              const SizedBox(
                height: 24,
                child: AppLayoutbuilderWidget(
                  randomDivider: 18,
                  isColored: false,
                ),
              ),
              TextValue(
                value1: ticketDetail["passenger"],
                value2: '\$${ticketDetail["payment_method"]["price"]}',
                image: ticketDetail["payment_method"]["image"],
              ),
              const TextTitle(title1: "Payment method", title2: "Price"),
            ],
          ),
        ),
        const SizedBox(
          height: 1,
        ),
        Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),

            // border: BorderRadius.only(bottomLeft: 20,, bottomRight: 20)
          ),
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: BarcodeWidget(
                height: 70,
                data: "https://wanderweb.netlify.app/",
                barcode: Barcode.code128(),
                drawText: false),
          ),
        )
      ],
    );
  }
}

class TextTitle extends StatelessWidget {
  final String title1;
  final String title2;
  const TextTitle({super.key, required this.title1, required this.title2});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title1, style: AppStyles.headLine4),
        Text(
          title2,
          style: AppStyles.headLine4,
        )
      ],
    );
  }
}

class TextValue extends StatelessWidget {
  final String image;
  final String value1;
  final String value2;
  const TextValue(
      {super.key, required this.value1, required this.value2, this.image = ""});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        image == ""
            ? Text(
                value1,
                style: AppStyles.headLine3,
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 25,
                    width: 45,
                    decoration: BoxDecoration(
                        // color: Colors.green,
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/images/${ticketDetail["payment_method"]["image"]}'))),
                  ),
                  Text(
                    '*** ${ticketDetail["payment_method"]["code"]}',
                    style: AppStyles.headLine3,
                  ),
                ],
              ),
        Text(
          value2,
          style: AppStyles.headLine3,
        )
      ],
    );
  }
}
