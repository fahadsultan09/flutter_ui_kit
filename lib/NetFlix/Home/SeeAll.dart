import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_ui_kit/NetFlix/Home/NetflixUtils.dart';

import 'NetflixHome.dart';


class SeeAll extends StatefulWidget {
  @override
  _SeeAllState createState() => _SeeAllState();
}

class _SeeAllState extends State<SeeAll> {

  List netflix = movies + trending;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Container(
            child: new StaggeredGridView.countBuilder(
  crossAxisCount: 4,
  itemCount: netflix.length,
  itemBuilder: (BuildContext context, int index) => new Container(
      color: Colors.white,
      child: Image.asset(netflix[index]["img"],fit: BoxFit.cover,)
      ),
  staggeredTileBuilder: (int index) =>
      new StaggeredTile.count(2, index.isOdd ? 2 : 1),
  mainAxisSpacing: 5.0,
  crossAxisSpacing: 5.0,
),
          ),
    );
  }
}