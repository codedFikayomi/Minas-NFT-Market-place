import 'package:flutter/material.dart';

class inputText extends StatelessWidget {
  String text;
  double fontsize;
  Color? color;
  
  inputText({
    required this.text,
    required this.fontsize,
     this.color =Colors.white,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color:color , fontSize: fontsize, fontWeight: FontWeight.bold),
    );
  }
}
