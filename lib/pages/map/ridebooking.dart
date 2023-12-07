import 'package:flutter/material.dart';
import 'package:rapido/constant/app_images.dart';
import 'package:rapido/widget/custom_button.dart';

class RideBooking extends StatefulWidget {
  const RideBooking({super.key});

  @override
  State<RideBooking> createState() => _RideBookingState();
}

class _RideBookingState extends State<RideBooking> {
  bool isSelected = false;
  bool isSheet = true;
  var city;
  var state;
  List City = [
    "Vaishali Nagar",
    "83-Pratap Nagar",
    "67-Haldi Ghati Marg",
    "Inox Amrpali Circle"
  ];
  List Data = ["jaipur", "jaipur", "jaipur", "jaipur"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.arrow_back_ios_new,
          color: Colors.black,
        ),
        title: const Text("Enter Destination",
            style: TextStyle(color: Colors.black)),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                    height: 280,
                    child: Image.asset(AppImages.map, fit: BoxFit.cover)),
              ),
            ],
          ),
          MaterialButton(
            color: Colors.red,
            onPressed: () {
              showModalBottomSheet(
                context: context,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                builder: (context) {
                  return StatefulBuilder(builder: (context, setState) {
                    return isSheet
                        ? Column(
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: TextField(
                                      onTap: () {
                                        setState(() {
                                          isSelected = !isSelected;
                                          print(isSelected);
                                        });
                                      },
                                      decoration: InputDecoration(
                                        prefixIcon: Icon(Icons.search,
                                            color: Colors.amberAccent),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.amberAccent),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                        ),
                                        hintText: "Search Destination",
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Row(
                                      children: [
                                        Image.asset(AppImages.pin),
                                        Text("Set on a map",
                                            style: TextStyle(
                                                color: Colors.yellow,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 25),
                                    child: Row(
                                      children: [
                                        Text("RECENTS",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Expanded(
                                child: ListView(
                                  children: isSelected
                                      ? List.generate(
                                          City.length,
                                          (index) {
                                            return ListTile(
                                              leading: Icon(Icons.location_on),
                                              title: Text(City[index]),
                                              subtitle: Text(Data[index]),
                                              onTap: () {
                                                setState(() {
                                                  isSheet = false;
                                                  city = City[index];
                                                  state = Data[index];
                                                });
                                              },
                                            );
                                          },
                                        )
                                      : [],
                                ),
                              )
                            ],
                          )
                        : Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(40.0),
                                child: Text("Destination Location",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18)),
                              ),
                              ListTile(
                                leading: Icon(Icons.location_on),
                                title: Text(city),
                                subtitle: Text(state),
                              ),
                              CustomButton(onTap: () {
                              },title: "Set destination location",),
                            ],
                          );
                  });
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
