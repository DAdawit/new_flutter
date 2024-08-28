import 'package:flutter/material.dart';
import 'package:flutter_application_1/base/res/styles/app_styles.dart';
import 'package:flutter_application_1/base/utils/all_json.dart';
import 'package:flutter_application_1/screens/widgets/hotel.dart';

class Hotels extends StatelessWidget {
  const Hotels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "All Hotels",
            style: AppStyles.headLine3,
          ),
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: hotelList.map((hotel) => Hotel(hotel: hotel)).toList(),
        ));
  }
}
