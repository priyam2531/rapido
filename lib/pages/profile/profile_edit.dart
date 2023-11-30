import 'package:flutter/material.dart';
import 'package:rapido/constant/app_color.dart';
import 'package:rapido/constant/app_images.dart';
import 'package:rapido/constant/icon_page.dart';
import 'package:rapido/constant/margin_page.dart';

class ProfileEdit extends StatefulWidget {
  const ProfileEdit({Key? key}) : super(key: key);

  @override
  State<ProfileEdit> createState() => _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(AppMargin.marginSize9),
        child: Column(children: [
          Container(
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: AppColor.white),
              child: Center(child: Center(child: AppIcon.backarrow))),
          Container(
              width: 60,
              height: 60,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: AppColor.white),
              child: Image.asset(AppImages.userpic)),
        ]),
      ),
    );
  }
}
