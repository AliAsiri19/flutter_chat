
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
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 20),
      child: TextFormField(
        obscureText: obscure,
        decoration: new InputDecoration(
          suffixIcon: icon,
          labelText: text,
          fillColor: Colors.white,
          border: new OutlineInputBorder(
            borderRadius: new BorderRadius.circular(25.0),
            borderSide: new BorderSide(),
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
        style: new TextStyle(
          fontFamily: "Poppins",
        ),
      ),
    );
  }
}
