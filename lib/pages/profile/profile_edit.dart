import 'package:flutter/material.dart';
import 'package:rapido/config/string_config.dart';
import 'package:rapido/constant/app_color.dart';
import 'package:rapido/constant/app_images.dart';
import 'package:rapido/constant/font_size.dart';
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
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: AppColor.white),
              child: Center(child: Center(child: AppIcon.backarrow))),
          Center(
            child: Container(
                width: 60,
                height: 60,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: AppColor.white),
                child: Image.asset(AppImages.userpic)),
          ),
          Center(
              child: Text(
            StringConfig.commuter,
            style: TextStyle(
              color: AppColor.black,
              fontSize: AppFont.fontSize20,
              letterSpacing: 0.20,
              fontWeight: FontWeight.w700,
            ),
          )),

          Column(
            children: [
              SizedBox(height: 30,),
              Row(crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(width: 30,),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: AppColor.yellow, shape: BoxShape.circle),
                    child: AppIcon.phone,
                  ),SizedBox(width: 30,),
                  Text(StringConfig.number,style: TextStyle(color: AppColor.black,fontSize: AppFont.fontSize15),),
                  // Divider(height: 2,color: AppColor.grey,thickness: 2,),

                ],
              ),SizedBox(height: 25,),
              Row(crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(width: 30,),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: AppColor.yellow, shape: BoxShape.circle),
                    child: AppIcon.email,
                  ),SizedBox(width: 30,),
                  Text(StringConfig.email,style: TextStyle(color: AppColor.black,fontSize: AppFont.fontSize15),)
                ],
              ),
              SizedBox(height: 25,),
              Row(crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(width: 30,),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: AppColor.yellow, shape: BoxShape.circle),
                    child: AppIcon.transform,
                  ),SizedBox(width: 30,),
                  Text(StringConfig.fav,style: TextStyle(color: AppColor.black,fontSize: AppFont.fontSize15),)
                ],
              ),
              SizedBox(height: 25,),
              Row(crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(width: 30,),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: AppColor.yellow, shape: BoxShape.circle),
                    child: AppIcon.laguage,
                  ),SizedBox(width: 30,),
                  Text(StringConfig.language,style: TextStyle(color: AppColor.black,fontSize: AppFont.fontSize15),)
                ],
              ),
              // Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
              //   Column(crossAxisAlignment: CrossAxisAlignment.start,
              //
              //     children: [
              //       Text(StringConfig.notification, style: TextStyle(color: AppColor.black,fontSize: AppFont.fontSize15)),
              //       Text(StringConfig.message, style: TextStyle(color: AppColor.grey,fontSize: AppFont.fontSize8)),
              //     ],
              //   ),
              //   AppIcon.notification,
              // ],),
            ],
          ),
          Padding(
            padding:  EdgeInsets.only(left: AppMargin.marginSize30,right: AppMargin.marginSize30,top: AppMargin.marginSize90),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text(StringConfig.notification, style: TextStyle(color: AppColor.black,fontSize: AppFont.fontSize15)),
                  Text(StringConfig.message, style: TextStyle(color: AppColor.grey,fontSize: AppFont.fontSize8)),
                ],
              ),
              AppIcon.notification,
            ],),
          ),SizedBox(height: 20,),
          Center(
            child: MaterialButton(height: 40,color: AppColor.yellow,onPressed: () {
              return setState(() {
                Navigator.pop(context);
              });
            },child: Text(StringConfig.signout,style: TextStyle(fontSize: AppFont.fontSize20,color: AppColor.grey,fontWeight: FontWeight.w700)),),
          )

        ]),
      ),
    );
  }
}
