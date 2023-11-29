import 'package:flutter/material.dart';

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
        leading: Icon(Icons.list,color: Colors.black,),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
      ),
    );
  }
}
