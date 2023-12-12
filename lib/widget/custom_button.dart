import 'package:flutter/material.dart';
import 'package:rapido/constant/app_color.dart';

class CustomButton extends StatefulWidget {
  String? title;
   Function()? onTap ;
   CustomButton({super.key,this.title,this.onTap});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap!,
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(color: AppColor.yellow,borderRadius: BorderRadius.circular(8)),
        child: Text(widget.title!),
      ),
    );
  }
}
