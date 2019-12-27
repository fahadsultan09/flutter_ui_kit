import 'package:flutter/material.dart';


class MoviesScreen extends StatefulWidget {

  var _movies;
  MoviesScreen(this._movies);
  @override
  _MoviesScreenState createState() => _MoviesScreenState(this._movies);
}

class _MoviesScreenState extends State<MoviesScreen> {

  var _movies;
  _MoviesScreenState(this._movies);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                child: Image.asset(_movies["img"],fit: BoxFit.cover,),
                height: MediaQuery.of(context).size.height*1.5/3,
                width: MediaQuery.of(context).size.width,
                  ),
                  Positioned(
                    bottom: 1,
                    left: 5,
                    child: Container(
                      width: 60.0,
                      height: 60.0,
                      child: Image.asset("assets/YoutubeLogo.jpg",),
                    ),
                  ),
                ],
              ),
               Container(
                 height: MediaQuery.of(context).size.height - MediaQuery.of(context).size.height*1.5/3,
                 width: MediaQuery.of(context).size.width,
                 color: Colors.black,
                 child: Padding(
                   padding: EdgeInsets.all(10.0),
                   child: Row(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: <Widget>[
                     
                     getIcons(Icons.thumb_up,"Like"),
                     getIcons(Icons.add,"Wish List"),
                     getIcons(Icons.share,"Share"),
                     getIcons(Icons.save_alt,"Download"),
                     
                   ],
                 ),
                 )
               )
            ],

          ),
      ),
    );
  }
}


Widget getIcons(IconData icon,String text){

return Column(

  children: <Widget>[
    Icon(icon,color: Colors.grey,size: 30.0,),
              SizedBox(height: 10.0,),
               Text(text,style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w700),),
  ],
);

}

// Padding(
//                  padding: EdgeInsets.all(30.0),
//                  child: Text(_movies["name"],style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w800,fontSize: 20.0),),
//                ),