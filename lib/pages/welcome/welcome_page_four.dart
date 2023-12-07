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
  int _selectedValue = 1;

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
          RadioListTile(
            fillColor: MaterialStateProperty.all(AppColor.yellow),
            title: Text(
              'English',
              style: TextStyle(
                  color:  _selectedValue == 1 ? AppColor.yellow : AppColor.black),
            ),
            value: 1,
            groupValue:
                _selectedValue,
            onChanged: (value) {
              setState(() {
                _selectedValue = value!;
              });
            },
          ),
          RadioListTile(
            fillColor: MaterialStateProperty.all(AppColor.yellow),
            title: Text(
              'Hindi',
              style: TextStyle(
                  color: _selectedValue == 2 ? AppColor.yellow : AppColor.black),
            ),
            value: 2,
            groupValue: _selectedValue,
            onChanged: (value) {
              setState(() {
                _selectedValue = value!;
              });
            },
          ),
          RadioListTile(
            fillColor: MaterialStateProperty.all(AppColor.yellow),
            title: Text(
              'Kannada(ಕನ್ನಡ)',
              style: TextStyle(
                  color: _selectedValue == 3 ? AppColor.yellow : AppColor.black),
            ),
            value: 3,
            groupValue: _selectedValue,
            onChanged: (value) {
              setState(() {
                _selectedValue = value!;
              });
            },
          ),
          RadioListTile(
            fillColor: MaterialStateProperty.all(AppColor.yellow),
            title: Text(
              'Telugu(తెలుగు)',
              style: TextStyle(
                  color:  _selectedValue == 4 ? AppColor.yellow : AppColor.black),
            ),
            value: 4,
            groupValue: _selectedValue,
            onChanged: (value) {
              setState(() {
                _selectedValue = value!;
              });
            },
          ),
          RadioListTile(
            fillColor: MaterialStateProperty.all(AppColor.yellow),
            title: Text(
              'Tamil(தமிழ்)',
              style: TextStyle(
                  color: _selectedValue == 5 ? AppColor.yellow : AppColor.black),
            ),
            value: 5,
            groupValue: _selectedValue,
            onChanged: (value) {
              setState(() {
                _selectedValue = value!;
              });
            },
          ),
        ],
      ),
    )));
  }
}
