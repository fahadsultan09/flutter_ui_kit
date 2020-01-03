

import 'package:flutter/material.dart';

class DribleUI extends StatefulWidget {
  @override
  _DribleUIState createState() => _DribleUIState();
}

class _DribleUIState extends State<DribleUI> {

  
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      
      body: Stack(
        children: <Widget>[
          // Scaffold(
          //   appBar: AppBar(
          //     backgroundColor: Colors.transparent,
          //     leading: Image.asset("assets/_menuIcon.png",fit: BoxFit.cover,),
          //     actions: <Widget>[
          //       Padding(
          //         padding: EdgeInsets.only(right: 10.0),
          //         child: Icon(Icons.notifications_none,color: Colors.white,size: 30.0,),
          //       )
          //     ],
          //   ),
            Container(
              
              child: Stack(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image.asset("assets/_menuIcon.png",fit: BoxFit.cover,),
                      Icon(Icons.notifications_none,color: Colors.white,size: 30.0,),
                    ],
                  ),
                  Container(height: height*1.25/3,width: width,child:Image.asset("assets/MJ.jpg",fit: BoxFit.cover,),),
                  Positioned(
                              left: 0,
                              bottom: 0,
                              height: 100,
                              width: width,
                              child: Container(
                                decoration: BoxDecoration(gradient: LinearGradient(begin: Alignment.bottomCenter,end: Alignment.topCenter,colors: [Colors.black,Colors.transparent])),
                              ),
                          ),
                          
                          Positioned(left: 0,bottom: 0,width: width,height: 100,
                              
                              child:Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(left:8),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      Text("MJ 5",style: TextStyle(fontSize: 50,fontWeight: FontWeight.w500,color: Colors.white,fontFamily: "",),),
                                      Text("ID : 8331902112",style: TextStyle(fontSize: 20,color: Colors.blueGrey,fontWeight: FontWeight.w900),),
        
                                    ],
                                  ),
                                ),
                                Container(margin: EdgeInsets.only(right: 8),decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Colors.white),padding: EdgeInsets.all(8),child: Text("20 %",textAlign: TextAlign.center,),)
                                ],
                              ) 
                          )
                        
                      
                ],
              ),
            ),
          
        ],
      ),
    );
  }
}