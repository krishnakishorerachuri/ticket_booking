import 'package:flutter/material.dart';
import 'package:ticket_booking/base/res/styles/app_styles.dart';
import 'package:ticket_booking/base/widgets/text_style_third.dart';

import 'app_column_text_layout.dart';
import 'applayout_builder.dart';
import 'big_circular.dart';
import 'big_dot.dart';
import 'text_style_four.dart';

class TicketView extends StatelessWidget {
  const TicketView(
      {super.key,
      required this.ticket,
      this.wholeScreen = false,
      this.isColor});
  final Map<String, dynamic> ticket;
  final bool wholeScreen;
  final bool? isColor;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.85,
      height: 189,
      child: Container(
        margin: EdgeInsets.only(right: (wholeScreen == true) ? 0 : 16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // blue part of ticket
            Container(
                decoration: BoxDecoration(
                    color: isColor == null
                        ? AppStyles.ticketBlue
                        : AppStyles.ticketColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(21),
                        topRight: Radius.circular(21))),
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    // Show departure and destination
                    Row(
                      children: [
                        TextStyleThird(
                          text: ticket["from"]["code"],
                          isColor: isColor,
                        ),
                        Expanded(child: Container()),
                        BigDot(
                          isColor: isColor,
                        ),
                        Expanded(
                            child: Stack(children: [
                          SizedBox(
                              height: 24,
                              child: AppLayoutBuilderWidget(
                                randomDivider: 6,
                                isColor: isColor,
                              )),
                          Center(
                            child: Transform.rotate(
                                angle: 1.57,
                                child: Icon(
                                  Icons.local_airport_rounded,
                                  color: isColor == null
                                      ? Colors.white
                                      : AppStyles.planeSecondaryColor,
                                )),
                          ),
                        ])),
                        BigDot(
                          isColor: isColor,
                        ),
                        Expanded(child: Container()),
                        TextStyleThird(
                            text: ticket["to"]["code"], isColor: isColor),
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
                          child: TextStyleFour(
                            text: ticket["from"]["name"],
                            isColor: isColor,
                          ),
                        ),
                        Expanded(child: Container()),
                        TextStyleFour(
                          text: ticket["flying_time"],
                          isColor: isColor,
                        ),
                        Expanded(child: Container()),
                        SizedBox(
                          width: 100,
                          child: TextStyleFour(
                            text: ticket["to"]["name"],
                            align: TextAlign.end,
                            isColor: isColor,
                          ),
                        )
                      ],
                    ),
                  ],
                )),
            // circles and dots
            Container(
              color: isColor == null
                  ? AppStyles.ticketOrange
                  : AppStyles.ticketColor,
              child:  Row(
                children: [
                  BigCircular(
                    isRight: false,
                    isColor: isColor ,
                  ),
                  Expanded(
                      child: AppLayoutBuilderWidget(
                    randomDivider: 16,
                    width: 6,
                        isColor: isColor,
                  )),
                  BigCircular(
                    isRight: true,
                    isColor: isColor,
                  )
                ],
              ),
            ),
            // orange part of ticket
            Container(
                decoration: BoxDecoration(
                    color: isColor == null
                        ? AppStyles.ticketOrange
                        : AppStyles.ticketColor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular( isColor == null ? 21 : 0),
                        bottomRight: Radius.circular(isColor == null ? 21 : 0))),
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    // Show departure and destination
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnTextLayout(
                          topText: ticket["date"],
                          bottomText: "Date",
                          isColor: isColor,
                        ),
                        AppColumnTextLayout(
                          topText: ticket["departure_time"],
                          bottomText: "Departure time",
                          align: CrossAxisAlignment.center,
                          isColor: isColor,
                        ),
                        AppColumnTextLayout(
                          topText: ticket["number"].toString(),
                          bottomText: "Number",
                          align: CrossAxisAlignment.end,
                          isColor: isColor,
                        ),
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
