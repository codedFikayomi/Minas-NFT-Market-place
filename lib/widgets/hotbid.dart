import 'package:flutter/material.dart';

import '../component/input_text.dart';

class hotbid extends StatelessWidget {
  final String text1, text2, text3, imagePath;
  hotbid({
    required this.text1,
    required this.text2,
    required this.text3,
    required this.imagePath,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15, left: 10),
      height: 270,
      width: 190,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.brown),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 175,
                width: 190,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(width: 2, color: Colors.amber),
                    image: DecorationImage(
                        image: AssetImage(imagePath), fit: BoxFit.cover)),
              ),
              Positioned(
                top: 8,
                right: 8,
                child: Container(
                  height: 30,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(width: 2, color: Colors.amber),
                  ),
                  child: Center(
                    child: inputText(
                      text: 'Place a bid',
                      fontsize: 13,
                      color: Colors.amber,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                inputText(
                  text: text1,
                  fontsize: 14,
                ),
                const SizedBox(
                  height: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: text2,
                          style: const TextStyle(
                              color: Colors.amber, fontWeight: FontWeight.bold),
                        ),
                        const TextSpan(
                          text: ' Eth',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ]),
                    ),
                    inputText(text: '\$' + text3, fontsize: 15),
                  ],
                ),
                Container(
                  height: 30,
                  width: 100,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 35,
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage('assets/ff2.png'),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage('assets/ff3.png'),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage('assets/ff1.png'),
                                fit: BoxFit.cover)),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    inputText(text: 'Complete set', fontsize: 15),
                    Container(
                      height: 20,
                      width: 70,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(width: 1.5, color: Colors.white),
                      ),
                      child: Center(
                          child: inputText(
                        text: 'Place a bid',
                        fontsize: 10,
                        color: Colors.amber,
                      )),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
