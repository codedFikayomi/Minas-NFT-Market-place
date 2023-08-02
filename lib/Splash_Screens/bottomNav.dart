import 'package:flutter/material.dart';
import 'package:nft_app/Major%20Sceens/feed.dart';
import 'package:nft_app/Major%20Sceens/home.dart';
import 'package:nft_app/Major%20Sceens/profile.dart';
import 'package:nft_app/component/input_text.dart';
import 'package:nft_app/widgets/main_bottomSheet.dart';

import '../Major Sceens/trade_page.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  var currentIndex = 0;

  final pages = [HomePage(), feed(), track(), profile()];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = HomePage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        onPressed: (() {
          showModalBottomSheet(
              barrierColor: Colors.black.withOpacity(0.9),
              backgroundColor: Colors.transparent,
              context: context,
              builder: (BuildContext context) => bottomSheet());
        }),
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/bigstar.png'), fit: BoxFit.cover),
            ),
          ),
        ),
        backgroundColor: Colors.amber.shade500,
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 10,
        color: Colors.black,
        shape: CircularNotchedRectangle(),
        notchMargin: 4,
        child: Container(
          height: 50,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = HomePage();
                        currentIndex = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home_filled,
                          color: currentIndex == 0
                              ? Colors.amber.shade700
                              : Colors.white,
                        ),
                        inputText(
                          text: 'Home',
                          fontsize: 10,
                          color: currentIndex == 0
                              ? Colors.amber.shade700
                              : Colors.white,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = feed();
                        currentIndex = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.new_releases_rounded,
                          color: currentIndex == 1
                              ? Colors.amber.shade700
                              : Colors.white,
                        ),
                        inputText(
                          text: 'feed',
                          fontsize: 10,
                          color: currentIndex == 1
                              ? Colors.amber.shade700
                              : Colors.white,
                        ),
                      ],
                    ),
                  ),
                ]),
                const SizedBox(width: 10),
                Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = track();
                        currentIndex = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.tire_repair_outlined,
                          color: currentIndex == 2
                              ? Colors.amber.shade700
                              : Colors.white,
                        ),
                        inputText(
                          text: 'Trade',
                          fontsize: 10,
                          color: currentIndex == 2
                              ? Colors.amber.shade700
                              : Colors.white,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = profile();
                        currentIndex = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person_sharp,
                          color: currentIndex == 3
                              ? Colors.amber.shade700
                              : Colors.white,
                        ),
                        inputText(
                          text: 'profile',
                          fontsize: 10,
                          color: currentIndex == 3
                              ? Colors.amber.shade700
                              : Colors.white,
                        ),
                      ],
                    ),
                  ),
                ]),
              ]),
        ),
      ),
    );
  }
}
