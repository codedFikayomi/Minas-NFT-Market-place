import 'package:flutter/material.dart';

import '../component/input_text.dart';

class ExplorePic extends StatelessWidget {
  final String imagePath;
  ExplorePic({
    required this.imagePath,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      height: 160,
      width: 120,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 5,
            right: 5,
            child: Container(
              height: 20,
              width: 80,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(width: 1, color: Colors.amber),
              ),
              child: Center(
                child: inputText(
                  text: 'Place a bid',
                  fontsize: 11,
                  color: Colors.amber,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
