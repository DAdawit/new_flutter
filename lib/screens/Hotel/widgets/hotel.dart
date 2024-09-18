import 'package:flutter/material.dart';
import 'package:flutter_application_1/base/res/styles/app_styles.dart';

class Hotel extends StatelessWidget {
  final bool wholeScreen;
  final Map<String, dynamic> hotel;
  const Hotel({super.key, required this.hotel, this.wholeScreen = false});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.6,
      height: 350,
      padding: const EdgeInsets.all(8),
      margin: EdgeInsets.only(
          right: wholeScreen ? 0 : 20,
          left: wholeScreen ? 0 : 20,
          bottom: wholeScreen ? 0 : 25),
      decoration: BoxDecoration(
          color: AppStyles.primaryColor,
          borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 175,
            decoration: BoxDecoration(
                color: AppStyles.ticketBlue,
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                    image: AssetImage('assets/images/${hotel["image"]}'),
                    fit: BoxFit.cover)),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 8, top: 3),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  hotel["place"],
                  style: AppStyles.headLine2.copyWith(
                    color: AppStyles.kakiColor,
                  ),
                ),
                Text(
                  hotel["destination"],
                  style: AppStyles.headLine3.copyWith(color: Colors.white),
                ),
                const SizedBox(height: 10),
                Text(
                  "\$${hotel["price"]}/night",
                  style:
                      AppStyles.headLine2.copyWith(color: AppStyles.kakiColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
