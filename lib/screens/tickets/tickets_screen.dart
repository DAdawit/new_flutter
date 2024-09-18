import 'package:flutter/material.dart';
import 'package:flutter_application_1/base/res/styles/app_styles.dart';
import 'package:flutter_application_1/base/utils/all_json.dart';
import 'package:flutter_application_1/base/widgets/ticket_view.dart';
import 'package:flutter_application_1/screens/search/widgets/app_ticket_tabs.dart';
import 'package:flutter_application_1/screens/tickets/widgets/ticket_card.dart';

class TicketsScreen extends StatefulWidget {
  const TicketsScreen({super.key});

  @override
  State<TicketsScreen> createState() => _TicketsScreenState();
}

class _TicketsScreenState extends State<TicketsScreen> {
  late int index = 0;
  @override
  void didChangeDependencies() {
    if (ModalRoute.of(context)!.settings.arguments != null) {
      var args = ModalRoute.of(context)!.settings.arguments as Map;
      index = args["index"];
    }

    super.didChangeDependencies();
    // print(args);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ticket"),
        backgroundColor: AppStyles.bgColor,
      ),
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const AppTicketTabs(
            leftText: "Upcomming",
            rightText: "Previous",
          ),
          const SizedBox(
            height: 30,
          ),
          Tickeview(
            ticket: ticketList[index],
            wholeScreen: true,
            isColored: false,
          ),
          const TicketCard(),
          const SizedBox(
            height: 30,
          ),
          Tickeview(
            ticket: ticketList[index],
            wholeScreen: true,
            isColored: true,
          ),
        ],
      ),
    );
  }
}
