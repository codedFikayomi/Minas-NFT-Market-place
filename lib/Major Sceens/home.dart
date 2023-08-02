// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:nft_app/component/input_text.dart';
import 'package:nft_app/component/star_NFT.dart';
import 'package:nft_app/component/text.dart';

import '../component/stack_one.dart';
import '../widgets/nft.dart';
import '../widgets/nft2.dart';
import '../widgets/row_two.dart';
import 'live_auctionPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
              const SizedBox(
                height: 20,
              ),
              const Text('Create, Sell\nand own\nNFTs',
                  style: TextStyle(
                      color: Colors.amber,
                      fontWeight: FontWeight.bold,
                      fontSize: 40)),
              const SizedBox(
                height: 10,
              ),
              const stack1(),
              const SizedBox(
                height: 5,
              ),
              inputText(text: 'Live Auction', fontsize: 45),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                width: MediaQuery.of(context).size.width,
                height: 280,
                // color: Colors.white,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LiveAuction(),
                                ));
                          },
                          child: FirstNft()),
                      const SecondNft()
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
