import 'package:flutter/material.dart';
import 'package:flutter_application_1/base/res/styles/app_styles.dart';
import 'package:flutter_application_1/screens/search/widgets/app_text_icon.dart';
import 'package:flutter_application_1/screens/search/widgets/app_ticket_tabs.dart';

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
            const AppTextIcon(text: "Arrival", icon: Icons.flight_land_rounded)
          ],
        ));
  }
}
