import 'package:flutter/material.dart';

Widget NftInfo(Icondata) {
  return Container(
    height: 40,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
    ),
    child: Center(
        child: Icon(
      Icondata,
      color: Colors.amber,
    )),
  );
}
