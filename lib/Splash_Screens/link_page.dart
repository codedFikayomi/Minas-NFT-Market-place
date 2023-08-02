import 'package:flutter/material.dart';
import 'package:nft_app/component/input_text.dart';
import 'package:nft_app/component/text.dart';
import 'package:nft_app/component/top_container.dart';
import '../widgets/coin_pic.dart';
import '../widgets/coin_widget.dart';

class LinkPage extends StatelessWidget {
  const LinkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding:
              const EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 20),
          child: SafeArea(
            child: Column(
              children: [
                topContainer(),
                const SizedBox(
                  height: 30,
                ),
                MyText(text: 'Connect your Wallet'),
                const SizedBox(
                  height: 30,
                ),
                inputText(
                    text: 'connect your wallet to buy and sell coins',
                    fontsize: 16),
                const SizedBox(
                  height: 30,
                ),
                coinWidget(
                  text1: 'Metamusk',
                  text2: 'Coinbase',
                  text3: 'Exodus',
                  imagepath1: 'assets/one.png',
                  imagepath2: 'assets/two.png',
                  imagepath3: 'assets/three.png',
                ),
                const SizedBox(
                  height: 10,
                ),
                coinWidget(
                  text1: 'Bluechip',
                  text2: 'Myether',
                  text3: 'Formatic',
                  imagepath1: 'assets/four.png',
                  imagepath2: 'assets/five.png',
                  imagepath3: 'assets/six.png',
                ),
                const SizedBox(
                  height: 10,
                ),
                coinWidget(
                  text1: 'Ledger',
                  text2: 'Mycellum',
                  text3: 'Minas',
                  imagepath1: 'assets/seven.png',
                  imagepath2: 'assets/eight.png',
                  imagepath3: 'assets/bigstar.png',
                ),
                const SizedBox(
                  height: 20,
                ),
                inputText(text: 'Minas NFT Market place App', fontsize: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
