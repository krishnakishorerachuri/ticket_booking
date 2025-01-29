import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:ticket_booking/base/res/styles/app_styles.dart';
import 'package:ticket_booking/base/utils/app_json.dart';
import 'package:ticket_booking/base/widgets/applayout_builder.dart';
import 'package:ticket_booking/base/widgets/ticket_view.dart';
import 'package:ticket_booking/screens/ticket/widets/ticket_positioned_circular.dart';

import '../../base/res/styles/media.dart';
import '../../base/widgets/app_column_text_layout.dart';
import '../search/widgets/app_tickets_tabs.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            children: [
              const SizedBox(
                height: 40,
              ),
              Text(
                "Tickets",
                style: AppStyles.headlineStyle1,
              ),
              const SizedBox(
                height: 20,
              ),
              const AppTicketTabs(
                firstTabText: "Upcoming",
                secondTabText: "Previous",
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.only(left: 16),
                child: TicketView(
                  ticket: ticketList[0],
                  isColor: true,
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                color: AppStyles.ticketColor,
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnTextLayout(
                          topText: "Flutter DB",
                          bottomText: "Passenger",
                          align: CrossAxisAlignment.center,
                          isColor: true,
                        ),
                        AppColumnTextLayout(
                          topText: "5222 136657",
                          bottomText: "Passport",
                          align: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const AppLayoutBuilderWidget(
                      randomDivider: 15,
                      width: 5,
                      isColor: true,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnTextLayout(
                          topText: "2344 4444442456",
                          bottomText: "Number of E-ticket",
                          align: CrossAxisAlignment.start,
                          isColor: true,
                        ),
                        AppColumnTextLayout(
                          topText: "B12456",
                          bottomText: "Booking code",
                          align: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const AppLayoutBuilderWidget(
                      randomDivider: 15,
                      width: 5,
                      isColor: true,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  AppMedia.visaImage,
                                  scale: 11,
                                ),
                                Text(
                                  " *** 2462",
                                  style: AppStyles.headlineStyle3,
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text("Payment Method",
                                style: AppStyles.headlineStyle4)
                          ],
                        ),
                        const AppColumnTextLayout(
                          topText: "\$299.99",
                          bottomText: "Price",
                          align: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                margin: EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                    color: AppStyles.ticketColor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(21),
                        bottomRight: Radius.circular(21))),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: BarcodeWidget(
                      height: 70,
                      data: "https://www.dbestech.com",
                      barcode: Barcode.code128(),
                      drawText: false,
                      color: AppStyles.textColor,
                      width: double.infinity,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.only(left: 16),
                child: TicketView(
                  ticket: ticketList[0],
                ),
              ),
            ],
          ),
          TicketPositionedCircular(position: true),
          TicketPositionedCircular(),
        ],
      ),
    );
  }
}
