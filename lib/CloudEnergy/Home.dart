
import 'package:flutter_ui_kit/CloudEnergy/ProductCoursel_first.dart';
import 'package:flutter_ui_kit/CloudEnergy/ShoppingCart.dart';
import 'package:flutter_ui_kit/CloudEnergy/Utils.dart';
import 'package:carousel_slider/carousel_slider.dart' show CarouselSlider;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CloudEnergyHome extends StatefulWidget {
  @override
  _CloudEnergyHomeState createState() => _CloudEnergyHomeState();
}

class _CloudEnergyHomeState extends State<CloudEnergyHome> {

  List _list = ["assets/banner1.jpg","assets/banner2.jpg","assets/banner3.png","assets/banner4.jpg"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: ,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
          title: Text("Cloud Energy",style: TextStyle(fontSize: screenAwareSize(18.9, context),color: Colors.black),),
        leading: InkResponse(
            onTap: ()=>print("Menu"),
                  child: Icon(
            Icons.menu,
            size: 20.0,
            color: Colors.black,
            ),
        ),
        actions: <Widget>[
          Stack(
            children: <Widget>[
              Padding(
            padding: const EdgeInsets.only(top: 12.0,left:20.0),
            child: InkResponse(
                onTap: ()=>Navigator.push(context,MaterialPageRoute(builder: (context)=>CartScreen())),
                      child: Icon(
                Icons.shopping_basket,
                size: 25.0,
                color: Colors.black,
                ),
            ),
        ),

        Positioned(
          bottom: 4.0,
          right: 0.00,
          child: Container(
            height: 20.0,
            width: 20.0,
            color: Colors.orange,
            // decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
            child: Center(
              child: Text("5",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
            ),
          ),
        )
            ],
          ),
        Padding(
          padding: const EdgeInsets.only(left:20.0,right: 20.0),
          child: InkResponse(
              onTap: ()=>print("Search"),
                    child: Icon(
              Icons.search,
              size: 25.0,
              color: Colors.black,
              ),
          ),
        ),

        ],
      ),
      body: ListView(
        children: <Widget>[
          Stack(
      children: <Widget>[
       
       Container(
        child: CarouselSlider(
          autoPlay: true,
          items: _list.map((m){

              return Container(
              // margin: EdgeInsets.all(5.0),
              child: Image.asset(
                m,
                fit: BoxFit.cover,
                width:MediaQuery.of(context).size.width,
              ),
            );

          }).toList(),
          ),
       )

      ],
),
SizedBox(height: 15.0,),
ProductCarouselFirst(
            title: 'Adidas',
            products: products,
          ),
ProductCarouselFirst(
            title: 'Nike',
            products: books,
          ),
        ],
      ),
    );
  }
}