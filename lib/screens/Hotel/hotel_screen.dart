import 'package:flutter/material.dart';
import 'package:flutter_application_1/base/res/styles/app_styles.dart';
import 'package:flutter_application_1/base/utils/all_json.dart';
import 'package:flutter_application_1/base/utils/app_routes.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppStyles.bgColor,
        appBar: AppBar(
          backgroundColor: AppStyles.bgColor,
          title: Text(
            "All Hotels",
            style: AppStyles.headLine3,
          ),
        ),
        body: Container(
          margin: const EdgeInsets.only(left: 5),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 16,
                  childAspectRatio: 0.9),
              itemCount: hotelList.length,
              itemBuilder: (context, index) {
                var singleHotel = hotelList[index];
                return HotelGridView(hotel: singleHotel, index: index);
              },
            ),
          ),
        )

        // body: Padding(padding: padding),
        );
  }
}

class HotelGridView extends StatelessWidget {
  final bool wholeScreen;
  final int index;
  final Map<String, dynamic> hotel;
  const HotelGridView(
      {super.key,
      required this.hotel,
      this.wholeScreen = false,
      required this.index});

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
        print('from hotel screen index $index');
        Navigator.pushNamed(context, AppRoutes.hotelDetail,
            arguments: {"index": index});
      },
      child: Container(
        padding: const EdgeInsets.all(4),
        margin: const EdgeInsets.only(right: 5),
        decoration: BoxDecoration(
            color: AppStyles.primaryColor,
            borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.2,
              child: Container(
                decoration: BoxDecoration(
                    color: AppStyles.ticketBlue,
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                        image: AssetImage('assets/images/${hotel["image"]}'),
                        fit: BoxFit.cover)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, top: 3),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    hotel["place"],
                    style: AppStyles.headLine3.copyWith(
                      color: AppStyles.kakiColor,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        hotel["destination"],
                        style:
                            AppStyles.headLine4.copyWith(color: Colors.white),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        "\$${hotel["price"]}/night",
                        style: AppStyles.headLine4
                            .copyWith(color: AppStyles.kakiColor),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
