import 'package:animated_splash/animated_splash.dart';
import 'package:flutter/material.dart';
import 'package:flutterchat/page/chat_room.dart';
import 'package:flutterchat/page/sign_up.dart';

import 'page/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        
      ),
      home: AnimatedSplash(
        imagePath: 'assets/images/logo.png',
        home: LoginPage(),
        duration: 2500,
        type: AnimatedSplashType.StaticDuration,
      ),
      routes: {
         '/home_page': (context) => MyHomePage(title: 'Flutter Demo Home Page'),
        '/login': (context) => LoginPage(),
        '/sign_up': (context) => SignUp(),
        '/chat_room': (context) => ChatRoom(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Text(
          'Test only 007',
          style: TextStyle(fontSize: 50),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _globalKey.currentState.showSnackBar(
              SnackBar(content: Text('Floating button pressed.')));
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
