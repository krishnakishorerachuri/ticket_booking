import 'package:flutter/material.dart';

import '../res/styles/app_styles.dart';

class TextStyleThird extends StatelessWidget {
  const TextStyleThird({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return  Text(text,
        style: AppStyles.headlineStyle3
            .copyWith(color: Colors.white));
  }
}

