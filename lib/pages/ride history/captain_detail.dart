import 'package:flutter/material.dart';
import 'package:rapido/config/string_config.dart';
import 'package:rapido/constant/app_color.dart';
import 'package:rapido/constant/app_images.dart';
import 'package:rapido/constant/font_size.dart';
import 'package:rapido/constant/icon_page.dart';

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
          leading: InkWell(
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
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Padding(
              padding: EdgeInsets.all(AppFont.fontSize10),
              child: Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColor.white,
                    image: DecorationImage(
                        image: AssetImage(AppImages.dineshpic))),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(StringConfig.dinesh,
                    style: TextStyle(
                        letterSpacing: 1,
                        color: AppColor.black,
                        fontWeight: FontWeight.bold)),
                Text(StringConfig.hero,
                    style: TextStyle(letterSpacing: 1, color: AppColor.black)),
              ],
            ),
          ]),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 70,
                  width: 90,
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColor.grey),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: AppColor.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                      border: Border.all(color: AppColor.grey),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: AppColor.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                      border: Border.all(color: AppColor.grey),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: AppColor.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
