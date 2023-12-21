import 'package:flutter/material.dart';

class LastScreen extends StatefulWidget {
  const LastScreen({super.key});

  @override
  State<LastScreen> createState() => _LastScreenState();
}

class _LastScreenState extends State<LastScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 70),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Terns & Condition",
                  style: TextStyle(
                      color: Color(0xff050505


                      ), fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                   Text("IMPORTANT:"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Roppen Transportation Services Private Limited "),
                  Text("provides technology based services"),
                  Text("for booking two-wheelers to you and you agree to"),
                  Text("obtain certain Services offered by third party"),
                  Text(" drivers or vehicle operators by means"),
                  Text("of the Company’s website and the mobile"),
                  Text("application “Rapido”. All the Services provided by the Company to you would be by"),
                  Text("Company to you would be by means of your"),
                  Text("use of the Platform. These Terms of Use shall"),
                  Text("govern the relationship between you "),
                  Text("and the Company in the course of provision of"),
                  Text("mandate the terms on which"),
                  Text("using the Services will be governed."),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Please read the Terms of Use carefully before"),
                  Text("using the Platform or registering on the Platform"),
                  Text("or accessing any material or information through"),
                  Text("the platform"),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Use of and access to the Platform is offered to"),
                  Text("You upon the condition of acceptance of all the"),
                  Text("terms, conditions and notices contained in this"),
                  Text("Terms of Use and Privacy Policy, along with any"),
                  Text("amendments made by the Company at its sole"),
                  Text("discretion and posted on the Platform from time"),
                  Text("to time."),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
