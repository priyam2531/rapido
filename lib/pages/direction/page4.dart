import 'package:flutter/material.dart';
import 'package:rapido/config/string_config.dart';
import 'package:rapido/constant/icon_page.dart';

class PickupPage extends StatefulWidget {
  const PickupPage({super.key});

  @override
  State<PickupPage> createState() => _PickupPageState();
}

class _PickupPageState extends State<PickupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFFFFFF),
        leading: AppIcon.backarrow,
        title: Text(
          StringConfig.from,
          style: TextStyle(
            color: Color(0xff050505),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.asset("assets/img_7.png"),
            ),
        ],
      ),
    );
  }
}
