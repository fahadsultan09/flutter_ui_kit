import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/landingPage.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter UI Kit',
      theme: ThemeData(
        accentColor: Colors.black,
        brightness: Brightness.dark,
      ),
      darkTheme: ThemeData(brightness: Brightness.dark,),
      // home: LandingPage(),
      home: LandingPage(),
    );
  }
}

