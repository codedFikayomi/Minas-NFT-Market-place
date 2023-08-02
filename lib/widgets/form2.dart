import 'package:flutter/material.dart';

import '../component/form.dart';
import '../component/input_text.dart';

class Form2 extends StatelessWidget {
  String text;
  IconData icon;
   Form2({required this.text, required this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          inputText(text: text, fontsize: 16),
          const SizedBox(
            height: 10,
          ),
          form(
            icon: icon,
          ),
        ],
      ),
    );
  }
}
