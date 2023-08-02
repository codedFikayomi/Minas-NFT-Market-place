import 'package:flutter/material.dart';
import 'package:nft_app/Splash_Screens/bottomNav.dart';
import 'package:nft_app/component/text.dart';
import '../Major Sceens/home.dart';
import '../Splash_Screens/metamust_page.dart';

import '../widgets/coin_pic.dart';
import 'input_text.dart';

class Button extends StatelessWidget {
  double size;
  String text;
  Color? color;
  Color textColor;
  double heightSize;
  double widthSize;
  Button(
      {required this.size,
      required this.text,
      required this.textColor,
      required this.heightSize,
      required this.widthSize,
      this.color = Colors.white,
      super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          barrierColor: Colors.black.withOpacity(0.8),
          backgroundColor: Colors.transparent,
          elevation: 5,
          context: context,
          builder: (BuildContext context) => Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            child: Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  color: Colors.blueGrey),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 10, bottom: 20, right: 25, left: 25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    coinPic(imagepath: 'assets/one.png', text: 'Metamusk'),
                    SizedBox(
                      height: 10,
                    ),
                    MyText(
                      text: 'Account connected succesfully ',
                      fontsize: 20,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    inputText(
                        text: 'we are happy to have you here', fontsize: 16),
                    SizedBox(
                      height: 5,
                    ),
                    inputText(
                        text: 'Enjoy all the benefits that comes with us',
                        fontsize: 18),
                    SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const BottomNav()));
                      },
                      child: Container(
                        height: 40,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(width: 2, color: Colors.white)),
                        child: Center(
                          child: inputText(text: 'Welcome', fontsize: 16),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
      child: Container(
        height: heightSize,
        width: widthSize,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(35),
        ),
        child: Center(
          child: inputText(text: text, fontsize: size, color: textColor),
        ),
      ),
    );
  }
}
