import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rapido/constant/app_images.dart';
import 'package:rapido/constant/app_sizes.dart';
import 'package:rapido/constant/app_text.dart';
import 'package:flutter_holo_date_picker/flutter_holo_date_picker.dart';

class DirectionPage extends StatefulWidget {
  const DirectionPage({super.key});

  @override
  State<DirectionPage> createState() => _DirectionPageState();
}

class _DirectionPageState extends State<DirectionPage> {
  bool sheet = true;
  String _selectedTime = "";
  void _handleButtonPress(BuildContext context) {
    // Your condition check
    bool shouldOpenBottomSheet = true; // Change this condition as needed

    if (shouldOpenBottomSheet) {
      showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          // The content of your bottom sheet
          return Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      MyString.location,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    height: 30,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      boxShadow: CupertinoContextMenu.kEndBoxShadow,
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: MyString.search,
                        prefixIcon: Icon(
                          color: Color(0xFFFFECB3),
                          Icons.search,
                        ),
                      ),
                    ),
                  ),
                ),
                Image.asset(
                    AppImages.loc,
                    color: Colors.yellow,
                ),
              ],
            ),
          );
        },
      );
    }
  }

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
          Container(
            height: 400,
            width: double.infinity,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                    width: double.infinity,
                    child: Image.asset(AppImages.map, fit: BoxFit.cover)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return StatefulBuilder(
                                builder: (context, setState) {
                              return sheet
                                  ? Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          const TextField(
                                            decoration: InputDecoration(
                                              prefixIcon: Icon(
                                                Icons.search,
                                                color: Color(0xFFFFECB3),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFFFFECB3),
                                                ),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(30)),
                                              ),
                                              hintText: MyString.type,
                                              border: OutlineInputBorder(),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 20),
                                            child: ListTile(
                                              onTap: () {
                                                setState(() {
                                                  sheet = false;
                                                });
                                              },
                                              leading: Icon(
                                                  Icons.location_on_sharp,
                                                  size: 30),
                                              title: Text(
                                                MyString.side,
                                                textScaleFactor: 1,
                                              ),
                                              subtitle: Text(MyString.city),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  : Column(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(top: 20),
                                          child: ListTile(
                                            onTap: () {
                                              setState(() async {
                                                sheet = false;
                                                final TimeOfDay? picked =
                                                    await showTimePicker(
                                                  context: context,
                                                  initialTime: TimeOfDay.now(),
                                                );
                                                setState(() {
                                                  _handleButtonPress(context);
                                                  _selectedTime =
                                                      "${picked!.hour}-${picked!.minute}";
                                                });
                                              });
                                            },
                                            leading: Icon(
                                                Icons.location_on_sharp,
                                                size: 30),
                                            title: Text(
                                              MyString.side,
                                              textScaleFactor: 1,
                                            ),
                                            subtitle: Text(MyString.city),
                                            trailing: Text(_selectedTime),
                                          ),
                                        ),
                                        Divider(
                                          thickness: 1,
                                          color: Color(0xff616A76),
                                        ),
                                      ],
                                    );
                            });
                          },
                        );
                      },
                      child: Container(
                        height: 60,
                        width: 60,
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.home),
                            Text(MyString.place),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xFFF3A81C),
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  TextField(
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder()),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                      child: Container(
                        height: 60,
                        width: 60,
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.chair),
                            Text(MyString.work),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xFFF3A81C),
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                      child: Container(
                        height: 60,
                        width: 60,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.sports_gymnastics),
                            Text(MyString.gym),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFFF3A81C),
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
