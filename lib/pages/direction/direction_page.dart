import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rapido/config/string_config.dart';
import 'package:rapido/constant/app_images.dart';
import 'package:rapido/widget/custom_button.dart';

class DirectionPage extends StatefulWidget {
  const DirectionPage({super.key});

  @override
  State<DirectionPage> createState() => _DirectionPageState();
}

class _DirectionPageState extends State<DirectionPage> {
  bool sheet = true;
  String _selectedTime = "";
  bool openBottomSheet = true;
  bool newsheet = true;
  bool nextsheet = true;
  bool confirmPage = true;


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
                const Row(
                  children: [
                    Text(
                      StringConfig.location,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    height: 30,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color(0xffFFFFFF),
                      boxShadow: CupertinoContextMenu.kEndBoxShadow,
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: StringConfig.search,
                        prefixIcon: Icon(
                          color: Color(0xFFFFECB3),
                          Icons.search,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      Image.asset(
                        AppImages.loc,
                        color: const Color(0xFFFFECB3),
                        height: 20,
                        width: 20,
                      ),
                      const Text(StringConfig.text),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      Image.asset(
                        AppImages.loc,
                        color: const Color(0xFFFFECB3),
                        height: 20,
                        width: 20,
                      ),
                      const Text(StringConfig.set),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      Container(
                        height: 30,
                        width: 324,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xFFFFECB3),
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(30),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(StringConfig.time),
                            Text(
                              StringConfig.dmy,
                              style: const TextStyle(fontSize: 9),
                            ),
                            const Text(StringConfig.clock),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      Text(
                        StringConfig.sdo,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    height: 30,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color(0xffFFFFFF),
                      boxShadow: CupertinoContextMenu.kEndBoxShadow,
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: StringConfig.search,
                        prefixIcon: Icon(
                          color: Color(0xFFFFECB3),
                          Icons.search,
                        ),
                      ),
                    ),
                  ),
                ),
                ListTile(
                  leading: Image.asset(
                    AppImages.loc,
                    height: 20,
                    width: 20,
                    color: const Color(0xFFFFECB3),
                  ),
                  title: const Text(
                    StringConfig.set,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                CustomButton(
                    onTap: () {
                      Navigator.pop(context);
                      if (shouldOpenBottomSheet) {
                        _openBottomSheet(context);
                      } else
                      {

                        // Add logic for other conditions or actions
                        print('Button pressed, but bottom sheet not opened.');
                      }
                    },
                    title: "Continue"),
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
        backgroundColor:  Color(0xffFAF8F8FF),
        leading: Icon(
          Icons.menu,
          color: Color(0xff000000),
        ),
        title: Text(
          StringConfig.nameuser,
          style: TextStyle(
            color: Color(0xff000000),
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(20),
            right: Radius.circular(20),
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
                                            hintText: StringConfig.type,
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
                                              StringConfig.side,
                                              textScaleFactor: 1,
                                            ),
                                            subtitle: Text(StringConfig.city),
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
                                                _openBottomSheet(context);
                                                NewSheet(context);
                                                NextSheet(context);
                                                confirmpage(context);
                                                _selectedTime =
                                                "${picked!.hour}-${picked!
                                                    .minute}";
                                              });
                                            });
                                          },
                                          leading: Icon(
                                              Icons.location_on_sharp,
                                              size: 30),
                                          title: Text(
                                            StringConfig.side,
                                            textScaleFactor: 1,
                                          ),
                                          subtitle: Text(StringConfig.city),
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
                        decoration: BoxDecoration(
                          color: const Color(0xFFF3A81C),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child:  Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.home),
                            Text(StringConfig.place),
                          ],
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
                            Text(StringConfig.work),
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
                            Text(StringConfig.gym),
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

  void _openBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    StringConfig.dl,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ListTile(
                  leading: Icon(Icons.location_on),
                  title: Text("Boys Hostel No.2,Pratap Nagar"),
                  subtitle: Text("Jaipur"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 200),
                child: CustomButton(
                    onTap: () {
                      Navigator.pop(context);
                      if (openBottomSheet) {
                        _openBottomSheet(context);
                      } else {
                        // Add logic for other conditions or actions
                        print('Button pressed, but bottom sheet not opened.');
                      }
                    },
                    title: "Set Pickup location"),
              ),
            ],
          ),
        );
      },
    );
  }

  void NewSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    StringConfig.dl,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ListTile(
                  leading: Icon(Icons.location_on),
                  title: Text("Boys Hostel No.2,Pratap Nagar"),
                  subtitle: Text("Jaipur"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 200),
                child: CustomButton(
                    onTap: () {
                      Navigator.pop(context);
                      if (newsheet) {
                        NewSheet(context);
                      } else {
                        // Add logic for other conditions or actions
                        print('Button pressed, but bottom sheet not opened.');
                      }
                    },
                    title: "Set Destination location"),
              ),
            ],
          ),
        );
      },
    );
  }

  void NextSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text("By continuing you agree to the T & C"),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  height: 130,
                  width: 320,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xFFFFECB3),
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Text(
                              "RIDE DETAILS",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Text(
                              "09:30", style: TextStyle(color: Colors.grey),),
                            SizedBox(width: 10),
                            Icon(
                                Icons.circle_rounded,   color: Color(0xFFFFECB3),
                                size: 10),
                            SizedBox(width: 10),
                            Text("Sector 8,Jaipur"),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Text(
                              "xx:xx", style: TextStyle(color: Color(0xff616A76)),),
                            SizedBox(width: 10),
                            Icon(Icons.arrow_downward_rounded, size: 10),
                            SizedBox(width: 10),
                            Text("IT Park Mansarover,Jaipur"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.electric_bike, size: 20),
                    Text(
                      "Ride", style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(width: 40),
                    Text("(Tuseday 22nd May)"),
                    Text("09:30 AM"),
                  ],
                ),
              ),
              Divider(
                thickness: 1,
                color: Color(0xff050505),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Image.asset("assets/img_3.png"),
                    SizedBox(width: 10),

                    Text("Apply Coupen Code",
                      style: TextStyle(fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
              Divider(
                thickness: 1,
                color: Color(0xff050505),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 70),
                child: CustomButton(
                    onTap: () {
                      Navigator.pop(context);
                      if (nextsheet) {
                        NewSheet(context);
                      } else {
                        // Add logic for other conditions or actions
                        print('Button pressed, but bottom sheet not opened.');
                      }
                    },
                    title: "Schedule a ride"),
              ),
            ],
          ),
        );
      },
    );
  }

  void confirmpage(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text("By continuing you agree to the T & C"),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  height: 130,
                  width: 320,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xFFFFECB3),
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Text(
                              "RIDE DETAILS",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Text(
                              "09:30", style: TextStyle(color: Colors.grey),),
                            SizedBox(width: 10),
                            Icon(
                                Icons.circle_rounded, color: Color(0xFFF3A81C),
                                size: 10),
                            SizedBox(width: 10),
                            Text("Sector 8,Jaipur"),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Text(
                              "xx:xx", style: TextStyle(color: Color(0xff616A76),),),
                            SizedBox(width: 10),
                            Icon(Icons.arrow_downward_rounded, size: 10),
                            SizedBox(width: 10),
                            Text("IT Park Mansarover,Jaipur"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.electric_bike, size: 20),
                    Text(
                      "Ride", style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(width: 40),
                    Text("(Tuseday 22nd May)"),
                    Text("09:30 AM"),
                  ],
                ),
              ),
              Divider(
                thickness: 1,
                color: Color(0xff050505),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Image.asset("assets/img_3.png"),
                    SizedBox(width: 10),

                    Text("Rapido 30",
                      style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(width: 130),
                    Text(
                      "-Rs 30", style: TextStyle(color: Color(0xFFF3A81C),),),
                  ],
                ),
              ),
              Divider(
                thickness: 1,
                color: Color(0xff050505),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 70),
                child: CustomButton(
                    onTap: () {
                      Navigator.pop(context);
                      if (confirmPage) {
                        confirmpage(context);
                      } else {
                        // Add logic for other conditions or actions
                        print('Button pressed, but bottom sheet not opened.');
                      }
                    },
                    title: "Schedule a ride"),
              ),
            ],
          ),
        );
      },
    );
  }
}
