import 'package:flutter/material.dart';
import 'package:rapido/config/string_config.dart';
import 'package:rapido/constant/app_color.dart';
import 'package:rapido/constant/app_images.dart';
import 'package:rapido/constant/font_size.dart';
import 'package:rapido/constant/margin_page.dart';

import '../../constant/icon_page.dart';

class FavDestination extends StatefulWidget {
  const FavDestination({Key? key}) : super(key: key);

  @override
  State<FavDestination> createState() => _FavDestinationState();
}

class _FavDestinationState extends State<FavDestination> {
  List data = [
    {
      'img': AppImages.home,
      'txt': StringConfig.home,
      'place': StringConfig.place,
    },
    {
      'img': AppImages.chair,
      'txt': StringConfig.chair,
      'place': StringConfig.officeplace,
    },
    {
      'img': AppImages.gym,
      'txt': StringConfig.gym,
      'place': StringConfig.gymplace,
    },
    {
      'img': AppImages.plus,
      'txt': StringConfig.plus,
      'place': StringConfig.plusplace,
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor:Colors.transparent,elevation: 0,
          leading: InkWell(
            child: Card(elevation: 3,shadowColor: AppColor.black,shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)),
              child: Container(
                decoration:
                BoxDecoration(color: AppColor.white,shape: BoxShape.circle),
                child: AppIcon.backarrow,
              ),
            ),
          )),
      body: Padding(
        padding: EdgeInsets.all(AppMargin.marginSize9),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(AppMargin.marginSize10),
                child: Container(
                    width: 60,
                    height: 60,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: AppColor.white),
                    child: Image.asset(AppImages.userpic)),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    StringConfig.favdestination,
                    style: TextStyle(
                        color: AppColor.black,
                        fontSize: AppFont.fontSize20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    StringConfig.favorite,
                    style: TextStyle(
                        color: AppColor.black,
                        fontSize: AppFont.fontSize10,
                        fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, i) {
                return Padding(
                  padding: EdgeInsets.all(AppMargin.marginSize11),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: const BoxDecoration(
                              color: AppColor.yellow, shape: BoxShape.circle),
                          child: Column(
                            children: [
                              Image.asset(
                                data[i]['img'],
                                height: 20,
                              ),
                              Text(
                                data[i]['txt'].toString(),
                                style: TextStyle(
                                    color: AppColor.black,
                                    fontSize: AppFont.fontSize10),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 24.0),
                            child: Card(shadowColor: AppColor.black,
                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: AppColor.white),
                                child: Center(
                                  child: Text(data[i]['place'].toString(),
                                      style: TextStyle(
                                          color: AppColor.black,
                                          fontSize: AppFont.fontSize14)),
                                ),
                              ),
                            ),
                          ),
                        )
                      ]),
                );
              },
            ),
          ),
        ]),
      ),
    );
  }
}
