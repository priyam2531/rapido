import 'package:flutter/material.dart';
import 'package:rapido/config/string_config.dart';
import 'package:rapido/constant/app_color.dart';
import 'package:rapido/constant/app_images.dart';
import 'package:rapido/constant/font_size.dart';
import 'package:rapido/constant/icon_page.dart';
import 'package:rapido/constant/margin_page.dart';

import 'ride_detail.dart';

class CaptainDetail extends StatefulWidget {
  const CaptainDetail({Key? key}) : super(key: key);

  @override
  State<CaptainDetail> createState() => _CaptainDetailState();
}

class _CaptainDetailState extends State<CaptainDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: InkWell(onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return RideDetail();
            },));
          },
            child: Card(
              elevation: 3,
              shadowColor: AppColor.black,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(60)),
              child: Container(
                decoration: BoxDecoration(
                    color: AppColor.white, shape: BoxShape.circle),
                child: AppIcon.backarrow,
              ),
            ),
          ),
          title: Center(
              child: Text(
            StringConfig.captaindetail,
            style: TextStyle(color: AppColor.black),
          ))),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(children: [
          Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColor.white,
                  image:
                      DecorationImage(image: AssetImage(AppImages.dineshpic))),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(StringConfig.dinesh,
                      style: TextStyle(
                          letterSpacing: 1,
                          color: AppColor.black2,
                          fontWeight: FontWeight.bold)),
                  Text(StringConfig.hero,
                      style: TextStyle(letterSpacing: 1, color: AppColor.black2)),
                ],
              ),
            ),
          ]),
          Padding(
            padding: EdgeInsets.only(
                top: AppMargin.marginSize9,
                left: AppMargin.marginSize8,
                right: AppMargin.marginSize8,
                bottom: AppMargin.marginSize25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 70,
                  width: 90,
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColor.grey2),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: AppColor.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            color: AppColor.yellow, shape: BoxShape.circle),
                        child: AppIcon.star1,
                      ),
                      Text(StringConfig.rate),
                    ],
                  ),
                ),
                Container(
                  height: 70,
                  width: 90,
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColor.grey2),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: AppColor.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            color: AppColor.yellow, shape: BoxShape.circle),
                        child: Center(child: AppIcon.heart),
                      ),
                      Text(StringConfig.heartbit),
                    ],
                  ),
                ),
                Container(
                  height: 70,
                  width: 90,
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColor.grey2),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: AppColor.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            color: AppColor.yellow, shape: BoxShape.circle),
                        child: Center(child: AppIcon.clender),
                      ),
                      Text(StringConfig.year),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(
                color: AppColor.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                border: Border.all(color: AppColor.grey2)),
            child: Padding(
              padding: EdgeInsets.all(AppMargin.marginSize16),
              child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      StringConfig.member,
                      style: TextStyle(color: AppColor.grey),
                    ),
                    Text(
                      StringConfig.memberdte,
                      style: TextStyle(color: AppColor.black2),
                    ),
                    Divider(color: AppColor.grey2,thickness: 2,),
                    Text(
                      StringConfig.plateno,
                      style: TextStyle(color: AppColor.grey),
                    ),
                    Text(
                      StringConfig.plate,
                      style: TextStyle(color: AppColor.black2),
                    ),
                  ]),
            ),
          )
        ]),
      ),
    );
  }
}
