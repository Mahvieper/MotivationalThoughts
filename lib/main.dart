import 'package:flutter/material.dart';

import 'screens/login_screen.dart';
import 'screens/splash_screen.dart';

void main() => runApp(new MaterialApp(home:MyApp(),
  routes: <String, WidgetBuilder>{
    '/LoginPage': (BuildContext context) => new LoginPage()
  },
  debugShowCheckedModeBanner: false,
));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen();
  }
}
