import 'package:flutter/material.dart';

import '../widgets/trade_nft1.dart';
import 'input_text.dart';

class profileContainer extends StatelessWidget {
  const profileContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        inputText(text: 'Allan Alice', fontsize: 18),
        const SizedBox(height: 5),
        inputText(
          text: 'bjghtf64ujg9679hy865fftjh7dad',
          fontsize: 18,
          color: Colors.amber,
        ),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment:
              MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(width: 10),
            Container(
              width: 80,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                    width: 2, color: Colors.white),
              ),
              child: Center(
                child:
                    inputText(text: 'Edit', fontsize: 15),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                    width: 2, color: Colors.amber),
              ),
              child: const Center(
                child: Icon(
                  Icons.logout_outlined,
                  size: 18,
                  color: Colors.amber,
                ),
              ),
            ),
            Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                    width: 2, color: Colors.amber),
              ),
              child: const Center(
                child: Icon(
                  Icons.more_horiz,
                  color: Colors.amber,
                ),
              ),
            ),
            const SizedBox(width: 5),
          ],
        ),
        const SizedBox(height: 15),
        Column(
          children: [
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(width: 2),
                inputText(
                    text: 'Top Sales', fontsize: 20),
                const SizedBox(width: 2),
                Icon(Icons.arrow_drop_down,
                    color: Colors.white),
                const SizedBox(width: 2),
              ],
            ),
            const SizedBox(height: 2),
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(width: 2),
                inputText(
                    text: '25 Top sales',
                    fontsize: 14,
                    color: Colors.amber),
                const SizedBox(width: 2),
                inputText(
                  text: 'see all',
                  fontsize: 14,
                  color: Colors.amber,
                ),
                const SizedBox(width: 2),
              ],
            ),
          ],
        ),
        const SizedBox(height: 10),
        Container(
          padding: const EdgeInsets.only(left: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              tradeNft1(
                  imagePath: 'assets/p1.png',
                  width: 80,
                  height: 80),
              tradeNft1(
                  imagePath: 'assets/p2.png',
                  width: 80,
                  height: 80),
              tradeNft1(
                  imagePath: 'assets/p3.png',
                  width: 80,
                  height: 80),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Container(
          padding: const EdgeInsets.only(left: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              tradeNft1(
                  imagePath: 'assets/p4.png',
                  width: 80,
                  height: 80),
              tradeNft1(
                  imagePath: 'assets/p5.png',
                  width: 80,
                  height: 80),
              tradeNft1(
                  imagePath: 'assets/p6.png',
                  width: 80,
                  height: 80),
            ],
          ),
        ),
      ],
    );
  }
}
