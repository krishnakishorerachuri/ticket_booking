
import 'package:flutter/material.dart';
import 'package:ticket_booking/base/utils/app_json.dart';
import 'package:ticket_booking/base/widgets/ticket_view.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
         title: Text("All Tickets"),

     ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: ticketList.map((singleTicket) {
          return Container(
            margin: EdgeInsets.only(bottom: 20),
            child: TicketView(ticket: singleTicket, wholeScreen: true ),
          );
        }).toList(),
      ),
    );
  }
}
