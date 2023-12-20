import 'package:flutter/material.dart';
import 'package:rapido/config/string_config.dart';
import 'package:rapido/constant/app_color.dart';
import 'package:rapido/constant/app_images.dart';
import 'package:rapido/constant/font_size.dart';
import 'package:rapido/constant/margin_page.dart';
import 'package:rapido/pages/profile/user_page.dart';
import 'package:rapido/pages/ride%20history/captain_detail.dart';
import 'package:rapido/pages/ride%20history/ride_history.dart';
import 'package:rapido/widget/custom_button.dart';

import '../../constant/icon_page.dart';

class RideDetail extends StatefulWidget {
  const RideDetail({Key? key}) : super(key: key);

  @override
  State<RideDetail> createState() => _RideDetailState();
}

class _RideDetailState extends State<RideDetail> {
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
          )
      ,title: Center(child: Text(StringConfig.ridedetail,style: TextStyle(color: AppColor.black),))),
      body: ListView(
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                      height: 280,
                      child: Image.asset(AppImages.map, fit: BoxFit.cover)),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(AppMargin.marginSize15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColor.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              StringConfig.date,
                              style: TextStyle(
                                  color: AppColor.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: AppFont.fontSize10),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: AppMargin.marginSize13,
                                right: AppMargin.marginSize13,
                                bottom: AppMargin.marginSize13,
                              ),
                              child: Divider(
                                color: AppColor.grey2,
                                thickness: 2,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                right: AppMargin.marginSize13,
                                left: AppMargin.marginSize13,
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        StringConfig.time1,
                                        style: TextStyle(
                                            color: AppColor.grey2,
                                            fontSize: AppFont.fontSize15),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        children: [
                                          Center(child: AppIcon.round),
                                          Padding(
                                            padding: EdgeInsets.all(
                                                AppMargin.marginSize9),
                                            child: Container(
                                              height: 50,
                                              width: 1,
                                              color: AppColor.black2,
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        StringConfig.place3,
                                        style: TextStyle(
                                            color: AppColor.black,
                                            fontSize: AppFont.fontSize15),
                                      )
                                    ],
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        StringConfig.time2,
                                        style: TextStyle(
                                            color: AppColor.grey2,
                                            fontSize: AppFont.fontSize15),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Center(child: AppIcon.downarrow),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        StringConfig.place4,
                                        style: TextStyle(
                                            color: AppColor.black,
                                            fontSize: AppFont.fontSize15),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Text(StringConfig.captain,
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: (padding12),
                          color: AppColor.grey,
                          letterSpacing: 1)),
                  Card(
                      elevation: 2,
                      shadowColor: AppColor.black,
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColor.white),
                        child:
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppColor.white,
                                      image: DecorationImage(
                                          image:
                                              AssetImage(AppImages.dineshpic))),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(StringConfig.dinesh),
                                  Text(StringConfig.splender),
                                  Row(
                                    children: [
                                      AppIcon.star,
                                      Text(StringConfig.rate),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(width: 210),
                              InkWell(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(
                                      builder: (context) {
                                        return CaptainDetail();
                                      },
                                    ));
                                  },
                                  child: AppIcon.frontarrow),
                            ]),
                      )),
                  Text(StringConfig.payment,
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: (padding12),
                          color: AppColor.grey,
                          letterSpacing: 1)),
                  Padding(
                    padding: EdgeInsets.only(top: 9),
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                          color: AppColor.grey2,
                          borderRadius: BorderRadius.circular(10)),
                      child: ListTile(
                        leading: Image(image: AssetImage(AppImages.chair)),
                        title: Text(StringConfig.code2),
                          trailing: Text(StringConfig.rs,style: TextStyle(fontWeight: FontWeight.bold,color: AppColor.grey)),
                      ),
                    ),
                  ),
                  Text(StringConfig.recipt,
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: (padding20),
                          color: AppColor.black,
                          letterSpacing: 1)),
                  CustomButton(title: StringConfig.issue,onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return UserPage();
                    },));
                  },)
                ],
              ),
            )
          ]),
        ],
      ),
    );
  }
}
