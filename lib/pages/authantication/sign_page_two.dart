import 'package:flutter/material.dart';
import 'package:rapido/constant/app_images.dart';

class signpagetwo extends StatefulWidget {
  const signpagetwo({super.key});

  @override
  State<signpagetwo> createState() => _signpagetwoState();
}

class _signpagetwoState extends State<signpagetwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(children: [Image.asset(AppImages.logo)],));
  }
}
