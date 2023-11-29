import 'package:flutter/material.dart';
import 'package:rapido/constant/app_images.dart';

class WelcomePageOne extends StatelessWidget {
  const WelcomePageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(backgroundColor: Colors.deepPurple,
        body: Column(
          children: [
            Center(
              child: Image.asset(AppImages.logo),
            ),SizedBox( height: 20,),
            Text("Introducing",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50)),SizedBox(height: 50,),
            Image.asset(AppImages.delivary)
          ],
        ),
      ),
    );
  }
}

//pageview.builder
