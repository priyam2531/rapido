import 'package:flutter/material.dart';
import 'package:rapido/config/string_config.dart';
import 'package:rapido/constant/app_images.dart';
import 'package:rapido/constant/font_size.dart';
import 'package:rapido/constant/margin_page.dart';

class WelcomePageThree extends StatelessWidget {
  const WelcomePageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Center(child: Image.asset(AppImages.logo)),
          SizedBox(
            height: 15,
          ),
          Text(
            StringConfig.introducing,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: AppFont.fontSize40),
          ),
          SizedBox(
            height: 40,
          ),
          Image.asset(AppImages.ride),
          SizedBox(
            height: 30,
          ),
          Text(
            StringConfig.schedulearide,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: AppFont.fontSize40),
          ),SizedBox(height: 30,),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: padding40),
            child: Text(
              StringConfig.rideinadvance,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: AppFont.fontSize20),
            ),
          ),
        ],
      ),
    ));
  }
}
