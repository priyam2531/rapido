import 'package:flutter/material.dart';
import 'package:rapido/config/string_config.dart';
import 'package:rapido/constant/app_color.dart';

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
