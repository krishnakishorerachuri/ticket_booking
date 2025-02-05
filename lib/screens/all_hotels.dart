import 'package:flutter/material.dart';
import 'package:ticket_booking/base/utils/app_json.dart';
import 'package:ticket_booking/screens/widgets/hotel_detail_view.dart';
import 'package:ticket_booking/screens/widgets/hotels.dart';

import '../base/res/styles/app_styles.dart';

class AllHotels extends StatelessWidget {
  const AllHotels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("All Hotels"),
          backgroundColor: AppStyles.bgColor,
        ),
        body: Container(
          margin: EdgeInsets.only(left: 8),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16.0,
                    mainAxisSpacing: 16.0,
                    childAspectRatio: 0.7),
                itemCount: hotelList.length,
                itemBuilder: (context, index) {
                  var singlehotel = hotelList[index];
                  return HotelsGridView(hotel: singlehotel, index : index);
                }),
          ),
        ));
  }
}

class HotelsGridView extends StatelessWidget {
  const HotelsGridView({super.key, required this.hotel, required this.index});
  final int index;
  final Map<String, dynamic> hotel;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        print("On Tap Hotel: Navigating to ${AppRoutes.hotelDetail} index $index");
        Navigator.pushNamed(context, AppRoutes.hotelDetail, arguments: {
          "index" :index
        });
      },
      child: Container(
        padding: const EdgeInsets.all(8.0),
        margin: EdgeInsets.only(right: 8.0),
        //width: size.width * 0.6,
        height: 350,
        decoration: BoxDecoration(
            color: AppStyles.primaryColor,
            borderRadius: BorderRadius.circular(18)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.2,
              child: Container(
                  // height: 180,
                  decoration: BoxDecoration(
                color: AppStyles.primaryColor,
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                    image: AssetImage("assets/images/${hotel["image"]}"),
                    fit: BoxFit.cover),
              )),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(hotel["place"],
                  style: AppStyles.headlineStyle2
                      .copyWith(color: AppStyles.kakicolor)),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(hotel["destination"],
                      style:
                          AppStyles.headlineStyle3.copyWith(color: Colors.white)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text("\$${hotel["price"]}/night",
                      style: AppStyles.headlineStyle4
                          .copyWith(color: AppStyles.kakicolor)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
