import 'package:flutter/material.dart';

import '../component/input_text.dart';
import 'info.dart';

class AuctionFirstWidget extends StatelessWidget {
  const AuctionFirstWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 210,
      decoration: BoxDecoration(
          border: Border.all(
              width: 1, color: Colors.amber.shade700),
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10)),
          image: const DecorationImage(
              image: AssetImage('assets/nft1.png'),
              fit: BoxFit.fill)),
      child: Stack(children: [
        Positioned(
          top: 5,
          left: 10,
          child: Column(
              mainAxisAlignment:
                  MainAxisAlignment.spaceAround,
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [
                Container(
                  height: 35,
                  width: 35,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.amber),
                  child: Center(
                    child: inputText(
                      text: 'Arts',
                      fontsize: 12,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 100),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  height: 25,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius:
                          BorderRadius.circular(10)),
                  child: Row(children: [
                    Icon(
                      Icons.swap_horiz,
                      color: Colors.white,
                    ),
                    inputText(
                        text: 'Pancake Swap',
                        fontsize: 10)
                  ]),
                ),
                inputText(
                    text: 'Monalisa\nGriddle',
                    fontsize: 22)
              ]),
        ),
        Positioned(
            right: 10,
            bottom: 10,
            child: Container(
              child: Column(
                children: [
                  NftInfo(Icons.share),
                  NftInfo(Icons.notifications_active),
                  NftInfo(Icons.cached_rounded)
                ],
              ),
            ),),
      ]),
    );
  }
}
