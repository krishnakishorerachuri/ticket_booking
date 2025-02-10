import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ticket_booking/base/res/styles/app_styles.dart';
import 'package:ticket_booking/base/res/styles/media.dart';
import 'package:ticket_booking/base/widgets/app_column_text_layout.dart';
import 'package:ticket_booking/base/widgets/text_style_third.dart';

import '../../base/widgets/heading_text.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const Padding(padding: EdgeInsets.only(top: 40)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Shows logo
              Container(
                width: 86,
                height: 86,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(image: AssetImage(AppMedia.logo))),
              ),
              SizedBox(
                width: 10,
              ),
              // Shows Column

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const HeadingText(
                    text: "Book Tickets",
                    isColor: false,
                  ),
                  Text("New-York",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade500)),
                  const SizedBox(height: 8),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 3, vertical: 3),
                    decoration: BoxDecoration(
                        color: AppStyles.profileLocationColor,
                        borderRadius: BorderRadius.circular(100)),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppStyles.profileTextColor,
                          ),
                          child: const Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Premium Status",
                          style: TextStyle(
                              color: AppStyles.profileTextColor,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Expanded(child: Container()),
              Text("Edit",
                  style: TextStyle(
                      color: AppStyles.primaryColor,
                      fontWeight: FontWeight.w300))
            ],
          ),

          const SizedBox(
            height: 8,
          ),
          // divider
          Divider(color: Colors.grey.shade300),
          // Show the card
          Stack(
            children: [
              Container(
                height: 90,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppStyles.primaryColor,
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                child: Row(
                  children: [
                    CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: AppStyles.primaryColor,
                        size: 27,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextStyleThird(text: " You\`v got a new thread"),
                        TextStyleThird(text: "You have 95 flights in a year"),
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                  top: -45,
                  right: -45,
                  child: Container(
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border:
                            Border.all(width: 18, color: Color(0xFF264CD2))),
                  ))
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            "Accumulated miles",
            style: AppStyles.headlineStyle2,
          ),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: AppStyles.bgColor),
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "189834",
                  style: TextStyle(
                      fontSize: 45,
                      color: AppStyles.textColor,
                      fontWeight: FontWeight.w600),
                ),

                // Row text
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Miles accured",
                      style: AppStyles.headlineStyle4.copyWith(fontSize: 16),
                    ),
                    Text(
                      "16th July",
                      style: AppStyles.headlineStyle4.copyWith(fontSize: 16),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 4,
                ),
                Divider(
                  color: Colors.grey.shade300,
                ),
                const SizedBox(
                  height: 4,
                ),
                // Row -> Column

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnTextLayout(
                      topText: "23 042",
                      bottomText: "Miles",
                      isColor: true,
                      align: CrossAxisAlignment.start,
                    ),
                    AppColumnTextLayout(
                      topText: "Airline CO",
                      bottomText: "Received from",
                      isColor: true,
                      align: CrossAxisAlignment.end,
                    ),
                  ],
                ),
                Divider(
                  color: Colors.grey.shade300,
                ),
                const SizedBox(
                  height: 4,
                ),
                // Row -> Column

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnTextLayout(
                      topText: "23 042",
                      bottomText: "Miles",
                      isColor: true,
                      align: CrossAxisAlignment.start,
                    ),
                    AppColumnTextLayout(
                      bottomText: "Received from",
                      topText: "McDonal\`s",
                      isColor: true,
                      align: CrossAxisAlignment.end,
                    ),
                  ],
                ),


                Divider(
                  color: Colors.grey.shade300,
                ),
                const SizedBox(
                  height: 4,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnTextLayout(
                      topText: "52 042",
                      bottomText: "Miles",
                      isColor: true,
                      align: CrossAxisAlignment.start,
                    ),
                    AppColumnTextLayout(
                      bottomText: "Received from",
                      topText: "DBestech",
                      isColor: true,
                      align: CrossAxisAlignment.end,
                    ),
                  ],
                ),
                // text
                const SizedBox(
                  height: 25,
                ),

                InkWell(
                  onTap: () {

                  },
                    child: Text("How to get more miles", style: AppStyles.textStyle.copyWith(color: AppStyles.primaryColor, fontWeight: FontWeight.w500)))
              ],
            ),
          )
        ],
      ),
    );
  }
}
