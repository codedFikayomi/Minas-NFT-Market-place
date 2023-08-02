import 'package:flutter/material.dart';

import '../widgets/seller_creator.dart';
class Row3 extends StatelessWidget {
  const Row3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SellerCreator(
          borderColor: Colors.white,
          textColor: Colors.black,
          color: Colors.amber,
          text: 'Sellers',
        ),
        Container(
          height: 50,
          width: 50,
          child: Center(
            child: Icon(
              Icons.star,
              size: 15,
              color: Colors.white,
            ),
          ),
        ),
        SellerCreator(
          borderColor: Colors.amber.shade700,
          textColor: Colors.white,
          color: Colors.amber.withOpacity(0.5),
          text: 'Creators',
        ),
      ],
    );
  }
}
