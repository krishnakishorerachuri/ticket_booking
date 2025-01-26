import 'package:flutter/material.dart';
import 'package:ticket_booking/screens/all_tickets.dart';

import 'base/bottom_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, routes: {
      "/": (context) => const BottomNavBar(),
      "/all_tickets": (context) {
        return const AllTickets();
      }
    });
  }
}
