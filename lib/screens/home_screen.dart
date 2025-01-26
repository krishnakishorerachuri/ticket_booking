import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:ticket_booking/base/widgets/app_double_text.dart';
import 'package:ticket_booking/base/widgets/ticket_view.dart';
import 'package:ticket_booking/screens/widgets/hotels.dart';
import '../base/res/styles/app_styles.dart';
import '../base/res/styles/media.dart';
import '../base/utils/app_json.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        children: [
          const SizedBox(
            height: 40,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Good morning", style: AppStyles.headlineStyle3),
                        const SizedBox(height: 5),
                        Text("Book Tickets", style: AppStyles.headlineStyle1)
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage(AppMedia.logo)),
                          borderRadius: BorderRadius.circular(10)),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFF4F6FD)),
                  child: const Row(
                    children: [
                      Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xFFBFC205),
                      ),
                      Text("Search")
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                AppDoubleText(
                    bigText: "Upcoming Flights",
                    smallText: "View All",
                    func: () {
                      Navigator.pushNamed(context, AppRoutes.allTickets);
                    }),
                const SizedBox(height: 20),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: ticketList
                          .map((singleTicket) =>
                              TicketView(ticket: singleTicket))
                          .toList(),
                    )),
                const SizedBox(height: 40),
                // Hotels
                AppDoubleText(
                    bigText: "Hotels",
                    smallText: "View All",
                    func: () {
                      Navigator.pushNamed(context, AppRoutes.allTickets);
                    }),
                const SizedBox(height: 20),

                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: hotelList
                          .map((singlehotel) =>
                          Hotels(hotel: singlehotel))
                          .toList(),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
