import 'package:flutter/material.dart';
import 'package:rapido/config/string_config.dart';

import 'package:rapido/constant/app_images.dart';
import 'package:rapido/constant/font_size.dart';
import 'package:rapido/constant/margin_page.dart';

class WelcomePageOne extends StatelessWidget {
  WelcomePageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return
      SafeArea(
      child: Scaffold(
        body:
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Image.asset(AppImages.logo),
                const SizedBox(
                  height: 20,
                ),
                Text(StringConfig.introducing,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: AppFont.fontSize40)),
                const SizedBox(
                  height: 50,
                ),
                Image.asset(AppImages.delivary),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  StringConfig.packagdelivary,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: AppFont.fontSize40),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: padding40),
                  child: Text(
                    StringConfig.intro,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: AppFont.fontSize20),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

}

//pageview.builder
