

import 'package:flutter/material.dart';

import '../../../base/res/styles/app_styles.dart';

class ExpandedTextWidget extends StatefulWidget {
  const ExpandedTextWidget({super.key, required this.text});
  final String text;

  @override
  State<ExpandedTextWidget> createState() => _ExpandedTextWidgetState();
}

class _ExpandedTextWidgetState extends State<ExpandedTextWidget> {
  @override

  bool isExpanded = false;

  _toggleExpansion() {

    setState(() {
      isExpanded = !isExpanded;
    });

  }
  Widget build(BuildContext context) {


    var textWidget = Text(
        widget.text,
        maxLines: isExpanded ? null : 6,
        overflow:  isExpanded ?  TextOverflow.visible :  TextOverflow.ellipsis
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        textWidget,

        GestureDetector(
          onTap: () {
            _toggleExpansion();
          },
          child: Text(
            isExpanded ? "Less": "More",
            style: AppStyles.textStyle.copyWith(color: AppStyles.primaryColor),
          ),
        )
      ],
    );
  }
}