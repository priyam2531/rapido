import 'package:flutter/material.dart';
import 'package:rapido/config/string_config.dart';
import 'package:rapido/constant/app_color.dart';
import 'package:rapido/constant/app_images.dart';
import 'package:rapido/constant/font_size.dart';

class WelcomePageFour extends StatefulWidget {
  WelcomePageFour({super.key});

  @override
  State<WelcomePageFour> createState() => _WelcomePageFourState();
}

class _WelcomePageFourState extends State<WelcomePageFour> {
  int _selectedValue = 0;
  List language = ['English', 'Hindi', 'Kannada (ಕನ್ನಡ)', 'Telugu (ತೆಲುಗು)', 'Tamil (ತಮಿಳು)'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(AppImages.logo),
                Image.asset(AppImages.Aaplphabet)
              ],
            ),
          ),
          Text(
            StringConfig.chooseaproced,
            style: TextStyle(
                fontSize: AppFont.fontSize25, fontWeight: FontWeight.bold),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Divider(
              height: 20,
              thickness: 4,
              color: AppColor.yellow,
            ),
          ),
          Column(
            children: List.generate(
              language.length,
                  (index) {
                return
                  RadioListTile(
                    fillColor: _selectedValue == index + 1
                        ? MaterialStateProperty.all(AppColor.yellow)
                        : MaterialStateProperty.all(AppColor.black),
                    title: Text(
                      language[index],
                      style: TextStyle(
                          color: _selectedValue == index + 1
                              ? AppColor.yellow
                              : AppColor.black),
                    ),
                    value: index + 1,
                    groupValue: _selectedValue,
                    onChanged: (value) {
                      setState(() {
                        _selectedValue = value ?? 0;
                      });
                    },
                  );
              },
            ),
          ),
        ],
      ),
    )));
  }
}
