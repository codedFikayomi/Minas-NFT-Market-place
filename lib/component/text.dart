import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  String text;
  Color? textColor;
  double? fontsize;
  

  MyText(
      {Key? key,
      required this.text,
      this.textColor = Colors.amber,
      this.fontsize = 30,
      });
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
          color: textColor, fontWeight: FontWeight.bold, fontSize: fontsize),
    );
  }
}
