import 'package:flutter/material.dart';

import 'input_text.dart';

class stack1 extends StatelessWidget {
  const stack1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              child: Stack(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border:
                          Border.all(width: 4, color: Colors.amber),
                    ),
                    child: Center(
                      child: Container(
                        height: 8,
                        width: 8,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 33,
                    left: 39,
                    child: Container(
                      height: 3,
                      width: 55,
                      color: Colors.white,
                    ),
                  ),
                  Positioned(
                      top: 26,
                      left: 95,
                      child: inputText(text: 'Search', fontsize: 18))
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('assets/one.png'),
                            fit: BoxFit.cover)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage('assets/four.png'),
                                fit: BoxFit.cover)),
                      ),
                      Spacer(),
                      inputText(
                        text: 'List of\ntop sellers\nand buyer',
                        fontsize: 10,
                        color: Colors.amber,
                      ),
                      Spacer()
                    ],
                  ),
                  Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('assets/bigstar.png'),
                            fit: BoxFit.cover)),
                  ),
                ],
              )),
            ),
          ),
        ],
      ),
    );
  }
}
