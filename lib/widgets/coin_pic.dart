import 'package:flutter/material.dart';

import '../Splash_Screens/metamust_page.dart';

class coinPic extends StatelessWidget {
 String imagepath;
  String text;
  Color? color;
  double? fontsize;
  coinPic({
    required this.imagepath,
    required this.text,
    this.color= Colors.white,
    this.fontsize= 16,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: (){
            Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Metamusk()));
          },
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage(imagepath), fit: BoxFit.cover),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          text,
          style: TextStyle(
              color: color, fontSize: fontsize, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
