import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/base/res/styles/app_styles.dart';
import 'package:flutter_application_1/base/res/styles/media.dart';

class Hotel extends StatelessWidget {
  const Hotel({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.6,
      height: 350,
      decoration: BoxDecoration(
          color: AppStyles.primaryColor,
          borderRadius: BorderRadius.circular(24)),
      child: Column(
        children: [
          Container(
            height: 175,
            // width: 40,
            decoration: BoxDecoration(
                color: AppStyles.ticketBlue,
                borderRadius: BorderRadius.circular(12),
                image: const DecorationImage(
                    image: AssetImage(AppMedia.logo), fit: BoxFit.cover)),
          )
        ],
      ),
    );
  }
}
