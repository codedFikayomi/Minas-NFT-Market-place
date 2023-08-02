import 'package:flutter/material.dart';
import 'package:nft_app/component/input_text.dart';

class ThirdNft extends StatelessWidget {
  final String imagePath;
  final String text1, text2, text3;
  const ThirdNft(
      {super.key,
      required this.imagePath,
      required this.text1,
      required this.text2,
      required this.text3});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(children: [
          Container(
            margin: const EdgeInsets.only(top: 10, bottom: 10, right: 10),
            height: 160,
            width: 110,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: AssetImage(imagePath), fit: BoxFit.cover),
            ),
          ),
          Positioned(
            bottom: 15,
            right: 15,
            child: Container(
              height: 25,
              width: 25,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.amber),
                  shape: BoxShape.circle,
                  color: Colors.black38),
              child: Center(
                child: inputText(
                  text: 'Bid',
                  fontsize: 8,
                  color: Colors.amber,
                ),
              ),
            ),
          ),
          Positioned(
            top: 15,
            right: 19,
            child: Container(
              height: 25,
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
        ]),
        inputText(
          text: text1,
          fontsize: 15,
        ),
        inputText(
          text: text2,
          fontsize: 15,
          color: Colors.amber,
        ),
        inputText(
          text: '\$' + text3,
          fontsize: 15,
        )
      ],
    );
  }
}
