import 'package:flutter/material.dart';
import 'package:rapido/config/string_config.dart';
import 'package:rapido/constant/app_color.dart';
import 'package:rapido/constant/app_images.dart';
import 'package:rapido/constant/font_size.dart';
import 'package:rapido/constant/icon_page.dart';
import 'package:rapido/constant/margin_page.dart';
import 'package:rapido/pages/ride%20history/ride_history.dart';

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
                  SizedBox(
                    width: 100,
                    height: 60,
                    child:
                        Stack(alignment: Alignment.topRight, children: <Widget>[
                      Container(
                          width: 100,
                          height: 120,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: AppColor.white),
                          child: Image.asset(AppImages.profile)),
                      Positioned(
                          right: 5,
                          child: Container(
                            width: 28,
                            height: 28,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColor.lightblue.withOpacity(.5)),
                          )),
                      Positioned(
                          right: -5,
                          bottom: 40,
                          child: Container(
                            padding: const EdgeInsets.only(top: 7),
                            width: 30,
                            height: 30,
                            child: const Icon(Icons.edit_outlined,
                                color: AppColor.white),
                          )),
                    ]),
                  ),
                  // Container(
                  //     width: 50,
                  //     height: 50,
                  //     decoration: const BoxDecoration(
                  //         shape: BoxShape.circle, color: AppColor.white),
                  //     child: Image.asset(AppImages.profile)),
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
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return RideHistory();
              },));
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
