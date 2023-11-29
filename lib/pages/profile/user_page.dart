import 'package:flutter/material.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      drawer: Drawer(
        backgroundColor: Colors.yellow,
        child: ListView(children: [
          DrawerHeader(
              decoration: BoxDecoration(color: Colors.yellow),
              child:  Column(
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(width: 40,height: 40,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: Center(child: Icon(Icons.arrow_back_ios))),
                      Container(width: 40,height: 40,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: Center(child: Icon(Icons.settings)))

                    ],
                  )
                ],
              ))

        ]),
      ),
    );
  }
}
