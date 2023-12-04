import 'package:flutter/material.dart';
import 'package:rapido/constant/app_images.dart';

class signpageteo extends StatefulWidget {
  const signpageteo({super.key});

  @override
  State<signpageteo> createState() => _signpageteoState();
}

class _signpageteoState extends State<signpageteo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(children: [Image.asset(AppImages.logo)],));
  }
}
