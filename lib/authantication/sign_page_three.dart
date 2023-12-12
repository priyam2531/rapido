import 'package:flutter/material.dart';
import 'package:rapido/config/string_config.dart';
import 'package:rapido/constant/app_color.dart';
import 'package:rapido/constant/app_images.dart';
import 'package:rapido/constant/font_size.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:rapido/constant/icon_page.dart';

class Signpagethree extends StatefulWidget {
  const Signpagethree({super.key});

  @override
  State<Signpagethree> createState() => _SignpagethreeState();
}

class _SignpagethreeState extends State<Signpagethree> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.transparent,
        elevation: 0,
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Signpagethree()));
        },
        child: AppIcon.Frontarrow,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    AppImages.logo,
                    scale: 1.5,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35),
              child: Row(
                children: [
                  RichText(
                      text: TextSpan(
                          text: StringConfig.Enterotp,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: AppColor.black,
                              fontSize: AppFont.fontSize20))),
                  RichText(
                      text: TextSpan(
                          text: StringConfig.senttotheno,
                          style: TextStyle(
                              color: AppColor.black, fontSize: AppFont.fontSize20)))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                StringConfig.viasms,
                style: TextStyle(
                  color: AppColor.grey2,
                ),
              ),
            ),
          ],
        ),

        Column(
          children: [
            OTPTextField(
              length: 6,
              width: MediaQuery.of(context).size.width,
              fieldWidth: 20,
              style:
                  TextStyle(fontSize: AppFont.fontSize20, color: AppColor.yellow),
              textFieldAlignment: MainAxisAlignment.spaceAround,
              fieldStyle: FieldStyle.underline,
              onCompleted: (pin) {
                print("Completed: " + pin);
              },
            ),
            SizedBox(
              height: 25,
            ),
            InkWell(
              child: Text(StringConfig.Resendcode,
                  style: TextStyle(
                      color: AppColor.black,
                      fontSize: AppFont.fontSize20,
                      decoration: TextDecoration.underline)),
            ),
          ],
        ),


        Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Center(
                child: RichText(
                    text: TextSpan(
                        text: StringConfig.bycontinuing,
                        style: TextStyle(color: AppColor.black),
                        children: [
                      TextSpan(
                          text: StringConfig.tearms,
                          style: TextStyle(
                            color: AppColor.yellow,
                          ),
                          children: [
                            TextSpan(
                                text: StringConfig.and,
                                style: TextStyle(
                                  color: AppColor.black,
                                ),
                                children: [
                                  TextSpan(
                                      text: StringConfig.Privacpolicy,
                                      style: TextStyle(
                                        color: AppColor.yellow,
                                      ),
                                      children: [
                                        TextSpan(
                                            text: StringConfig.ofRapido,
                                            style: TextStyle(
                                              color: AppColor.black,
                                            )),
                                      ]),
                                ]),
                          ]),
                    ])),
              ),
            ),
          ],
        )
      ]),
    ));
  }
}
