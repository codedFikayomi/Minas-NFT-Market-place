import 'package:flutter/material.dart';
import 'coin_pic.dart';

class coinWidget extends StatelessWidget {
  String text1;
  String text2;
  String text3;
  String imagepath1;
  String imagepath2;
  String imagepath3;
   coinWidget({
    required this.text1,required this.text2,required this.text3,
    required this.imagepath1,required this.imagepath2,required this.imagepath3,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
      // color: Colors.white,
      height: 120,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          coinPic(text: text1, imagepath: imagepath1),
          coinPic(text: text2, imagepath: imagepath2),
          coinPic(text:text3, imagepath: imagepath3),
        ],
      ),
    );
  }
}
