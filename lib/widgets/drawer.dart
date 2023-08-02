import 'package:flutter/material.dart';
import 'package:nft_app/component/input_text.dart';

Widget DrawerWidget() {
  return Drawer(
    backgroundColor: Colors.black,
    elevation: 100,
    child: ListView(children: [
      UserAccountsDrawerHeader(
        accountName: inputText(text: 'Fikayomi24658', fontsize: 20),
        accountEmail: Text('g9kate@gmail.com'),
        currentAccountPicture: CircleAvatar(
          foregroundImage: AssetImage('assets/p.png'),
        ),
        decoration: BoxDecoration(
          color: Colors.amber.shade900.withOpacity(0.5),
        ),
        otherAccountsPictures: [
          CircleAvatar(
            foregroundImage: AssetImage('assets/p.png'),
          ),
        ],
      ),
      ListTile(
          leading: Icon(Icons.home_filled, color: Colors.white),
          title: Text('Home', style: TextStyle(color: Colors.white)),
          onTap: () {}),
      ListTile(
          leading: Icon(Icons.new_releases_rounded, color: Colors.white),
          title: Text('Feed', style: TextStyle(color: Colors.white)),
          onTap: () {}),
      ListTile(
          leading: Icon(Icons.tire_repair_outlined, color: Colors.white),
          title: Text('Trade', style: TextStyle(color: Colors.white)),
          onTap: () {}),
      ListTile(
          leading: Icon(Icons.person_sharp, color: Colors.white),
          title: Text('Profile', style: TextStyle(color: Colors.white)),
          onTap: () {}),
      Padding(
        padding: const EdgeInsets.only(left: 15, top: 10, bottom: 10),
        child: inputText(text: 'Labels', fontsize: 15),
      ),
      ListTile(
          leading: Icon(Icons.info_sharp, color: Colors.white),
          title: Text('App Info', style: TextStyle(color: Colors.white))),
      ListTile(
          leading: Icon(Icons.change_circle, color: Colors.white),
          title:
              Text('Light/Dark Mode', style: TextStyle(color: Colors.white))),
      ListTile(
          leading: Icon(Icons.price_change, color: Colors.white),
          title:
              Text('Currency Change', style: TextStyle(color: Colors.white))),
    ]),
  );
}
