import 'package:flutter/material.dart';

import 'app_tabs.dart';

class AppTicketTabs extends StatelessWidget {
  const AppTicketTabs({super.key, required this.firstTabText, required this.secondTabText});
  final String firstTabText;
  final String secondTabText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Color(0xFFF4F6FD)),
      child: Row(children: [
        AppTabs(
          text: firstTabText,
          tabBorder: false,
        ),
        AppTabs(
          text: secondTabText,
          tabBorder: true,
        )
      ]),
    );
  }
}
