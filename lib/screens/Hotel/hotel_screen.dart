import 'package:flutter/material.dart';
import 'package:flutter_application_1/base/res/styles/app_styles.dart';
import 'package:flutter_application_1/base/utils/all_json.dart';
import 'package:flutter_application_1/screens/Hotel/widgets/hotel.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppStyles.bgColor,
          title: Text(
            "All Hotels",
            style: AppStyles.headLine3,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 16,
                childAspectRatio: 1.0),
            itemCount: hotelList.length,
            itemBuilder: (context, index) {
              var singleHotel = hotelList[index];
              return Hotel(hotel: singleHotel);
            },
          ),
          // scrollDirection: Axis.vertical,
          // children: hotelList.map((hotel) => Hotel(hotel: hotel)).toList(),
        )

        // body: Padding(padding: padding),
        );
  }
}
