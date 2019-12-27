import 'package:flutter/material.dart';

import 'NetFlix/Home/NetflixHome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Netflix',
      theme: ThemeData(

      ),
      // home: Youtube(),
      home: NetflixHome(),

    );
  }
}
