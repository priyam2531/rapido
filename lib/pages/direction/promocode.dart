import 'package:flutter/material.dart';
import 'package:rapido/config/string_config.dart';
import 'package:rapido/constant/icon_page.dart';
import 'package:rapido/pages/direction/backgrpage.dart';
import 'package:rapido/widget/custom_button.dart';

class ScreenPage extends StatefulWidget {
  const ScreenPage({super.key});

  @override
  State<ScreenPage> createState() => _ScreenPageState();
}

class _ScreenPageState extends State<ScreenPage> {
  bool NowSheet = true;
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
          Padding(
            padding: const EdgeInsets.only(top: 150),
            child: CustomButton(
                onTap: () {
                  if (NowSheet) {
                    nowsheet(context);
                  } else {
                    // Add logic for other conditions or actions
                  }
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FirstScreen(),
                    ),
                  );
                },
                title: "Add Promocode"),
          ),
        ],
      ),
    );
  }

  void nowsheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                height: 110,
                width: 290,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "COUPEN SUCCESSFULLY APPLIED",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Row(
                          children: [
                            Text("Rapido30 : You’ve successfully"),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "availed 30% Discount upto 30rs. on",
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "this ride.",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 180),
                child: CustomButton(
                    onTap: () {
                      if (NowSheet) {
                        nowsheet(context);
                      } else {
                        // Add logic for other conditions or actions
                      }
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FirstScreen(),
                        ),
                      );
                    },
                    title: "Continue"),
              ),
            ],
          ),
        );
      },
    );
  }
}
