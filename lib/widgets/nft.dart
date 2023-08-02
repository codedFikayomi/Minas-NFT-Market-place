import 'package:flutter/material.dart';

import '../component/input_text.dart';

class FirstNft extends StatelessWidget {
  // double height, width;
  // String imagePath;
  FirstNft({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            height: 200,
            width: 170,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              image: const DecorationImage(
                  image: AssetImage('assets/nft1.png'), fit: BoxFit.cover),
            ),
          ),
          Positioned(
            top: 10,
            right: 20,
            child: Container(
              height: 35,
              width: 25,
              decoration:
                  BoxDecoration(color: Colors.white54, shape: BoxShape.circle),
              child: Center(
                child: Container(
                  height: 15,
                  width: 15,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                    image: DecorationImage(
                        image: AssetImage('assets/round.png'),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            right: 20,
            child: Container(
              height: 30,
              width: 30,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.amber),
                  shape: BoxShape.circle,
                  color: Colors.black38),
              child: Center(
                child: inputText(
                  text: 'Bid',
                  fontsize: 12,
                  color: Colors.amber,
                ),
              ),
            ),
          ),
        ]),
        const SizedBox(
          height: 5,
        ),
        inputText(
          text: 'Monalisa Griddle',
          fontsize: 15,
        ),
        inputText(
          text: '1.32 ETH',
          fontsize: 15,
          color: Colors.amber,
        ),
        inputText(
          text: '\$2,405.01',
          fontsize: 15,
        )
      ],
    );
  }
}
