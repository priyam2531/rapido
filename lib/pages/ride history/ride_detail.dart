import 'package:flutter/material.dart';
import 'package:rapido/config/string_config.dart';
import 'package:rapido/constant/app_color.dart';
import 'package:rapido/constant/app_images.dart';
import 'package:rapido/constant/font_size.dart';
import 'package:rapido/constant/margin_page.dart';

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
          )),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          children: [
            Expanded(
              child: Container(
                  height: 280,
                  child: Image.asset(AppImages.map, fit: BoxFit.cover)),
            ),
          ],
        ),
        Card(
          clipBehavior: Clip.antiAlias,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Container(
            decoration: BoxDecoration(
              color: AppColor.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
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
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                                  padding:
                                      EdgeInsets.all(AppMargin.marginSize9),
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
                          crossAxisAlignment: CrossAxisAlignment.start,
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
        )
      ]),
    );
        appBar: AppBar(
            backgroundColor: AppColor.white,
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10))),
            leading: AppIcon.backarrow,
            title: Center(
                child: Text(
              StringConfig.ridehistory,
              style: TextStyle(color: AppColor.black2),
            ))),
        body:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: []));
  }
}
