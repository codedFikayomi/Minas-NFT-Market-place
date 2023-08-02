import 'package:flutter/material.dart';
import 'package:nft_app/component/input_text.dart';
import 'package:nft_app/utils/Auction1.dart';

import '../utils/AuctionRow.dart';
import '../utils/info.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 480,
            decoration: BoxDecoration(
                color: Colors.amber.shade800.withOpacity(0.4),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 350,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/nft1.png'),
                            fit: BoxFit.fill)),
                  ),
                ),
                Positioned(
                  right: 10,
                  bottom: 150,
                  child: Container(
                    child: Column(
                      children: [
                        NftInfo(Icons.share),
                        NftInfo(Icons.notifications_active),
                        NftInfo(Icons.cached_rounded)
                      ],
                    ),
                  ),
                ),
                Positioned(
                    bottom: 5,
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 15, right: 15, top: 10, bottom: 2),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                inputText(
                                    text: 'Monalisa Griddle',
                                    fontsize: 22,
                                    color: Colors.amber),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                  ),
                                  height: 25,
                                  width: 170,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Row(children: [
                                    Icon(
                                      Icons.swap_horiz,
                                      color: Colors.white,
                                    ),
                                    inputText(
                                        text: 'Minas Ambassador', fontsize: 15)
                                  ]),
                                ),
                                inputText(
                                    text: 'Artwork Information',
                                    fontsize: 15,
                                    color: Colors.amber),
                                inputText(
                                    text:
                                        'Infinite@feeling\n7480 X4840\nnade in figma\nthe collector received and have\ncopyright',
                                    fontsize: 12),
                              ],
                            ),
                            const SizedBox(width: 100),
                            const CircleAvatar(
                                radius: 30,
                                foregroundImage: AssetImage('assets/one.png')),
                          ],
                        ),
                      ),
                    ))
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.amber.shade800.withOpacity(0.4),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      inputText(text: 'Current Bid', fontsize: 18),
                      inputText(
                          text: '1.32 ETH', fontsize: 18, color: Colors.amber),
                      inputText(text: '\$3284.15', fontsize: 18),
                    ],
                  ),
                  const SizedBox(width: 200),
                  const CircleAvatar(
                      radius: 20,
                      foregroundImage: AssetImage('assets/one.png')),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.amber.shade800.withOpacity(0.4),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  inputText(text: 'Actiivites', fontsize: 18),
                  inputText(
                      text: 'Total bids recieved over 12 Eth', fontsize: 16),
                  Row(
                    children: [
                      inputText(text: 'Wallet address: ', fontsize: 18),
                      inputText(
                        text: 'hn4784fmlkt904r88r322',
                        fontsize: 14,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.amber.shade800.withOpacity(0.4),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    inputText(text: 'Metamusk', fontsize: 18),
                    Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 2, color: Colors.amber),
                      ),
                      child: Center(
                        child: inputText(
                          text: 'Selected',
                          fontsize: 13,
                          color: Colors.amber,
                        ),
                      ),
                    ),
                  ]),
            ),
          )
        ]),
      ),
    );
  }
}
