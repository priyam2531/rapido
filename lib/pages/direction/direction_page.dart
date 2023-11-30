import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rapido/constant/app_icon.dart';
import 'package:rapido/constant/app_sizes.dart';
import 'package:rapido/constant/app_text.dart';
import '../../constant/app_color.dart';

class DirectionPage extends StatefulWidget {
  const DirectionPage({super.key});

  @override
  State<DirectionPage> createState() => _DirectionPageState();
}

class _DirectionPageState extends State<DirectionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Color(0xffFAF8F8FF),
        leading: Icon(
          Icons.menu,
          color: Color(0xff000000),
        ),
        title: Text(
          MyString.name,
          style: TextStyle(
            color: Color(0xff000000),
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(radius20),
            right: Radius.circular(radius20),
          ),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                height: 450,
                  width: 360,
                  child: Image.asset("assets/image/map2.png",fit: BoxFit.fill),
              ),
            ],
          ),
          Container(
            height: 260,
            width: 560,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(radius30),
              color: Colors.green,
            ),
            child: Row(crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(CupertinoIcons.minus),
                TextField(
                  decoration: const InputDecoration(
                    hintText: 'Enter Something',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
