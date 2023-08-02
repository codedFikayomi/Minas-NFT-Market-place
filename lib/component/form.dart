import 'package:flutter/material.dart';

class form extends StatelessWidget {
  final IconData icon;
  bool? obsecurepass;
  form({
    required this.icon,
    Key? key,
    this.obsecurepass = !true,
  }) : super(key: key);
  //final bool obsecure = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, right: 5, left: 10, bottom: 10),
      width: MediaQuery.of(context).size.width,
      height: 45,
      color: Colors.grey.shade700,
      child: Center(
        child: TextFormField(
          obscureText: obsecurepass!,
          style: TextStyle(color: Colors.white),
          cursorColor: Colors.white,
          cursorHeight: 20,
          decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(
                icon,
                size: 23,
                color: Colors.white,
              )),
        ),
      ),
    );
  }
}
