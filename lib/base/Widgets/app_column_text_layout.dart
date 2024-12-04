import 'package:flutter/material.dart';
import 'package:ticket_app/base/Widgets/text_style_fourth.dart';
import 'package:ticket_app/base/Widgets/text_style_third.dart';

class AppColumnTextLayout extends StatelessWidget {
  final String topText;
  final String bottomText;
  final CrossAxisAlignment align;
  final bool? isColor;
  const AppColumnTextLayout(
      {super.key,
      required this.topText,
      required this.bottomText,
      this.align = CrossAxisAlignment.end,
      this.isColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: align,
      children: [
        TextStyleThird(
          text: topText,
          isColor: isColor,
        ),
        const SizedBox(
          height: 5,
        ),
        TextStyleFourth(
          text: bottomText,
          align: TextAlign.start,
          isColor: isColor,
        ),
      ],
    );
  }
}
