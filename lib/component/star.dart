import 'package:flutter/material.dart';

class starWidget extends StatelessWidget {
  Color iconColor;

  starWidget({
    Key? key,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.star,
      color: iconColor,
      size: 15,
    );
  }
}
