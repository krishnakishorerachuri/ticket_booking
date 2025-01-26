import 'package:flutter/material.dart';
import 'package:ticket_booking/base/res/styles/app_styles.dart';
import 'package:ticket_booking/base/widgets/text_style_third.dart';

import 'app_column_text_layout.dart';
import 'applayout_builder.dart';
import 'big_circular.dart';
import 'big_dot.dart';
import 'text_style_four.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key, required this.ticket, this.wholeScreen = false});
  final Map<String, dynamic> ticket;
  final bool wholeScreen;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.85,
      height: 189,
      child: Container(
        margin: EdgeInsets.only(right: (wholeScreen==true)? 0: 15.0),

        child: Column(
          children: [
            // blue part of ticket
            Container(
                decoration: BoxDecoration(
                    color: AppStyles.ticketBlue,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(21),
                        topRight: Radius.circular(21))),
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    // Show departure and destination
                    Row(
                      children: [
                        TextStyleThird(text: ticket["from"]["code"]),
                        Expanded(child: Container()),
                        const BigDot(),
                        Expanded(
                            child: Stack(children: [
                          SizedBox(
                              height: 24,
                              child: AppLayoutBuilderWidget(
                                randomDivider: 6,
                              )),
                          Center(
                            child: Transform.rotate(
                                angle: 1.57,
                                child: const Icon(
                                  Icons.local_airport_rounded,
                                  color: Colors.white,
                                )),
                          ),
                        ])),
                        const BigDot(),
                        Expanded(child: Container()),
                        TextStyleThird(text: ticket["to"]["code"]),
                      ],
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    // Show departure and destination time
                    Row(
                      children: [
                        SizedBox(
                          width: 100,
                          child:  TextStyleFour(text: ticket["from"]["name"]),
                        ),
                        Expanded(child: Container()),
                         TextStyleFour(text: ticket["flying_time"]),
                        Expanded(child: Container()),
                        SizedBox(
                          width: 100,
                          child: TextStyleFour(
                            text: ticket["to"]["name"],
                            align: TextAlign.end,
                          ),
                        )
                      ],
                    ),
                  ],
                )),
            // circles and dots
            Container(
              color: AppStyles.ticketOrange,
              child: const Row(
                children: [
                  BigCircular(
                    isRight: false,
                  ),
                  Expanded(
                      child: AppLayoutBuilderWidget(
                    randomDivider: 16,
                    width: 6,
                  )),
                  BigCircular(
                    isRight: true,
                  )
                ],
              ),
            ),
            // orange part of ticket
            Container(
                decoration: BoxDecoration(
                    color: AppStyles.ticketOrange,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(21),
                        bottomRight: Radius.circular(21))),
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    // Show departure and destination
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnTextLayout(
                            topText: ticket["date"], bottomText: "Date"),
                        AppColumnTextLayout(
                          topText: ticket["departure_time"],
                          bottomText: "Departure time",
                          align: CrossAxisAlignment.center,
                        ),
                        AppColumnTextLayout(
                            topText: ticket["number"].toString(),
                            bottomText: "Number",
                            align: CrossAxisAlignment.end),
                      ],
                    ),
                    const SizedBox(
                      height: 3,
                    ),

                  ],
                )),
          ],
        ),
      ),
    );
  }
}
