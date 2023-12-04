import 'package:flutter/material.dart';
import 'package:rapido/pages/welcome/pageviewbuilder.dart';

import 'authantication/sign_page_one.dart';
import 'authantication/sign_page_tow.dart';
import 'pages/intro/location_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home://PageViewExample());
        // sginpageone ());
        signpageteo());
  }
}
