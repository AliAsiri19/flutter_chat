import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(title: Text('Login'),
      centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: Card(
              color: Colors.grey[200],
              child: Container(
                height: height * 0.7,
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      height: 50,
                      child: Image.asset('assets/images/logo.png'),),              
                    CustomTextField('email', TextInputType.emailAddress, false,Icon(Icons.email)),
                    CustomTextField('password', TextInputType.text, true,Icon(Icons.lock),),
                    Container(
                      margin: EdgeInsets.only(top: 40),
                      child: FlatButton(
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(18.0),
                        ),
                        color: Theme.of(context).primaryColor,
                        textColor: Colors.black,
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/homePage');
                        },
                        child: Text(
                          "login".toUpperCase(),
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}


class CustomTextField extends StatelessWidget {
  final text;
  final textType;
  final obscure;
  final Icon icon;
  CustomTextField(this.text, this.textType, this.obscure,this.icon);
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
