import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({this.hinttext, this.obscuretext, this.onchanged,this.inputtype});
  Function(String)? onchanged;
  String? hinttext;
  bool? obscuretext;
  TextInputType ? inputtype;
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: inputtype,
      //obscureText: obscuretext!,
      onChanged: onchanged,
      decoration: InputDecoration(
          hintText: hinttext,
          hintStyle: TextStyle(color: Colors.black),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Colors.white))),
    );
  }
}
