import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:nft_app/component/top_container.dart';

import '../component/form.dart';
import '../component/input_text.dart';
import '../component/text.dart';
import '../widgets/button_tap.dart';
import 'link_page.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 5),
          child: SafeArea(
            child: Center(
              child: Column(
                children: [
                  topContainer(),
                  const SizedBox(height: 25),
                  MyText(
                    text: 'Welcome Back to Nft\nMarket place',
                    fontsize: 35,
                  ),
                  const SizedBox(height: 35),
                  inputText(
                    text: 'Enter your details below',
                    fontsize: 15,
                  ),
                  const SizedBox(height: 25),
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        inputText(text: 'Username', fontsize: 16),
                        const SizedBox(
                          height: 2,
                        ),
                        form(
                          icon: Icons.mail_outline_outlined,
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        inputText(text: 'Password', fontsize: 16),
                        const SizedBox(
                          height: 2,
                        ),
                        form(
                          obsecurepass: !false,
                          icon: Icons.lock_outline_sharp,
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Row(
                          children: const [
                            Spacer(),
                            Text(
                              'Forgot Password',
                              style: TextStyle(
                                  color: Colors.amber,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 50),
                  tapButton(),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Spacer(),
                      inputText(
                        text: 'Dont have an account yet?',
                        fontsize: 15,
                      ),
                      inputText(
                        text: '  Sign up',
                        fontsize: 15,
                        color: Colors.amber,
                      ),
                      Spacer(),
                    ],
                  ),
                  const SizedBox(height: 60),
                  Container(
                    height: 45,
                    width: 350,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade700,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Spacer(),
                        Container(
                          height: 25,
                          width: 25,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/google.png'),
                                fit: BoxFit.cover),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        inputText(
                          text: 'Sign in with Google',
                          fontsize: 18,
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
