import 'package:flutter/material.dart';
import 'package:rapido/config/string_config.dart';
import 'package:rapido/constant/app_color.dart';
import 'package:rapido/constant/font_size.dart';
import 'package:rapido/constant/icon_page.dart';
import 'package:rapido/constant/margin_page.dart';
import 'package:rapido/pages/profile/profile_edit.dart';
import 'package:rapido/pages/ride%20history/ride_detail.dart';
import 'package:rapido/widget/custom_button.dart';

class IteamPage extends StatefulWidget {
  const IteamPage({Key? key}) : super(key: key);

  @override
  State<IteamPage> createState() => _IteamPageState();
}

class _IteamPageState extends State<IteamPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return RideDetail();
              },
            ));
          },
          child: Card(
            elevation: 3,
            shadowColor: AppColor.black,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)),
            child: Container(
              decoration:
                  BoxDecoration(color: AppColor.white, shape: BoxShape.circle),
              child: AppIcon.backarrow,
            ),
          ),
        ),
      ),
      body: Padding(
        padding:  EdgeInsets.all(padding20),
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child: Text(
                StringConfig.more,
                style: TextStyle(
                    color: AppColor.black2,
                    fontWeight: FontWeight.bold,
                    fontSize: AppFont.fontSize18),
              )),SizedBox(height: 20,),
              Text(
                StringConfig.iteam,
                style: TextStyle(
                    color: AppColor.black2,
                    fontWeight: FontWeight.bold,
                    fontSize: AppFont.fontSize18),
              ),SizedBox(height: 20,),
              Text(
                StringConfig.iteammore,
                style: TextStyle(letterSpacing: 1),
              ),SizedBox(height: 35,),
              Text(
                StringConfig.us,
                style: TextStyle(
                    color: AppColor.black2,
                    fontWeight: FontWeight.bold,
                    fontSize: AppFont.fontSize15),
              ),
              TextFormField(
                maxLines: 2,
                decoration: InputDecoration(
                    hintText: "Your message here...",

                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
              ),
            ],
          ),
          Column(
            children: [
              CustomButton(
                title: StringConfig.submit,
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return RideDetail();
                    },
                  ));
                },
              ),
            ],
          )
        ]),
      ),
    );
  }
}
