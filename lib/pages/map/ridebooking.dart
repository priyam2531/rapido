import 'package:flutter/material.dart';
import 'package:rapido/constant/app_images.dart';

class RideBooking extends StatefulWidget {
  const RideBooking({super.key});

  @override
  State<RideBooking> createState() => _RideBookingState();
}

class _RideBookingState extends State<RideBooking> {
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
        title: Text("Enter Destination", style: TextStyle(color: Colors.black)),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                  height: 280,
                  width: 390,
                  child: Image.asset(AppImages.map, fit: BoxFit.cover)),
            ],
          ),
        ],
      ),
    );
  }
}
