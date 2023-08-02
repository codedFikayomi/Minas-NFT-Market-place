import 'package:flutter/material.dart';


class topContainer extends StatelessWidget {
  const topContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        width: 40,
        child: const Image(
          image: AssetImage('assets/round.png'),
        ),
      );
  }
}
