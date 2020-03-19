import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterchat/component/custom_textField.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
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
                            margin: EdgeInsets.only(bottom: 30),
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
                          Row(
                            children: <Widget>[
                              Checkbox(
                                value: false,
                                onChanged: (_) {},
                              ),
                              Text('Remember me.')
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 40),
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
                                "login".toUpperCase(),
                                style: TextStyle(
                                  fontSize: 20.0,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerRight,
                            width: double.infinity,
                            margin: EdgeInsets.only(top: 20),
                            child: FlatButton(
                                child: Text(
                                  "Sign up",
                                  style: TextStyle(color: Colors.deepOrange),
                                ),
                                onPressed: () => Navigator.pushReplacementNamed(
                                    context, '/sign_up')),
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
