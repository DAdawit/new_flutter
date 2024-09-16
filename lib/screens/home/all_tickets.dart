import 'package:flutter/material.dart';
import 'package:flutter_application_1/base/res/styles/app_styles.dart';
import 'package:flutter_application_1/base/utils/all_json.dart';
import 'package:flutter_application_1/base/widgets/ticket_view.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "All Tickets",
            style: AppStyles.headLine3,
          ),
        ),
        body: ListView(
          children: [
            SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  // children: [Tickeview(), Tickeview(), Tickeview()],
                  children: ticketList
                      .take(5)
                      .map((singleTicket) => Tickeview(
                            ticket: singleTicket,
                            wholeScreen: true,
                          ))
                      .toList(),
                )),
          ],
        ));
  }
}
