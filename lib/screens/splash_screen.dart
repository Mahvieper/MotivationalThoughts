import 'package:flutter/material.dart';
import 'package:motivational_thoughts/auth/authentication.dart';
import 'dart:async';

import 'package:motivational_thoughts/screens/auth_screen.dart';
import 'package:motivational_thoughts/screens/root_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    startTime();
  }
  startTime() async {
    var _duration = new Duration(seconds: 4);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    //Navigator.of(context).pushReplacementNamed('/LoginPage');
    Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (context) =>  RootPage(auth: new Auth())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Center(
        child: new Image.asset('assets/SplashLogo.png'),
      ),
    );
  }
}
