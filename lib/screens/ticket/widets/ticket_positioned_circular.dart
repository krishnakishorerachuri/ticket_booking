

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../base/res/styles/app_styles.dart';

class TicketPositionedCircular extends StatelessWidget {
  final bool? position;
  const TicketPositionedCircular({super.key, this.position});

  @override
  Widget build(BuildContext context) {
    return  Positioned(
        left: position == true ? 25 : null,
        right:  position == true ? null : 25,
        top: 250,
        child: Container(
          padding: EdgeInsets.all(3),
          decoration: BoxDecoration(
            shape: BoxShape.circle, border: Border.all(width: 2),
          ),
          child: CircleAvatar(
            maxRadius: 4,
            backgroundColor: AppStyles.textColor,
          ),
        ));
  }
}
