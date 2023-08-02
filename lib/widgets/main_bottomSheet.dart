import 'package:flutter/material.dart';
import 'package:nft_app/component/input_text.dart';

Widget bottomSheet() {
  return Container(
    margin: const EdgeInsets.all(20),
    height: double.maxFinite * 0.70,
    width: double.maxFinite,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: Colors.brown.shade400,
    ),
    child: Column(
      children: [
        Container(height: 3, width: 40, color: Colors.white),
        SizedBox(height: 10),
        inputText(text: 'NFT wallet', fontsize: 25),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          height: 150,
          width: double.maxFinite,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.brown,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              inputText(text: 'Available Balance', fontsize: 18),
              RichText(
                  text: const TextSpan(children: [
                TextSpan(
                    text: '9,870.05',
                    style: TextStyle(
                        color: Colors.amber,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
                TextSpan(
                    text: ' ETH',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15))
              ])),
              const Text('In USA',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15)),
              inputText(text: '46,789.25', fontsize: 18, color: Colors.amber),
              const Text('Convert with',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15)),
              inputText(text: 'Metamust', fontsize: 18, color: Colors.amber),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          height: 60,
          width: double.maxFinite,
          decoration: BoxDecoration(
              color: Colors.amber.shade500,
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/one.png'),
                        fit: BoxFit.cover)),
              ),
              inputText(
                text: 'Metamust',
                fontsize: 15,
                color: Colors.black,
              ),
              Container(
                height: 20,
                width: 80,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(width: 1, color: Colors.amber),
                ),
                child: Center(
                  child: inputText(
                    text: 'Selected',
                    fontsize: 12,
                    color: Colors.amber,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          height: 60,
          width: double.maxFinite,
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/six.png'),
                        fit: BoxFit.cover)),
              ),
              inputText(
                text: 'Formatic',
                fontsize: 15,
                color: Colors.amber,
              ),
              Container(
                height: 20,
                width: 80,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(width: 1, color: Colors.white),
                ),
                child: Center(
                  child: inputText(
                    text: 'unselected',
                    fontsize: 12,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}
