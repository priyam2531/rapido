import 'package:flutter/material.dart';
import 'package:rapido/config/string_config.dart';
import 'package:rapido/constant/app_color.dart';
import 'package:rapido/constant/app_images.dart';
import 'package:rapido/constant/font_size.dart';
import 'package:rapido/constant/icon_page.dart';
import 'package:rapido/constant/margin_page.dart';

import 'profile_edit.dart';

class LanguagePage extends StatefulWidget {
  const LanguagePage({Key? key}) : super(key: key);

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  int _selectedValue = 0;
  List language = ['English', 'Hindi', 'Kannada (ಕನ್ನಡ)', 'Telugu (ತೆಲುಗು)', 'Tamil (ತಮಿಳು)'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: AppColor.white),
              child: Center(child: Center(child: AppIcon.backarrow))),
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
            StringConfig.changeLanguage,
            style: TextStyle(
                fontSize: AppFont.fontSize30, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: EdgeInsets.all(AppMargin.marginSize15),
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
          Padding(
            padding: EdgeInsets.only(top: AppMargin.marginSize60),
            child: Center(
              child: MaterialButton(
                height: 50,
                color: AppColor.yellow,
                onPressed: () {
                  return setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return ProfileEdit();
                    },));
                  });
                },
                child: Text(StringConfig.change,
                    style: TextStyle(
                        fontSize: AppFont.fontSize15,
                        color: AppColor.black,
                        fontWeight: FontWeight.w700)),
              ),
            ),
          )
        ],
      ),
    )));
  }
}
