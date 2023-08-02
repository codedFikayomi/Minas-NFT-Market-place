import 'package:flutter/material.dart';

import '../component/input_text.dart';
import '../widgets/explore.dart';
import '../widgets/hotbid.dart';
import '../widgets/row_two.dart';

class feed extends StatefulWidget {
  const feed({super.key});

  @override
  State<feed> createState() => _feedState();
}

class _feedState extends State<feed> {
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
              height: 10,
            ),
            inputText(text: 'Hot Bids', fontsize: 30),
            const SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  hotbid(
                    imagePath: 'assets/f1.png',
                    text1: 'Monkey Tale',
                    text2: '2.0',
                    text3: '2532.01',
                  ),
                  hotbid(
                    imagePath: 'assets/f2.png',
                    text1: 'Astronult Fly',
                    text2: '1.2',
                    text3: '1021.07',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            inputText(text: 'Explore', fontsize: 20),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 30,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.amber.shade600,
                border: Border.all(width: 2, color: Colors.white),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    inputText(text: 'All Categories', fontsize: 18),
                    const Icon(
                      Icons.arrow_drop_down,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ExplorePic(
                    imagePath: 'assets/f4.png',
                  ),
                  ExplorePic(
                    imagePath: 'assets/f5.png',
                  ),
                  ExplorePic(
                    imagePath: 'assets/f3.png',
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
