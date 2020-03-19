
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final text;
  final textType;
  final obscure;
  final Icon icon;
  CustomTextField(this.text, this.textType, this.obscure, this.icon);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
      child: TextFormField(
        obscureText: obscure,
        decoration:  InputDecoration(
          prefixIcon:  icon,
          labelText: text,
          fillColor: Colors.white,
          border:  OutlineInputBorder(
            borderRadius:  BorderRadius.circular(25.0),
            borderSide:  BorderSide(),
          ),
          //fillColor: Colors.green
        ),
        validator: (val) {
          if (val.length == 0) {
            return "is empty";
          } else {
            return null;
          }
        },
        keyboardType: textType,
        style:  TextStyle(
          fontFamily: "Poppins",
        ),
      ),
    );
  }
}
