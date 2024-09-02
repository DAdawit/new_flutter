import 'package:flutter/material.dart';
import 'package:flutter_application_1/base/res/styles/app_styles.dart';

class FindTicket extends StatelessWidget {
  const FindTicket({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppStyles.buttonColor),
      child: Center(
        child: Text("find tickets",
            style: AppStyles.headLine3.copyWith(color: Colors.white)),
      ),
    );
  }
}
