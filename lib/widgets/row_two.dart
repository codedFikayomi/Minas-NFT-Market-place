import 'package:flutter/material.dart';

import '../component/star_NFT.dart';

class row_two extends StatelessWidget {
  const row_two({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        topNFT(),
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
              color: Colors.grey.shade700, shape: BoxShape.circle),
          child: const Padding(
            padding: EdgeInsets.all(5),
            child: Icon(
              Icons.notification_important_outlined,
              color: Colors.amber,
              size: 16,
            ),
          ),
        ),
        Container(
          height: 30,
          width: 100,
          decoration: BoxDecoration(
              color: Colors.grey.shade700,
              borderRadius: BorderRadius.circular(30)),
          child: Padding(
              padding: EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Icon(
                    Icons.balance_outlined,
                    color: Colors.amber,
                    size: 20,
                  ),
                  Text.rich(TextSpan(
                      text: '6.880',
                      style: TextStyle(
                          color: Colors.amber, fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                            text: ' ETH',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold))
                      ]))
                ],
              )),
        )
      ],
    );
  }
}
