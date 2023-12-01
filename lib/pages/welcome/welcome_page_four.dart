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
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Divider(
              height: 20,
              thickness: 4,
              color: AppColor.yellow,
            ),
          ),
          RadioListTile(
            title: Text('English'),
            value: 1, // Assign a value of 1 to this option
            groupValue:
            _selectedValue, // Use _selectedValue to track the selected option
            onChanged: (value) {
              setState(() {
                _selectedValue =
                value!; // Update _selectedValue when option 1 is selected
              });
            },
          ),
          RadioListTile(
            title: Text('Hindi'), // Display the title for option 1
            // Display a subtitle for option 1
            value: 2, // Assign a value of 1 to this option
            groupValue:
            _selectedValue, // Use _selectedValue to track the selected option
            onChanged: (value) {
              setState(() {
                _selectedValue =
                value!; // Update _selectedValue when option 1 is selected
              });
            },
          ),
          RadioListTile(
            title: Text('Kannada'), // Display the title for option 2
            // Display a subtitle for option 2
            value: 3, // Assign a value of 2 to this option
            groupValue:
            _selectedValue, // Use _selectedValue to track the selected option
            onChanged: (value) {
              setState(() {
                _selectedValue =
                value!; // Update _selectedValue when option 2 is selected
              });
            },
          ),
          RadioListTile(
            title: Text('Telugu'), // Display the title for option 2
           // Display a subtitle for option 2
            value: 4, // Assign a value of 2 to this option
            groupValue:
            _selectedValue, // Use _selectedValue to track the selected option
            onChanged: (value) {
              setState(() {
                _selectedValue =
                value!; // Update _selectedValue when option 2 is selected
              });
            },
          ),
          RadioListTile(
            title: Text('Tamil'), // Display the title for option 2
            // Display a subtitle for option 2
            value: 5, // Assign a value of 2 to this option
            groupValue:
            _selectedValue, // Use _selectedValue to track the selected option
            onChanged: (value) {
              setState(() {
                _selectedValue =
                value!; // Update _selectedValue when option 2 is selected
              });
            },
          ),
        ],
      ),
    )));
  }
}
