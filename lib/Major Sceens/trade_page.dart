import 'package:flutter/material.dart';

import '../component/input_text.dart';
import '../component/row3.dart';
import '../widgets/trade_nft1.dart';
import '../widgets/row_two.dart';
import '../widgets/seller_creator.dart';

class track extends StatelessWidget {
  const track({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const row_two(),
              const SizedBox(height: 20),
              inputText(text: 'List of top Sellers and\nCreator', fontsize: 30),
              const SizedBox(height: 15),
              Container(
                height: 40,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.amber.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(30)),
                child: Row3(),
              ),
              const SizedBox(height: 20),
              inputText(text: 'Europeana', fontsize: 25),
              const SizedBox(height: 5),
              inputText(
                text: '4.0 Eth',
                fontsize: 20,
                color: Colors.amber,
              ),
              const SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    tradeNft1(imagePath: 'assets/t1.png'),
                    tradeNft1(imagePath: 'assets/t2.png'),
                    tradeNft1(imagePath: 'assets/t3.png'),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              inputText(text: 'Stephan Valentina', fontsize: 25),
              const SizedBox(height: 5),
              inputText(
                text: '3.6 Eth',
                fontsize: 20,
                color: Colors.amber,
              ),
              const SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    tradeNft1(imagePath: 'assets/t4.png'),
                    tradeNft1(imagePath: 'assets/t5.png'),
                    tradeNft1(imagePath: 'assets/t6.png'),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              inputText(text: 'Victor Johnson', fontsize: 25),
              const SizedBox(height: 5),
              inputText(
                text: '3.2 Eth',
                fontsize: 20,
                color: Colors.amber,
              ),
              const SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    tradeNft1(imagePath: 'assets/t7.png'),
                    tradeNft1(imagePath: 'assets/t8.png'),
                    tradeNft1(imagePath: 'assets/t9.png'),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
