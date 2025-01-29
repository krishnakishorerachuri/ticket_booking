import 'package:flutter/material.dart';

import '../res/styles/app_styles.dart';

class TextStyleThird extends StatelessWidget {
  final bool? isColor;
  const TextStyleThird({super.key, required this.text, this.isColor});
  final String text;

  @override
  Widget build(BuildContext context) {
    return  Text(text,
        style: isColor == null ? AppStyles.headlineStyle3
            .copyWith(color: Colors.white ) : AppStyles.headlineStyle3);
  }
}

