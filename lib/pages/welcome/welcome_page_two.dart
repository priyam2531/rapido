import 'package:flutter/material.dart';
import 'package:rapido/config/string_config.dart';
import 'package:rapido/constant/app_color.dart';
import 'package:rapido/constant/app_images.dart';
import 'package:rapido/constant/font_size.dart';
import 'package:rapido/constant/margin_page.dart';
import 'package:ticket_material/ticket_material.dart';

class WelcomePageTwo extends StatelessWidget {
  const WelcomePageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Center(child: Image.asset(AppImages.logo)),
                const SizedBox(
                  height: 100,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal:100,vertical: padding8),
                  child: TicketMaterial(
                    height: 100,
                    colorBackground: AppColor.yellow,
                    leftChild: Icon(Icons.percent_outlined,size: AppFont.fontSize90),
                    rightChild: Text(""),
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                Text(
                  StringConfig.repidopowerpass,
                  style: TextStyle(
                      fontSize: AppFont.fontSize35,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: padding50),
                  child: Text(
                    StringConfig.faltrates,
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
