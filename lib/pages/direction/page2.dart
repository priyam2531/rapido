import 'package:flutter/material.dart';
import 'package:rapido/config/string_config.dart';
import 'package:rapido/constant/app_color.dart';
import 'package:rapido/constant/icon_page.dart';
import 'package:rapido/widget/custom_button.dart';
//import 'package:rapido/constant/icon_page.dart';

class PromoCode extends StatefulWidget {
  const PromoCode({super.key});

  @override
  State<PromoCode> createState() => _PromoCodeState();
}

class _PromoCodeState extends State<PromoCode> {
  bool OpenBottomSheet = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: AppIcon.backarrow,
        title: Center(
          child: Text(
            StringConfig.promocode,
            style: TextStyle(
              color: Color(0xff050505),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              children: [
                Text(
                  StringConfig.ap,
                  style: TextStyle(
                      color: Color(0xff050505), fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Card(
            elevation: 10,
            color: Color(0xffFFFFFF),
            child: Container(
              height: 170,
              width: 320,
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          StringConfig.discount,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(StringConfig.tex),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 80),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            StringConfig.r30,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(StringConfig.dmy),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 40),
          Card(
            elevation: 10,
            color: Color(0xffFFFFFF),
            child: Container(
              height: 170,
              width: 320,
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          StringConfig.discount,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(StringConfig.tex),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 80),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            StringConfig.r50,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(StringConfig.dmy2),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 170),
          CustomButton(
              onTap: () {
                Navigator.pop(context);
                if (OpenBottomSheet) {
                  _openBottomSheet(context);
                } else {
                  // Add logic for other conditions or actions
                }
              },
              title: "Add promocode"),
        ],
      ),
    );
  }

  void _openBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                height: 140,
                width: 320,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  border: Border.all(
                    color: Color(0xff616A76),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(StringConfig.csa,style: TextStyle(fontWeight: FontWeight.bold),),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Text(StringConfig.t1),
                        ],
                      ),
                      Row(
                        children: [
                          Text(StringConfig.t2),
                        ],
                      ),
                      Row(
                        children: [
                          Text(StringConfig.t3),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 160),
              CustomButton(
                  onTap: () {
                    Navigator.pop(context);
                    if (OpenBottomSheet) {
                      _openBottomSheet(context);
                    } else {
                      // Add logic for other conditions or actions
                    }
                  },
                  title: "Continue"),
            ],
          ),
        );
      },
    );
  }
}
