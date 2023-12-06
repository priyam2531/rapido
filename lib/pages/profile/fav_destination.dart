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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(AppMargin.marginSize9),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: AppColor.white),
              child: Center(child: Center(child: AppIcon.backarrow))),
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
                        color: AppColor.grey,
                        fontSize: AppFont.fontSize20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    StringConfig.favorite,
                    style: TextStyle(
                        color: AppColor.grey,
                        fontSize: AppFont.fontSize10,
                        fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
          Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 30,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                        color: AppColor.yellow, shape: BoxShape.circle),
                    child: Column(
                      children: [
                        Image.asset(
                          AppImages.home,
                          height: 20,
                        ),
                        Text(
                          StringConfig.home,
                          style: TextStyle(
                              color: AppColor.black,
                              fontSize: AppFont.fontSize10),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Card(
                    child: Container(
                      height: 40,
                      width: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColor.white),
                      child: Center(
                        child: Text(StringConfig.place,
                            style: TextStyle(
                                color: AppColor.black,
                                fontSize: AppFont.fontSize14)),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 30,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                        color: AppColor.yellow, shape: BoxShape.circle),
                    child: Column(
                      children: [
                        Image.asset(
                          AppImages.chair,
                          height: 20,
                        ),
                        Text(
                          StringConfig.chair,
                          style: TextStyle(
                              color: AppColor.black,
                              fontSize: AppFont.fontSize10),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Card(
                    child: Container(
                      height: 40,
                      width: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColor.white),
                      child: Center(
                        child: Text(StringConfig.officeplace,
                            style: TextStyle(
                                color: AppColor.black,
                                fontSize: AppFont.fontSize14)),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 30,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                        color: AppColor.yellow, shape: BoxShape.circle),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          AppImages.gym,
                          height: 20,
                        ),
                        Text(
                          StringConfig.gym,
                          style: TextStyle(
                              color: AppColor.black,
                              fontSize: AppFont.fontSize10),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Card(
                    child: Container(
                      height: 40,
                      width: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColor.white),
                      child: Center(
                        child: Text(StringConfig.gymplace,
                            style: TextStyle(
                                color: AppColor.black,
                                fontSize: AppFont.fontSize14)),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 30,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                        color: AppColor.yellow, shape: BoxShape.circle),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          AppImages.plus,
                          height: 20,
                        ),
                        Text(
                          StringConfig.plus,
                          style: TextStyle(
                              color: AppColor.black,
                              fontSize: AppFont.fontSize10),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Card(
                    child: Container(
                      height: 40,
                      width: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColor.white),
                      child: Center(
                        child: Text(StringConfig.plusplace,
                            style: TextStyle(
                                color: AppColor.black,
                                fontSize: AppFont.fontSize14)),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
