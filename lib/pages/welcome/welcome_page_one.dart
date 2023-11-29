import 'package:flutter/material.dart';
import 'package:rapido/constant/app_images.dart';

class WelcomePageOne extends StatelessWidget {
  const WelcomePageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(children: [Center(child: Image.asset(AppImages.logo))]),
    ));
  }
}

//pageview.builder
