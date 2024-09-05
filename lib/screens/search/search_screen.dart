import 'package:flutter/material.dart';
import 'package:flutter_application_1/base/res/styles/app_styles.dart';
import 'package:flutter_application_1/base/utils/app_routes.dart';
import 'package:flutter_application_1/base/widgets/app_double_text.dart';
import 'package:flutter_application_1/screens/search/widgets/app_text_icon.dart';
import 'package:flutter_application_1/screens/search/widgets/app_ticket_tabs.dart';
import 'package:flutter_application_1/screens/search/widgets/find_ticket.dart';
import 'package:flutter_application_1/screens/search/widgets/upcoming_flight_cards.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppStyles.bgColor,
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          children: [
            const SizedBox(
              height: 20,
            ),
            Text(
              "What are\n you looking for?",
              style: AppStyles.headLine1.copyWith(fontSize: 35),
            ),
            const AppTicketTabs(),
            const SizedBox(
              height: 20,
            ),
            const AppTextIcon(
              text: "Departure",
              icon: Icons.flight_takeoff_rounded,
            ),
            const SizedBox(
              height: 20,
            ),
            const AppTextIcon(text: "Arrival", icon: Icons.flight_land_rounded),
            const SizedBox(
              height: 20,
            ),
            const FindTicket(),
            const SizedBox(
              height: 20,
            ),
            AppDoubleText(
                bigText: "Upcomming Flights",
                smallText: "view all",
                fun: () => Navigator.pushNamed(context, AppRoutes.hotels)),
            const SizedBox(
              height: 15,
            ),
            const UpcomingFlightCards()
          ],
        ));
  }
}
