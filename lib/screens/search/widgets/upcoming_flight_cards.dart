import 'package:flutter/material.dart';
import 'package:flutter_application_1/base/res/styles/media.dart';
import 'package:flutter_application_1/base/res/styles/app_styles.dart';

class UpcomingFlightCards extends StatelessWidget {
  const UpcomingFlightCards({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: size.width * .42,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade200, blurRadius: 1, spreadRadius: 2)
            ],
          ),
          child: Column(
            children: [
              Container(
                  height: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: const DecorationImage(
                          image: AssetImage(AppMedia.planeImage),
                          fit: BoxFit.cover))),
              const SizedBox(
                height: 10,
              ),
              Text(
                "20% discount on the early booking of this flight. Don't miss",
                style: AppStyles.headLine2,
              )
            ],
          ),
        ),
        Column(
          children: [
            Stack(
              children: [
                Container(
                  width: size.width * 0.44,
                  height: 210,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 39, 173, 160)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Discount\n for survey",
                        style: AppStyles.headLine2.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Take the survey about our service and get disscount",
                        style:
                            AppStyles.headLine4.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: -45,
                  top: -45,
                  child: Container(
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 18,
                        color: AppStyles.circleColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: size.width * 0.44,
              height: 210,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.red),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Take Love",
                    style: AppStyles.headLine2.copyWith(color: Colors.white),
                  ),
                  Text(
                    "Take the survey about our service and get disscount",
                    style: AppStyles.headLine4.copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
