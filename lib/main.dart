import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/CloudEnergy/Home.dart';
import 'package:flutter_ui_kit/landingPage.dart';

import 'NetFlix/Home/NetflixHome.dart';

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
      home: LandingPage(),

    );
  }
}

