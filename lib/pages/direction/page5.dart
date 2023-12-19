import 'package:flutter/material.dart';
import 'package:rapido/constant/icon_page.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFFFFFF),
        leading: AppIcon.backarrow,
        title: Center(
          child: Text(
            "Deliver",
            style: TextStyle(
              color: Color(0xff050505),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
