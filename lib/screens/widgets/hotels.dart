import 'package:flutter/material.dart';
import 'package:ticket_booking/base/res/styles/app_styles.dart';
import 'package:ticket_booking/base/res/styles/media.dart';

class Hotels extends StatelessWidget {
  const Hotels({super.key,  required this.hotel});
  final Map<String, dynamic> hotel;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(8.0),
      margin: EdgeInsets.only(right: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
              decoration: BoxDecoration(

            color: AppStyles.primaryColor,
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(image: AssetImage("assets/images/${hotel["image"]}"),
            fit: BoxFit.cover),
          )),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(hotel["place"],
              style: AppStyles.headlineStyle1.copyWith(color: AppStyles.kakicolor)
            ),
          ),

          SizedBox(height: 5,),

          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(hotel["destination"],
                style: AppStyles.headlineStyle3.copyWith(color: Colors.white)
            ),
          ),

          SizedBox(height: 5,),

          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text("\$${hotel["price"]}/night",
                style: AppStyles.headlineStyle1.copyWith(color: AppStyles.kakicolor)
            ),
          )
        ],
      ),
      width: size.width * 0.6,
      height: 350,
      decoration: BoxDecoration(
          color: AppStyles.primaryColor,
          borderRadius: BorderRadius.circular(18)),
    );
  }
}
