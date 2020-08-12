import 'package:flutter/material.dart';
import 'package:tiles_of_chance/tiles.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Container(
          child: CustomTiles(),
      ),
    );
  }
}

