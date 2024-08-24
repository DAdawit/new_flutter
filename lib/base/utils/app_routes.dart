import 'package:flutter/material.dart';
import 'package:flutter_application_1/base/bottom_nav_bar.dart';
import 'package:flutter_application_1/screens/all_tickets.dart';
import 'package:flutter_application_1/screens/hotels.dart';

class AppRoutes {
  static const String home = "/";
  static const String allTickets = "all_tickets";
  static const String hotels = "hotels";

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      home: (context) => const BottomNavBar(),
      allTickets: (context) => const AllTickets(),
      hotels: (context) => const Hotels(),
    };
  }
}
