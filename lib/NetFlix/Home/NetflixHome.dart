import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart' show CarouselSlider;
import 'package:flutter_ui_kit/NetFlix/Downloads/Downloads.dart';
import 'package:flutter_ui_kit/NetFlix/Home/NetflixMovies.dart';
import 'package:flutter_ui_kit/NetFlix/Home/NetflixUtils.dart';
import 'package:flutter_ui_kit/NetFlix/Home/SeeAll.dart';


class NetflixHome extends StatefulWidget {
  @override
  _NetflixHomeState createState() => _NetflixHomeState();
}

class _NetflixHomeState extends State<NetflixHome> {
int index = 0;

  @override
  void initState() {
    index = 0;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          top: true,
          child: Scaffold(
        
        body: Row(
          children: <Widget>[
            getNavigation(context),
            Container(
              width: MediaQuery.of(context).size.width-60,
              child: ListView(
                children: <Widget>[
                  SizedBox(
                    height: 20.0,
                  ),
                  getHeaderTabs(index),
                  SizedBox(height: 20.0,),
                  CarouselSlider(
      height: 300.0,
      viewportFraction: 0.8,
      aspectRatio: 2.0,
      autoPlay: true,
      enlargeCenterPage: true,
      items: movies.map(
        (movie) {
          return GestureDetector(
                      onTap: (){
                        Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => MoviesScreen(movie)),
  );
                      },
                      child: Container(
              margin: EdgeInsets.all(5.0),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                child: Image.asset(
                  movie["img"],
                  fit: BoxFit.cover,
                  width: 250.0,
                ),
              ),
            ),
          );
        },
      ).toList(),
    ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15,vertical: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Trending",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20.0),),
                        GestureDetector(
                          onTap: (){
                            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>SeeAll()));
                          },
                          child: new Row(
                            children: <Widget>[
                              Text("See All"),
                              Icon(Icons.arrow_forward,),
                            ],
                          ),
                        )
                    ],),
                  ),
                  getTrendingItems(context),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


Widget getNavigation(BuildContext context){
  return Container(
              width: MediaQuery.of(context).size.width/6,
              color: Colors.black,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 50.0),
                    child: Image.asset("assets/images/Netflix.png",fit: BoxFit.cover,),
                  ),
                  Expanded(child: Container(),),
                  GestureDetector(onTap: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>NetflixHome()));
                  },
                  child: getMenuButton(active:true,icon: Icons.home),),

                  GestureDetector(onTap: (){
                                       },
                  child: getMenuButton(active:false,icon: Icons.search),),

                  GestureDetector(onTap: (){
                                       },
                  child: getMenuButton(active:false,icon: Icons.slideshow),),

                  GestureDetector(onTap: (){
                                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DownloadScreen()));

                                       },
                  child: getMenuButton(active:false,icon: Icons.save_alt),),

                  GestureDetector(onTap: (){
                                       },
                  child: getMenuButton(active:false,icon: Icons.menu),),

                
            
                  
                  
                ],
              ),
            );
}

Widget getMenuButton({bool active,IconData icon}){

  return Container(
                    decoration: BoxDecoration(
                      border: Border(right: BorderSide(color: active? Colors.red : Colors.black,width: 3))
                    ),
                    width:double.infinity,
                    margin: EdgeInsets.only(bottom: 10.0),
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: Icon(icon,color: active?Colors.white:Colors.grey,),
                  );

}
Widget getHeaderTabs(int index){

return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Films",style: TextStyle(fontWeight: FontWeight.w500),),
                            SizedBox(height: 10.0,),
                            CircleAvatar(backgroundColor: index ==0 ? Colors.red:Colors.white,radius: 3.0,)
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Series",style: TextStyle(fontWeight: FontWeight.w500),),
                            SizedBox(height: 10.0,),
                            CircleAvatar(backgroundColor: index ==1 ? Colors.red:Colors.white,radius: 3.0,)
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("My List",style: TextStyle(fontWeight: FontWeight.w500),),
                            SizedBox(height: 10.0,),
                            CircleAvatar(backgroundColor:  index ==2 ? Colors.red:Colors.white,radius: 3.0,)
                          ],
                        ),
                      )
                    ],
                  );

}

Widget getTrendingItems(BuildContext context){
  return Container(
                    height: 190,
                    width: MediaQuery.of(context).size.width-60,
                    child: ListView.builder(
                      // padding: EdgeInsets.only(left: 10),
                      scrollDirection: Axis.horizontal,
                      itemCount: trending.length,
                      itemBuilder: (context,index){
                        return Container(
                          width: 120,
                          margin:EdgeInsets.only(left: 5),
                          decoration: BoxDecoration(
                            // boxShadow: BoxShadow(blurRadius: 10.0),
                            image: DecorationImage(
                              image: AssetImage(trending[index]["img"]),
                              fit: BoxFit.cover,
                            )
                          ),
                        );
                      },
                    ),
                  );
}


final CarouselSlider autoPlaySlider = CarouselSlider(
      height: 300.0,
      viewportFraction: 0.8,
      aspectRatio: 2.0,
      autoPlay: true,
      enlargeCenterPage: true,
      items: movies.map(
        (movie) {
          return Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              child: Image.asset(
                movie["img"],
                fit: BoxFit.cover,
                width: 250.0,
              ),
            ),
          );
        },
      ).toList(),
    );
