import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterchat/component/custom_textField.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return ChangeNotifierProvider<RememberMeCheckBoxState>(
      create: (context) => RememberMeCheckBoxState(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Login'),
          centerTitle: true,
        ),
        body: Container(
          child: Center(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: Card(
                color: Colors.grey[300],
                child: Container(
                  height: height * 0.90,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Center(
                    child: SingleChildScrollView(
                      child: Form(
                        child: Column(
                          // mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Container(
                              height: 50,
                              margin: EdgeInsets.only(bottom: 10),
                              child: Image.asset('assets/images/logo.png'),
                            ),
                            CustomTextField(
                              'email',
                              TextInputType.emailAddress,
                              false,
                              Icon(Icons.person),
                              true,
                            ),
                            CustomTextField(
                              'password',
                              TextInputType.text,
                              true,
                              Icon(Icons.lock),
                              true,
                            ),
                            // add Consumer
                            Consumer<RememberMeCheckBoxState>(
                              builder: (context, state, child) {
                                return CheckboxListTile(
                                  controlAffinity:
                                      ListTileControlAffinity.leading,
                                  title: Text('Remember Me!'),
                                  value: state.getCheckBoxState,
                                  onChanged: (pressState) {
                                    state.setCheckBoxState(pressState);
                                  },
                                );
                              },
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: FlatButton(
                                onPressed: () {
                                  // page to change password
                                },
                                child: Text('Forget password ?'),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              child: FlatButton(
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(10.0),
                                ),
                                color: Theme.of(context).primaryColor,
                                textColor: Colors.black,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 12),
                                onPressed: () {
                                  // save checkbox preference .
                                  Navigator.pushNamed(context, '/chat_room');
                                },
                                child: Text(
                                  "login".toUpperCase(),
                                  style: TextStyle(
                                    fontSize: 18.0,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerRight,
                              width: double.infinity,
                              margin: EdgeInsets.only(top: 5),
                              child: FlatButton(
                                child: Text(
                                  "Sign up",
                                  style: TextStyle(color: Colors.deepOrange),
                                ),
                                onPressed: () =>
                                    Navigator.pushNamed(context, '/sign_up'),
                              ),
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
      ),
    );
  }
}

class RememberMeCheckBoxState with ChangeNotifier {
  bool _state = false;

  get getCheckBoxState => _state;

  void setCheckBoxState(bool state) {
    _state = state;
    notifyListeners();
  }
}
