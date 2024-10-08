import 'package:flutter/material.dart';

class AppTicketTabs extends StatelessWidget {
  const AppTicketTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: const Color(0XFFF4F6FD)),
      child: const Row(
        children: [
          AppTabs(tabText: "All tickets"),
          AppTabs(
            tabText: "All tickets",
            tabBorder: true,
            tabColor: true,
          ),
        ],
      ),
    );
  }
}

class AppTabs extends StatelessWidget {
  final String tabText;
  final bool tabBorder;
  final bool tabColor;
  const AppTabs(
      {super.key,
      this.tabText = "",
      this.tabBorder = false,
      this.tabColor = false});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      width: size.width * 0.44,
      decoration: BoxDecoration(
          color: tabColor ? Colors.transparent : Colors.white,
          borderRadius: tabBorder
              ? const BorderRadius.horizontal(right: Radius.circular(50))
              : const BorderRadius.horizontal(left: Radius.circular(50))),
      child: Center(
        child: Text(
          tabText,
        ),
      ),
    );
  }
}
