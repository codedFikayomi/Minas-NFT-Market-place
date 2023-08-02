import 'package:flutter/material.dart';

import '../component/star.dart';
import '../component/star_NFT.dart';

class Splash_top_Row extends StatelessWidget {
  const Splash_top_Row({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        topNFT(),
        Container(
            height: 30,
            width: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                starWidget(iconColor: Colors.grey),
                starWidget(
                  iconColor: Colors.white,
                ),
                starWidget(iconColor: Colors.grey)
              ],
            )),
        Container(
          height: 25,
          width: 50,
          decoration: BoxDecoration(
            color: Colors.amber[700],
            borderRadius: BorderRadius.circular(35),
          ),
          child: const Center(
            child: Text(
              'Help',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}
