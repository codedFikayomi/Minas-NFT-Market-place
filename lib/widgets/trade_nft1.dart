import 'package:flutter/material.dart';

class tradeNft1 extends StatelessWidget {
  final String imagePath;
  final double? width,height;
  
  const tradeNft1({
    required this.imagePath,this.width=120,this.height=100,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15),
      height: height,
      width: width,
      decoration: BoxDecoration(
          border: Border.all(width: 2, color: Colors.amber),
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          image:
              DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover)),
    );
  }
}
