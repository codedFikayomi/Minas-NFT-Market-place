import 'package:flutter/material.dart';
import 'package:nft_app/component/input_text.dart';
import 'package:nft_app/widgets/trade_nft1.dart';

import '../component/profile_container.dart';
import '../widgets/drawer.dart';
import '../widgets/row_two.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.person_add, color: Colors.amber)),
        ],
      ),
      drawer: DrawerWidget(),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/back.png'), fit: BoxFit.cover),
          ),
          child: Padding(
            padding:
                const EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 132),
                Container(
                  height: 495,
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 2,
                        child: Container(
                          height: 380,
                          width: 320,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                            ),
                            color: Colors.amber.shade700.withOpacity(0.2),
                            border: Border.all(
                                width: 1, color: Colors.amber.shade700),
                          ),
                          child: profileContainer(),
                        ),
                      ),
                      Positioned(
                        right: 40,
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              color: Colors.amber, shape: BoxShape.circle),
                          child: Center(
                            child: Icon(Icons.settings_outlined),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 40,
                        left: 100,
                        child: Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 2, color: Colors.amber),
                            image: const DecorationImage(
                                image: AssetImage('assets/p.png'),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

