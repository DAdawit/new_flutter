import 'package:flutter/material.dart';
import 'package:flutter_application_1/base/res/styles/app_styles.dart';
import 'package:flutter_application_1/base/utils/all_json.dart';
import 'package:flutter_application_1/base/widgets/ticket_view.dart';

import 'package:flutter_application_1/screens/search/widgets/app_ticket_tabs.dart';
import 'package:flutter_application_1/screens/tickets/widgets/ticket_card.dart';

class TicketsScreen extends StatelessWidget {
  const TicketsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(
            "Tickets",
            style: AppStyles.headLine1.copyWith(fontSize: 35),
          ),
          const SizedBox(
            height: 20,
          ),
          const AppTicketTabs(
            leftText: "Upcomming",
            rightText: "Previous",
          ),
          const SizedBox(
            height: 30,
          ),
          Tickeview(
            ticket: ticketList[0],
            wholeScreen: true,
            isColored: false,
          ),
          const TicketCard(),
          const SizedBox(
            height: 30,
          ),
          Tickeview(
            ticket: ticketList[0],
            wholeScreen: true,
            isColored: true,
          ),
        ],
      ),
    );
  }
}
