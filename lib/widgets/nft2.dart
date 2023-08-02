import 'package:flutter/material.dart';
import 'package:nft_app/component/input_text.dart';

class SecondNft extends StatelessWidget {
  const SecondNft({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          children: [
            Container(
              width: 100,
              height: 10,
            ),
            Column(
              children: [
                inputText(
                  text: 'See all',
                  fontsize: 15,
                ),
                Icon(
                  Icons.arrow_drop_down_outlined,
                  color: Colors.amber,
                  size: 30,
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(children: [
              Container(
                height: 150,
                width: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  image: const DecorationImage(
                      image: AssetImage('assets/nft2.png'), fit: BoxFit.cover),
                ),
              ),
              Positioned(
                bottom: 10,
                right: 10,
                child: Container(
                  height: 25,
                  width: 25,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.amber),
                      shape: BoxShape.circle,
                      color: Colors.black38),
                  child: Center(
                    child: inputText(
                      text: 'Bid',
                      fontsize: 8,
                      color: Colors.amber,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                      color: Colors.white54, shape: BoxShape.circle),
                  child: Center(
                    child: Container(
                      height: 15,
                      width: 15,
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black,
                        image: DecorationImage(
                            image: AssetImage('assets/round.png'),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                ),
              ),
            ]),
            const SizedBox(
              height: 5,
            ),
            inputText(
              text: 'Babylone Cale',
              fontsize: 10,
            ),
            inputText(
              text: '0.72 ETH',
              fontsize: 10,
              color: Colors.amber,
            ),
            inputText(
              text: '\$8405.01',
              fontsize: 10,
            )
          ],
        )
      ],
    );
  }
}
