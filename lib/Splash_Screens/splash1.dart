import 'package:flutter/material.dart';
import 'package:nft_app/component/input_text.dart';

import '../component/star.dart';
import '../component/star_NFT.dart';
import '../component/text.dart';
import '../widgets/splash_top_row.dart';
import 'log_in.dart';

class FirstSplash extends StatefulWidget {
  const FirstSplash({super.key});

  @override
  State<FirstSplash> createState() => _FirstSplashState();
}

class _FirstSplashState extends State<FirstSplash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Splash_top_Row(),
                    const SizedBox(height: 35),
                    MyText(
                      text: "LET'S CREATE,SELL,\n AND OWN NFTS",
                      textColor: Colors.white,
                    ),
                    Spacer(),
                    Container(
                      height: 180,
                      width: 150,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage('assets/bigstar.png'),
                      )),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LogInPage()));
                      },
                      child: Container(
                        margin: const EdgeInsets.only(
                            left: 20, right: 20, bottom: 10),
                        height: 45,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Colors.amber.shade800,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: inputText(
                            text: 'Get Started',
                            fontsize: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
