import 'package:flutter/material.dart';

import '../component/input_text.dart';
import '../Splash_Screens/link_page.dart';

class tapButton extends StatelessWidget {
  const tapButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const LinkPage()));
      },
      child: Container(
        height: 45,
        width: 320,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: inputText(text: 'Sign in', fontsize: 18, color: Colors.black),
        ),
      ),
    );
  }
}
