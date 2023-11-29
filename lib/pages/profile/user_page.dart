import 'package:flutter/material.dart';
import 'package:rapido/config/string_config.dart';
import 'package:rapido/constant/app_color.dart';
import 'package:rapido/constant/app_images.dart';
import 'package:rapido/constant/font_size.dart';
import 'package:rapido/constant/icon_page.dart';

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
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(color: AppColor.yellow),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: AppColor.white),
                          child: Center(child: AppIcon.backarrow)),
                      Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: AppColor.white),
                          child: Center(child: AppIcon.setting))
                    ],
                  ),
                  Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color:AppColor.white),
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
                  SizedBox(
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
          // Padding(
          //   padding: const EdgeInsets.all(40),
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       SizedBox(height: 20,),
          //       Text(
          //         "RIDE HISTORY",
          //         style: TextStyle(
          //             color: Colors.grey[600],
          //             fontWeight: FontWeight.w700,
          //             fontSize: 15,
          //             height: 0.9),
          //       ),
          //       SizedBox(height: 40,),
          //       Text(
          //         "PAYMENT",
          //         style: TextStyle(
          //             color: Colors.grey[600],
          //             fontWeight: FontWeight.w700,
          //             fontSize: 15,
          //             height: 0.9),
          //       ),
          //       SizedBox(height: 40,),
          //       Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //         children: [
          //           Text(
          //             "PROMOCODE",
          //             style: TextStyle(
          //                 color: Colors.grey[600],
          //                 fontWeight: FontWeight.w700,
          //                 fontSize: 15,
          //                 height: 0.9),
          //           ),
          //           Container(height: 30,width: 30,decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.white),child: Center(child: Text("1")),)
          //         ],
          //       ),
          //       SizedBox(height: 40,),
          //       Text(
          //         "SUPPORT",
          //         style: TextStyle(
          //             color: Colors.grey[600],
          //             fontWeight: FontWeight.w700,
          //             fontSize: 15,
          //             height: 0.9),
          //       ),
          //       SizedBox(height: 140,),
          //
          //       Text(
          //         'Sign out',
          //         style: TextStyle(
          //           color: Color(0xFFFFCC08),
          //           fontSize: 15,
          //
          //           fontWeight: FontWeight.w400,
          //           height: 0.09,
          //         ),
          //       )
          //
          //
          //
          //     ],
          //   ),
          // )
          SizedBox(height: 20,),

          ListTile(
            title:  Text(StringConfig.history,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          SizedBox(height: 20,),
          ListTile(
            title:  Text(StringConfig.payment),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          SizedBox(height: 20,),
          ListTile(
            title:  Text(StringConfig.code),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          SizedBox(height: 20,),
          ListTile(
            title:  Text(StringConfig.support),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          SizedBox(height: 100,),
          ListTile(
            title:  Text(StringConfig.signout,style: TextStyle(color: AppColor.yellow)),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ]),
      ),
    );
  }
}
