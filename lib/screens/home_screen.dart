import 'package:fluentui_icons/fluentui_icons.dart';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/base/res/styles/app_styles.dart';
import 'package:flutter_application_1/base/res/styles/media.dart';
import 'package:flutter_application_1/base/utils/all_json.dart';
import 'package:flutter_application_1/base/utils/app_routes.dart';
import 'package:flutter_application_1/base/widgets/app_double_text.dart';
import 'package:flutter_application_1/base/widgets/ticket_view.dart';
import 'package:flutter_application_1/screens/widgets/hotel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Good morning", style: AppStyles.headLine3),
                        const SizedBox(
                          height: 10,
                        ),
                        Text("Book Tickets", style: AppStyles.headLine1)
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          // color: Colors.red,
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                              image: AssetImage(AppMedia.logo))),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xFFF4F6FD)),
                  child: const Row(
                    children: [
                      Icon(FluentSystemIcons.ic_fluent_search_regular,
                          color: Color(0xffbfc205)),
                      Text("search")
                    ],
                  ),
                ),
                const SizedBox(height: 48),
                AppDoubleText(
                  bigText: "Upcomming Flight",
                  smallText: "view all",
                  fun: () => Navigator.pushNamed(context, AppRoutes.allTickets),
                ),
                const SizedBox(height: 20),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      // children: [Tickeview(), Tickeview(), Tickeview()],
                      children: ticketList
                          .take(3)
                          .map(
                              (singleTicket) => Tickeview(ticket: singleTicket))
                          .toList(),
                    )),
                const SizedBox(height: 48),
                AppDoubleText(
                  bigText: "Hotels",
                  smallText: "view all",
                  fun: () => Navigator.pushNamed(context, AppRoutes.hotels),
                ),
                const SizedBox(height: 48),
                const Hotel()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
