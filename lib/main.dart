import 'package:flutter/material.dart';

import 'package:flutter_ui_kit/landingPage.dart';
import 'package:flutter_ui_kit/newFile.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter UI Kit',
      theme: ThemeData(
      ),
      // home: LandingPage(),
      home: DribleUI(),
    );
  }
}

