import 'package:flutter/material.dart';

import '../component/input_text.dart';

class AuctionRow extends StatelessWidget {
  const AuctionRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const EdgeInsets.only(
            bottom: 5,
            left: 5,
          ),
          height: 30,
          width: 35,
          decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(width: 1, color: Colors.white),
              boxShadow: [
                BoxShadow(
                  color: Colors.amber,
                  spreadRadius: 2,
                  blurRadius: 30,
                ),
              ]),
          child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.amber,
                size: 16,
              )),
        ),
        inputText(text: 'Live Auction', fontsize: 18, color: Colors.amber),
        const SizedBox(width: 20),
      ],
    );
  }
}
