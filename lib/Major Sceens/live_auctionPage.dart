import 'package:flutter/material.dart';
import 'package:nft_app/component/input_text.dart';
import 'package:nft_app/utils/info.dart';

import '../utils/Auction1.dart';
import '../utils/AuctionRow.dart';
import '../utils/nft3.dart';
import 'detailPage.dart';

class LiveAuction extends StatelessWidget {
  const LiveAuction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  AuctionRow(),
                  const SizedBox(height: 20),
                  inputText(text: 'Live Auctions', fontsize: 22),
                  const SizedBox(height: 20),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 560,
                    decoration: BoxDecoration(
                        color: Colors.brown.shade800.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 325,
                          decoration: BoxDecoration(
                            color: Colors.brown.shade300.withOpacity(0.4),
                            border: Border.all(
                                width: 2, color: Colors.amber.shade700),
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                          ),
                          child: Column(
                            children: [
                              AuctionFirstWidget(),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 15, right: 15),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(height: 5),
                                        inputText(
                                            text: 'Current Bid', fontsize: 25),
                                        inputText(
                                            text: '1.32 ETH',
                                            fontsize: 20,
                                            color: Colors.amber),
                                        inputText(
                                            text: '\$3284.15', fontsize: 20),
                                        const SizedBox(height: 5),
                                        Container(
                                          height: 30,
                                          width: 100,
                                          decoration: BoxDecoration(
                                            color: Colors.amber.shade700,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(
                                                width: 2, color: Colors.black),
                                          ),
                                          child: Center(
                                            child: inputText(
                                              text: 'Place a bid',
                                              fontsize: 13,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 5)
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(height: 5),
                                        inputText(
                                            text: 'Auction ending date',
                                            fontsize: 18),
                                        const SizedBox(height: 5),
                                        inputText(
                                            text: '23 . 34 . 12',
                                            fontsize: 15,
                                            color: Colors.amber),
                                        inputText(
                                            text: 'hr   min   sec',
                                            fontsize: 15),
                                        const SizedBox(height: 10),
                                        InkWell(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      const DetailPage(),
                                                ));
                                          },
                                          child: Container(
                                            height: 30,
                                            width: 150,
                                            decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                  width: 2,
                                                  color: Colors.amber),
                                            ),
                                            child: Center(
                                              child: inputText(
                                                text: 'View Artwork',
                                                fontsize: 13,
                                                color: Colors.amber,
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 5)
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: const [
                                ThirdNft(
                                    imagePath: 'assets/t9.png',
                                    text1: 'Amitahb',
                                    text2: '0.96 ETH',
                                    text3: '284.15'),
                                ThirdNft(
                                    imagePath: 'assets/t5.png',
                                    text1: 'Gallant Monkey',
                                    text2: '1.32 ETH',
                                    text3: '3284.15'),
                                ThirdNft(
                                    imagePath: 'assets/p4.png',
                                    text1: 'Barch Mask',
                                    text2: '1.32 ETH',
                                    text3: '3284.15'),
                                ThirdNft(
                                    imagePath: 'assets/p5.png',
                                    text1: 'Hag Bull',
                                    text2: '1.32 ETH',
                                    text3: '3284.15')
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
