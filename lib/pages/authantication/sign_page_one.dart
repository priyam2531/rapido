import 'package:flutter/material.dart';
import 'package:rapido/constant/app_color.dart';
import 'package:rapido/constant/app_images.dart';
import 'package:rapido/constant/font_size.dart';

class sginpageone extends StatefulWidget {
  const sginpageone({super.key});

  @override
  State<sginpageone> createState() => _sginpageoneState();
}

class _sginpageoneState extends State<sginpageone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,

        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(AppImages.logo),
            ],
          ),

          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(AppImages.taxi),
            ],
          ),
          // SizedBox(height: 30,),
          Column(
            children: [
              Container(
                height: 50,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColor.yellow),
                child: Center(
                    child: Text("Continue with phone Number",
                        style: TextStyle(fontSize: AppFont.fontSize20))),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 22, top: 10),
                    child: Container(
                      height: 50,
                      width: 162,
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(AppImages.google),
                          Text(
                            "Google",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: AppFont.fontSize20),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 22, top: 10),
                    child: Container(
                      height: 50,
                      width: 162,
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(AppImages.facebbok),
                          Text(
                            "Facebook",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: AppFont.fontSize20),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                    text: TextSpan(
                        text: "By countinuing you agree to our ",
                        style: TextStyle(
                          color: AppColor.black,
                        ),
                        children: [
                      TextSpan(
                          text: "Terms of service",
                          style: TextStyle(color: AppColor.yellow)),
                      TextSpan(text: "and"),
                      TextSpan(
                          text: "Privacy Policy.",
                          style: TextStyle(color: AppColor.yellow))
                    ])),
              ),
            ],
          )
        ],
      ),
    );
  }
}
