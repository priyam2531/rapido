import 'package:flutter/material.dart';
import 'package:rapido/config/string_config.dart';
import 'package:rapido/constant/font_size.dart';
import 'package:rapido/constant/icon_page.dart';
import 'package:rapido/constant/margin_page.dart';

import '../../constant/app_color.dart';

class RideHistory extends StatefulWidget {
  const RideHistory({Key? key}) : super(key: key);

  @override
  State<RideHistory> createState() => _RideHistoryState();
}

class _RideHistoryState extends State<RideHistory> {
  List data = [
    {
      'date': StringConfig.date,
      'trip': StringConfig.trip,
      'time1': StringConfig.time1,
      'color':AppColor.yellow,
      'time2': StringConfig.time2,
      'place': StringConfig.place1,
      'place2': StringConfig.place2,
    },
    {
      'date': StringConfig.date1,
      'trip': StringConfig.trip1,
      'time1': StringConfig.time1,
      'color':AppColor.green,
      'time2': StringConfig.time2,
      'place': StringConfig.place1,
      'place2': StringConfig.place2,
    },
    {
      'date': StringConfig.date2,
      'trip': StringConfig.trip2,
      'time1': StringConfig.time3,
      'color':AppColor.red,
      'time2': StringConfig.time4,
      'place': StringConfig.place3,
      'place2': StringConfig.place4,
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: AppColor.white,clipBehavior: Clip.antiAlias,shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10))),leading: AppIcon.backarrow,title: Center(child: Text(StringConfig.ridehistory,style: TextStyle(color: AppColor.black2),))),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

      Expanded(
        child: GridView.builder(
          gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
          itemCount: data.length,
          itemBuilder: (context, i) {
        return Card(
          clipBehavior: Clip.antiAlias,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Container(
            decoration: BoxDecoration(
              color: AppColor.white,
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: AppMargin.marginSize13,
                    right: AppMargin.marginSize13,
                    left: AppMargin.marginSize13,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        data[i]['date'].toString(),
                        style: TextStyle(
                            color: AppColor.black,
                            fontWeight: FontWeight.bold,
                            fontSize: AppFont.fontSize10),
                      ),
                      Text(
                        data[i]['trip'].toString(),
                        style: TextStyle(
                            color: data[i]['color'],
                            fontWeight: FontWeight.bold,
                            fontSize: AppFont.fontSize10),
                      )
                    ],
                  ),
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
                            data[i]['time1'].toString(),
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
                            data[i]['place'].toString(),
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
                            data[i]['time2'].toString(),
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
                            data[i]['place2'].toString(),
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
        );
          },

        ),
      )
    ]));
  }
}
