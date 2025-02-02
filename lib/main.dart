import 'package:flutter/material.dart';
import 'package:ticket_booking/screens/all_hotels.dart';
import 'package:ticket_booking/screens/all_tickets.dart';
import 'package:ticket_booking/screens/ticket/ticket_screen.dart';

import 'base/bottom_nav_bar.dart';
import 'base/utils/app_json.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, routes: {
      AppRoutes.homePage: (context) => const BottomNavBar(),
      AppRoutes.allTickets: (context) => const AllTickets(),
      AppRoutes.ticketScreen: (context) => const TicketScreen(),
      AppRoutes.allHotels : (context) => const AllHotels()
    });
  }
}
