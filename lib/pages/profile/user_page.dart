import 'package:flutter/material.dart';
import 'package:rapido/config/string_config.dart';
import 'package:rapido/constant/app_color.dart';
import 'package:rapido/constant/app_images.dart';
import 'package:rapido/constant/font_size.dart';
import 'package:rapido/constant/icon_page.dart';
import 'package:rapido/constant/margin_page.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.yellow,
      ),
      drawer: Drawer(
        backgroundColor: AppColor.white,
        child: ListView(children: [
          DrawerHeader(
              padding: EdgeInsets.all(AppMargin.marginSize5),
              decoration: const BoxDecoration(color: AppColor.yellow),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          width: 40,
                          height: 40,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: AppColor.white),
                          child: Center(child: AppIcon.backarrow)),
                      Container(
                          width: 40,
                          height: 40,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: AppColor.white),
                          child: Center(child: AppIcon.setting))
                    ],
                  ),
                  Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: AppColor.white),
                      child: Image.asset(AppImages.profile)),
                  Text(
                    StringConfig.name,
                    style: TextStyle(
                      color: AppColor.grey,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Roboto',
                      fontSize: AppFont.fontSize15,
                      letterSpacing: 0.20,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    StringConfig.number,
                    style: TextStyle(
                      color: AppColor.grey,
                      fontWeight: FontWeight.w400,
                      fontSize: AppFont.fontSize15,
                    ),
                  )
                ],
              )),

          const SizedBox(
            height: 20,
          ),

          ListTile(
            title: Text(
              StringConfig.history,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          const SizedBox(
            height: 20,
          ),
          ListTile(
            title: Text(StringConfig.payment),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          const SizedBox(
            height: 20,
          ),
          ListTile(
            title: Text(StringConfig.code),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          const SizedBox(
            height: 20,
          ),
          ListTile(
            title: Text(StringConfig.support),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          const SizedBox(
            height: 100,
          ),
          ListTile(
            title: Text(StringConfig.signout,
                style: const TextStyle(color: AppColor.yellow)),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ]),
      ),
    );
  }
}
