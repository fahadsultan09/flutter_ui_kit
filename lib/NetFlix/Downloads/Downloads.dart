


import 'package:flutter/material.dart';

class DownloadScreen extends StatefulWidget {
  @override
  _DownloadScreenState createState() => _DownloadScreenState();
}

class _DownloadScreenState extends State<DownloadScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.save_alt,color: Colors.grey,size: 50.0,),
              SizedBox(height: 30.0,),
               Text("No Downloads Available",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w700),),
            ],
          ),
        ),
      ),
    );
  }
}