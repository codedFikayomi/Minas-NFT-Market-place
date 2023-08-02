import 'package:flutter/material.dart';

import '../component/input_text.dart';

class SellerCreator extends StatelessWidget {
  final String text;
  Color color, borderColor, textColor;

  SellerCreator({
    required this.text,
    required this.color,
    required this.textColor,
    required this.borderColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38,
      width: 130,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(width: 2, color: borderColor),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
        child: inputText(
          text: 'Sellers',
          fontsize: 15,
          color: textColor,
        ),
      ),
    );
  }
}
