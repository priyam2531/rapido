import 'package:flutter/material.dart';
import 'package:rapido/config/string_config.dart';
import 'package:rapido/constant/app_color.dart';
import 'package:rapido/constant/font_size.dart';
import 'package:rapido/constant/icon_page.dart';
import 'package:rapido/constant/margin_page.dart';
import 'package:rapido/pages/ride%20history/ride_detail.dart';
import 'package:rapido/widget/custom_button.dart';

class AccidentPage extends StatefulWidget {
  const AccidentPage({Key? key}) : super(key: key);

  @override
  State<AccidentPage> createState() => _AccidentPageState();
}

class _AccidentPageState extends State<AccidentPage> {
  int _selectedValue = 0;
  List option = [
   'Yes','NO'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return RideDetail();
              },
            ));
          },
          child: Card(
            elevation: 3,
            shadowColor: AppColor.black,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)),
            child: Container(
              decoration:
                  BoxDecoration(color: AppColor.white, shape: BoxShape.circle),
              child: AppIcon.backarrow,
            ),
          ),
        ),
      ),
      body: ListView(children: [
        Padding(
          padding: EdgeInsets.all(padding20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                        child: Text(
                      StringConfig.more,
                      style: TextStyle(
                          color: AppColor.black2,
                          fontWeight: FontWeight.bold,
                          fontSize: AppFont.fontSize18),
                    )),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      StringConfig.acciedent,
                      style: TextStyle(
                          color: AppColor.black2,
                          fontWeight: FontWeight.bold,
                          fontSize: AppFont.fontSize18),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      StringConfig.accidentmore,
                      style: TextStyle(letterSpacing: 1),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                StringConfig.datenm,
                                style: TextStyle(
                                    color: AppColor.black2,
                                    fontWeight: FontWeight.bold,
                                    fontSize: AppFont.fontSize15),
                              ),
                              TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)))),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                StringConfig.timer,
                                style: TextStyle(
                                    color: AppColor.black2,
                                    fontWeight: FontWeight.bold,
                                    fontSize: AppFont.fontSize15),
                              ),
                              TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)))),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      StringConfig.placenm,
                      style: TextStyle(
                          color: AppColor.black2,
                          fontWeight: FontWeight.bold,
                          fontSize: AppFont.fontSize15),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                    ),
                    Text(
                      StringConfig.hurt,
                      style: TextStyle(
                          color: AppColor.black2,
                          fontWeight: FontWeight.bold,
                          fontSize: AppFont.fontSize15),
                    ),
                    Column(
                      children: List.generate(
                        option.length,
                            (index) {
                          return RadioListTile(
                            fillColor: _selectedValue == index + 1
                                ? MaterialStateProperty.all(AppColor.yellow)
                                : MaterialStateProperty.all(AppColor.black),
                            title: Text(
                              option[index],
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
                    Text(
                      StringConfig.happen,
                      style: TextStyle(
                          color: AppColor.black2,
                          fontWeight: FontWeight.bold,
                          fontSize: AppFont.fontSize15),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(10)))),
                    ),
                  ],
                ),
                Column(
                  children: [
                    CustomButton(
                      title: StringConfig.submit,
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return RideDetail();
                          },
                        ));
                      },
                    ),
                  ],
                )
              ]),
        ),
      ]),
    );
  }
}
