import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final text;
  final textType;
  final obscure;
  final Icon icon;
  final _valid;
  CustomTextField(
      this.text, this.textType, this.obscure, this.icon, this._valid);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
      child: TextFormField(
        obscureText: obscure,
        decoration: InputDecoration(
          counterText: ' \n',
          prefixIcon: icon,
          labelText: text,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: BorderSide(),
          ),
          //fillColor: Colors.green
        ),
        // validator: _valid,
        keyboardType: textType,
        style: TextStyle(
          fontFamily: "Poppins",
        ),
      ),
    );
  }
}
