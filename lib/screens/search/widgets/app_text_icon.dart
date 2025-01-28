import 'package:flutter/material.dart';
import 'package:ticket_booking/base/res/styles/app_styles.dart';

class AppTextIcon extends StatelessWidget {
  const AppTextIcon({super.key, required this.text, required this.icon});
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.symmetric(vertical: 12, horizontal: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color:  Colors.white
      ),
      
      child: Row(

        children: [
          Icon(icon, color: AppStyles.planeColor,),
          const SizedBox(width: 10,),
          Text(text, style: AppStyles.textStyle,)
        ],
      ),
    );
  }
}
