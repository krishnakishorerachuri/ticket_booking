import 'package:flutter/material.dart';
import 'package:ticket_booking/base/res/styles/app_styles.dart';

class FindTickets extends StatelessWidget {
  const FindTickets({super.key, this.strText = ""});
  final String strText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 17, horizontal: 17),
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: AppStyles.findTicketColor
    ),
      child: Center(
        child: Text(strText, style: AppStyles.textStyle.copyWith(
          color: Colors.white
        ),),
      ),
    );
  }
}
