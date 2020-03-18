import 'package:flutter/material.dart';
import 'package:flutterchat/component/custom_textField.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign up'),
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
                child: Center(
                  child: SingleChildScrollView(
                    child: Form(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Container(
                            height: 50,
                            child: Image.asset('assets/images/logo.png'),
                          ),
                          CustomTextField('email', TextInputType.emailAddress,
                              false, Icon(Icons.email)),
                          CustomTextField(
                            'password',
                            TextInputType.text,
                            true,
                            Icon(Icons.lock),
                          ),
                           CustomTextField(
                            'verify password',
                            TextInputType.text,
                            true,
                            Icon(Icons.lock),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: FlatButton(
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(18.0),
                              ),
                              color: Theme.of(context).primaryColor,
                              textColor: Colors.black,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 12),
                              onPressed: () {
                                Navigator.pushReplacementNamed(
                                    context, '/chat_room');
                              },
                              child: Text(
                                "Sign up".toUpperCase(),
                                style: TextStyle(
                                  fontSize: 20.0,
                                ),
                              ),
                            ),
                          ),
                           Container(
                            alignment:Alignment.centerRight,
                            width: double.infinity,
                            margin: EdgeInsets.only(top:0),
                            child: FlatButton(child: Text("Sign up",style: TextStyle(color: Colors.deepOrange),),onPressed: ()=> Navigator.pushReplacementNamed(
                                    context, '/login')),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
