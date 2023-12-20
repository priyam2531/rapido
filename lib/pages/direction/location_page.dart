import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rapido/constant/app_images.dart';
import 'package:rapido/pages/welcome/welcome_page_one.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => WelcomePageOne(),
        ),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(AppImages.logo),
            ),
            const SizedBox(height: 60),
            Image.asset(AppImages.taxi)
          ],
        ),
      ),
    );
  }
}
