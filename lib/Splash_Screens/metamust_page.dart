import 'package:flutter/material.dart';
import 'package:nft_app/component/bottom_sheet_container.dart';
import 'package:nft_app/widgets/coin_pic.dart';

//import '../component/form.dart';
import '../component/input_text.dart';
import '../component/text.dart';
import '../component/top_container.dart';
import '../widgets/form2.dart';

class Metamusk extends StatelessWidget {
  const Metamusk({super.key});

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
                height: 40,
              ),
              MyText(text: 'Connecting your Acoount'),
              const SizedBox(height: 4),
              MyText(text: 'with Metamusk?'),
              const SizedBox(
                height: 30,
              ),
              inputText(
                  text: 'connect your wallet to buy and sell coins',
                  fontsize: 18),
              const SizedBox(
                height: 60,
              ),
              coinPic(imagepath: 'assets/one.png', text: 'Metamusk'),
              const SizedBox(
                height: 20,
              ),
              Form2(
                text: 'User ID',
                icon: Icons.person_outline_outlined,
              ),
              const SizedBox(
                height: 20,
              ),
              Form2(
                text: 'Wallet Address',
                icon: Icons.verified_outlined,
              ),
              const SizedBox(
                height: 50,
              ),
              Button(
                heightSize: 45,
                widthSize: 300,
                text: 'Connect',
                size: 18,
                textColor: Colors.black,
                color: Colors.amber,
              )
            ],
          )),
        ),
      ),
    );
  }
}
