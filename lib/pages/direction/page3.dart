import 'package:flutter/material.dart';
import 'package:rapido/config/string_config.dart';
import 'package:rapido/constant/icon_page.dart';
import 'package:rapido/pages/direction/dask_borad.dart';
import 'package:rapido/pages/direction/page2.dart';
import 'package:rapido/pages/direction/promocode.dart';
import 'package:rapido/widget/custom_button.dart';

class RideSchedule extends StatefulWidget {
  const RideSchedule({super.key});

  @override
  State<RideSchedule> createState() => _RideScheduleState();
}

class _RideScheduleState extends State<RideSchedule> {
  bool OpenBottomSheet = true;
  bool NewSheet = true;
  bool ConSheet = true;
  bool ViewSheet=true;
  String a = "";

  // function to handle changes in radio button value
  void handleRadioValueChanged(String? value) {
    setState(() {
      a = value ?? "0";
    });
  }

  int _selectedValue = 0;

  // function to handle changes in custom radio button value
  void _onRadioValueChanged(int value) {
    setState(() {
      _selectedValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFFFFFF),
        leading: AppIcon.backarrow,
        title: Center(
          child: Text(
            "Ride Scheduled",
            style: TextStyle(
              color: Color(0xff050505),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Card(
              elevation: 10,
              color: Color(0xffFFFFFF),
              child: Container(
                height: 470,
                width: 300,
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/img_6.png"),
                          SizedBox(width: 10),
                          Column(
                            children: [
                              Text(
                                "Your ride has been",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Scheduled Successfully",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Container(
                          height: 50,
                          width: 270,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                            border: Border.all(
                              color: Color(0xFFF3A81C),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "DETAILS",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Tuseday,22nd may",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 8),
                              ),
                              Text(
                                "09:30",
                                style: TextStyle(
                                    color: Color(0xFFF3A81C), height: 1),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Container(
                          height: 90,
                          width: 270,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                            border: Border.all(
                              color: Color(0xFFF3A81C),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      "We’ll send you an alert 15 minutes prior",
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      "to the time you want a captain to arrive",
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      "at your location.",
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      "Ride Details will be shared once a ",
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      "Captain is assigned to you.",
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Container(
                          height: 120,
                          width: 270,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                            border: Border.all(
                              color: Color(0xFFF3A81C),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "RIDE DETAILS",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Row(
                                    children: [
                                      Text(
                                        "09:30",
                                        style: TextStyle(color: Color(0xffD5DDE0),),
                                      ),
                                      SizedBox(width: 10),
                                      Icon(Icons.circle,
                                          color: Color(0xFFF3A81C), size: 8),
                                      SizedBox(width: 10),
                                      Text("Sector 8 Jaipur"),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Row(
                                    children: [
                                      Text(
                                        "ETA",
                                        style: TextStyle(color: Color(0xffD5DDE0),),
                                      ),
                                      SizedBox(width: 17),
                                      Icon(
                                        Icons.arrow_downward_rounded,
                                        size: 12,
                                      ),
                                      SizedBox(width: 5),
                                      Text("IT Park Mansarovar,Jaipur"),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 120),
              child: CustomButton(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Page4(),
                        ));
                    if (OpenBottomSheet) {
                      _openBottomSheet(context);
                    } else {
                      // Add logic for other conditions or actions
                    }
                  },
                  title: "Done"),
            ),
          ],
        ),
      ),
    );
  }

  void _openBottomSheet(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Text(
                      StringConfig.pickup,
                      style: TextStyle(
                          color: Color(0xff050505), fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                height: 30,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  border: Border.all(
                    color: Color(0xFFFFECB3),
                  ),
                  //boxShadow: CupertinoContextMenu.kEndBoxShadow,
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search Location",
                    prefixIcon: Icon(
                      color: Color(0xFFFFECB3),
                      Icons.search,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Icon(Icons.add),
                    Text(StringConfig.details),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Color(0xFFF3A81C),
                    ),
                  ],
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter House no./Flat no.",
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter Mobile no.",
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Landmark (Optional)",
                ),
              ),
              ExpansionTile(
                title: Text(
                  "Select type of packege",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.circle_outlined,
                        size: 10,
                        color: Color(0xFFF3A81C),
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text("Food"),
                              SizedBox(width: 120),
                              Icon(
                                Icons.circle_outlined,
                                size: 10,
                                color: Color(0xFFF3A81C),
                              ),
                              Text("Electronics"),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.circle_outlined,
                        size: 10,
                        color: Color(0xFFF3A81C),
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text("Medicines"),
                              SizedBox(width: 87),
                              Icon(
                                Icons.circle_outlined,
                                size: 10,
                                color: Color(0xFFF3A81C),
                              ),
                              Text("Clothes"),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.circle_outlined,
                        size: 10,
                        color: Color(0xFFF3A81C),
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text("Groceries"),
                              SizedBox(width: 92),
                              Icon(
                                Icons.circle_outlined,
                                size: 10,
                                color: Color(0xFFF3A81C),
                              ),
                              Text("Others"),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.circle_outlined,
                        size: 10,
                        color: Color(0xFFF3A81C),
                      ),
                      Text("Documents"),
                    ],
                  ),
                ],
              ),
              CustomButton(
                  onTap: () {
                    Navigator.pop(context);
                    if (NewSheet) {
                      _newsheet(context);
                    } else {
                      // Add logic for other conditions or actions
                    }
                  },
                  title: "Continue"),
            ],
          ),
        );
      },
    );
  }

  void _newsheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Text(
                      StringConfig.parsel,
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                height: 30,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  border: Border.all(
                    color: Color(0xFFFFECB3),
                  ),
                  //boxShadow: CupertinoContextMenu.kEndBoxShadow,
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search Location",
                    prefixIcon: Icon(
                      color: Color(0xFFFFECB3),
                      Icons.search,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Icon(Icons.add),
                    Text(StringConfig.details),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Color(0xFFF3A81C),
                    ),
                  ],
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter House no./Flat no.",
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter Mobile no.",
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Landmark (Optional)",
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Text(
                      "Pay at",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 40,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        border: Border.all(color: Color(0xFFF3A81C),),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for (int index = 0; index < 1; ++index)
                            Radio(
                              value: "pickup",
                              toggleable: true,
                              groupValue: a,
                              onChanged: (value) {
                                setState(() {
                                  a = value ?? "0";
                                });
                              },
                            ),
                          Text("Pickup"),
                          for (int index = 0; index < 1; ++index)
                            Radio(
                              value: "Drop",
                              groupValue: a,
                              onChanged: (value) {
                                setState(() {
                                  a = value ?? "0";
                                });
                              },
                            ),
                          Text("Drop"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: CustomButton(
                    onTap: () {
                      Navigator.pop(context);
                      if (ConSheet) {
                        _consheet(context);
                      } else {
                        // Add logic for other conditions or actions
                      }
                    },
                    title: "Continue"),
              ),
            ],
          ),
        );
      },
    );
  }

  void _consheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      StringConfig.label,
                      style: TextStyle(
                        color: Color(0xff050505),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 110,
                width: 300,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xFFF3A81C),
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: [
                          Text(
                            "DELIVERY DETAILS",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.circle,
                            size: 10,
                            color: Color(0xFFF3A81C),
                          ),
                          SizedBox(width: 10),
                          Text(StringConfig.adrres),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.arrow_downward_rounded,
                            size: 12,
                          ),
                          SizedBox(width: 10),
                          Text(StringConfig.adrres2),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset("assets/Group 33.png"),
                    Text(StringConfig.time),
                    Text(StringConfig.rs),
                    Icon(
                      Icons.info_outline,
                      size: 12,
                      color: Color(0xFFF3A81C),
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 1,
                color: Color(0xff616A76),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    Image.asset("assets/img_8.png"),
                    SizedBox(width: 10),
                    Text(StringConfig.coupen),
                  ],
                ),
              ),
              Divider(
                thickness: 1,
                color: Color(0xff616A76),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("****8295"),
                    Text("Prepaid"),
                  ],
                ),
              ),
              Divider(
                thickness: 1,
                color: Color(0xff616A76),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: CustomButton(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ScreenPage(),
                        ),
                      );
                    },
                    title: "Confirm Packege Delivery"),
              ),
            ],
          ),
        );
      },
    );
  }
}
