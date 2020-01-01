import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/CloudEnergy/Home.dart';
import 'package:flutter_ui_kit/NetFlix/Home/NetflixHome.dart';



class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(color: Colors.red,onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>NetflixHome()));
              },child: Text("Netflix"),),
              RaisedButton(color: Colors.blue,
                onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CloudEnergyHome()));
              },child: Text("Cloud Energy"),)
            ],
          ),
        ),
      ),
    );
  }
}