import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
  CustomButton({required this.text, this.ontap});
  String text;
  Function()? ontap;
  @override
  Widget build(BuildContext context) {
    
    return GestureDetector(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(8),
        ),
        width: double.infinity,
        height: 60,
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
