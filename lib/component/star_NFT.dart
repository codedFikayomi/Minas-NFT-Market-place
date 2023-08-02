import 'package:flutter/material.dart';

class topNFT extends StatelessWidget {
  const topNFT({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      height: 25,
      width: 50,
      child: const Image(
        fit: BoxFit.cover,
        image: AssetImage('assets/topstar.png'),
      ),
    );
  }
}
