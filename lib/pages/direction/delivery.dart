import 'package:flutter/material.dart';
import 'package:rapido/constant/icon_page.dart';
import 'package:rapido/pages/direction/page5.dart';
import 'package:rapido/pages/direction/termcon.dart';
import 'package:rapido/widget/custom_button.dart';

class DeliveryPage extends StatefulWidget {
  const DeliveryPage({super.key});

  @override
  State<DeliveryPage> createState() => _DeliveryPageState();
}

class _DeliveryPageState extends State<DeliveryPage> {
  bool waySheet = true;
  bool nextSheet = true;
  bool clickSheet = true;
  bool nearSheet = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffFFFFFF),
        leading: AppIcon.backarrow,
        title: const Center(
          child: Text(
            "Deliver",
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
              color: const Color(0xffFFFFFF),
              child: Container(
                height: 470,
                width: 300,
                decoration: const BoxDecoration(
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
                          const SizedBox(width: 10),
                           const Column(
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
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                            border: Border.all(
                              color: const Color(0xFFF3A81C),
                            ),
                          ),
                          child: const Row(
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
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                            border: Border.all(
                              color: const Color(0xFFF3A81C),
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(top: 10),
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
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                            border: Border.all(
                              color: const Color(0xFFF3A81C),
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(12.0),
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
                                  padding: EdgeInsets.only(top: 10),
                                  child: Row(
                                    children: [
                                      Text(
                                        "09:30",
                                        style: TextStyle(color: Color(0xffD5DDE0)),
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
                                  padding: EdgeInsets.only(top: 20),
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
                    if (waySheet) {
                      waysheet(context);
                    } else {
                      // Add logic for other conditions or actions
                    }
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MapPage(),
                      ),
                    );
                  },
                  title: "Done"),
            ),
          ],
        ),
      ),
    );
  }

  void waysheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(50),
          child: Column(
            children: [
              const Row(
                children: [
                  Text("Sorry, your ride has been cancelled by"),
                ],
              ),
              const Row(
                children: [
                  Text("the driver."),
                ],
              ),
              const Row(
                children: [
                  Text("What do you want to do?"),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color(0xFFF3A81C),
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 10),
                        child: const Text(
                          'Stop Searching',
                          style: TextStyle(color: Color(0xff050505), fontSize: 13.0),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                        if (clickSheet) {
                          clicksheet(context);
                        } else {
                          // Add logic for other conditions or actions
                        }
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color(0xFFF3A81C),
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 10),
                        child: const Text(
                          'Search Again',
                          style: TextStyle(color: Color(0xff050505), fontSize: 13.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void clicksheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const Row(
                children: [
                  Text("Are you sure you want to cancel this"),
                ],
              ),
              const Row(
                children: [
                  Text("row?"),
                ],
              ),
              Row(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0xFFF3A81C),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 10),
                      child: const Text(
                        'No',
                        style: TextStyle(color: Color(0xff050505), fontSize: 13.0),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      if (nextSheet) {
                        nextsheet(context);
                      } else {
                        // Add logic for other conditions or actions
                      }
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0xFFF3A81C),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 10),
                      child: const Text(
                        'Yes',
                        style: TextStyle(color: Color(0xff050505), fontSize: 13.0),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  void nextsheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const Row(
                children: [
                  Text("Sorry, this ride has been cancelled by the"),
                ],
              ),
              const Row(
                children: [
                  Text("driver because you did not appear at the"),
                ],
              ),
              const Row(
                children: [
                  Text("designated location. A penalty will be"),
                ],
              ),
              const Row(
                children: [
                  Text("charged in your next trip."),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color(0xFFF3A81C),
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 10),
                        child: const Text(
                          'Ok',
                          style: TextStyle(color: Color(0xff050505), fontSize: 13.0),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                        if (nearSheet) {
                          nearsheet(context);
                        } else {
                          // Add logic for other conditions or actions
                        }
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color(0xFFF3A81C),
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 10),
                        child: const Text(
                          'Raise issue',
                          style: TextStyle(color: Color(0xff050505), fontSize: 13.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void nearsheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const Row(
                children: [
                  Text("Are you sure you want to cancel this"),
                ],
              ),
              const Row(
                children: [
                  Text("ride?"),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color(0xFFF3A81C),
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 10),
                        child: const Text(
                          'No',
                          style: TextStyle(color: Color(0xff050505), fontSize: 13.0),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LastScreen(),
                          ),
                        );
                        if (nearSheet) {
                          nearsheet(context);
                        } else {
                          // Add logic for other conditions or actions
                        }
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color(0xFFF3A81C),
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 10),
                        child: const Text(
                          'Yes',
                          style: TextStyle(color: Color(0xff050505), fontSize: 13.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
