import 'package:flutter/material.dart';
import 'package:ticket_booking/base/res/styles/app_styles.dart';
import 'package:ticket_booking/base/res/styles/media.dart';
import 'package:ticket_booking/screens/search/widgets/app_text_icon.dart';
import 'package:ticket_booking/screens/search/widgets/app_tickets_tabs.dart';
import 'package:ticket_booking/screens/search/widgets/find_tickets.dart';
import 'package:ticket_booking/screens/search/widgets/ticket_promotion.dart';

import '../../base/utils/app_json.dart';
import '../../base/widgets/app_double_text.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const SizedBox(
            height: 40,
          ),
          Text(
            "What are\n you looking for?",
            style: AppStyles.headlineStyle1.copyWith(fontSize: 35),
          ),
          const SizedBox(
            height: 20,
          ),
          AppTicketTabs(),
          const SizedBox(
            height: 20,
          ),
          AppTextIcon(
            text: "Departure",
            icon: Icons.flight_takeoff_rounded,
          ),
          const SizedBox(
            height: 20,
          ),
          AppTextIcon(
            text: "Arrival",
            icon: Icons.flight_land_rounded,
          ),
          const SizedBox(
            height: 25,
          ),
          const FindTickets(
            strText: "find tickets",
          ),
          const SizedBox(
            height: 40,
          ),
          AppDoubleText(
              bigText: "Upcoming flights",
              smallText: "View All",
              func: () {
                Navigator.pushNamed(context, AppRoutes.allTickets);
              }),
          const SizedBox(
            height: 15,
          ),

          const TicketPromotion()
        ],
      ),
    );
  }
}
