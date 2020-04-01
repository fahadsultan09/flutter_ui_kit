import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/NIKE/Home.dart';

class NikeWelcomScreen extends StatefulWidget {
  @override
  _NikeWelcomScreenState createState() => _NikeWelcomScreenState();
}

class _NikeWelcomScreenState extends State<NikeWelcomScreen> {
  @override
  void initState() { 
    super.initState();
        new Future.delayed(
        const Duration(seconds: 2),
        () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NIKEHome()),
            ));
  }
  HexColor _color = HexColor("343244");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _color,
      body: Container(
        
        child: Center(child: Image.asset("assets/images/tenor.gif")),
      ),
    );
  }
}
class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}