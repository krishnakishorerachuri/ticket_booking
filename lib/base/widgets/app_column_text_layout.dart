import 'package:flutter/cupertino.dart';
import 'package:ticket_booking/base/widgets/text_style_third.dart';

class AppColumnTextLayout extends StatelessWidget {
  const AppColumnTextLayout(
      {super.key,
      required this.topText,
      required this.bottomText,
      this.align = CrossAxisAlignment.start});
  final String topText;
  final String bottomText;
  final CrossAxisAlignment align;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: align,
      children: [
        TextStyleThird(text: topText),
        const SizedBox(
          height: 5,
        ),
        TextStyleThird(text: bottomText),
      ],
    );
  }
}
