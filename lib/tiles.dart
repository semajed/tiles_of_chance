import 'package:flutter/material.dart';
import 'package:tiles_of_chance/single_tile.dart';
import 'dart:math';

class CustomTiles extends StatefulWidget {

  @override
  _CustomTilesState createState() => _CustomTilesState();
}

int generateIndex(String type){
  Random rand = new Random();
  int num = type == "row" ? rand.nextInt(5) : rand.nextInt(4);
  if(num == 0) {num = num + 1;}
  print(num);
  return num;
}

class _CustomTilesState extends State<CustomTiles> {

  int _monsterRowLocation = generateIndex("row");
  int _monsterColLocation = generateIndex("col");
  bool _monsterFound = false;
  Color _monsterFoundColor = Colors.green;

  callback(bool found){
    setState(() {
      _monsterFound = found;
      print(_monsterFound);
    });
  }

  void reset(){
    setState(() {
      _monsterFound = false;
      _monsterRowLocation = generateIndex("row");
      _monsterColLocation = generateIndex("col");
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Find the bug!"),
      ),
      body:
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new RaisedButton(
                  child: Text("Reset"),
                  textColor: Colors.white,
                  color: Colors.blue,
                  onPressed: reset,
                ),
              ],
            ),
            Row(
                children: [
                  SingleTile(
                      rowIndex: 1,
                      columnIndex:1,
                      monsterRow: _monsterRowLocation,
                      monsterCol: _monsterColLocation,
                      defaultColor: _monsterFound ? _monsterFoundColor : Colors.blue,
                      pressedColor: _monsterFound ? _monsterFoundColor : Colors.red,
                      monsterFound: _monsterFound,
                      callback: callback),
                  SingleTile(
                      rowIndex: 1,
                      columnIndex:2,
                      monsterRow: _monsterRowLocation,
                      monsterCol: _monsterColLocation,
                      defaultColor: _monsterFound ? _monsterFoundColor : Colors.blue,
                      pressedColor: _monsterFound ? _monsterFoundColor : Colors.red,
                      monsterFound: _monsterFound,
                      callback: callback),
                  SingleTile(
                      rowIndex: 1,
                      columnIndex:3,
                      monsterRow: _monsterRowLocation,
                      monsterCol: _monsterColLocation,
                      defaultColor: _monsterFound ? _monsterFoundColor : Colors.blue,
                      pressedColor: _monsterFound ? _monsterFoundColor : Colors.red,
                      monsterFound: _monsterFound,
                      callback: callback),
                ],
            ),
            Row(
              children: [
                SingleTile(
                    rowIndex: 2,
                    columnIndex:1,
                    monsterRow: _monsterRowLocation,
                    monsterCol: _monsterColLocation,
                    defaultColor: _monsterFound ? _monsterFoundColor : Colors.blue,
                    pressedColor: _monsterFound ? _monsterFoundColor : Colors.red,
                    monsterFound: _monsterFound,
                    callback: callback),
                SingleTile(
                    rowIndex: 2,
                    columnIndex:2,
                    monsterRow: _monsterRowLocation,
                    monsterCol: _monsterColLocation,
                    defaultColor: _monsterFound ? _monsterFoundColor : Colors.blue,
                    pressedColor: _monsterFound ? _monsterFoundColor : Colors.red,
                    monsterFound: _monsterFound,
                    callback: callback),
                SingleTile(
                    rowIndex: 2,
                    columnIndex:3,
                    monsterRow: _monsterRowLocation,
                    monsterCol: _monsterColLocation,
                    defaultColor: _monsterFound ? _monsterFoundColor : Colors.blue,
                    pressedColor: _monsterFound ? _monsterFoundColor : Colors.red,
                    monsterFound: _monsterFound,
                    callback: callback),
              ],
            ),
            Row(
              children: [
                SingleTile(
                    rowIndex: 3,
                    columnIndex:1,
                    monsterRow: _monsterRowLocation,
                    monsterCol: _monsterColLocation,
                    defaultColor: _monsterFound ? _monsterFoundColor : Colors.blue,
                    pressedColor: _monsterFound ? _monsterFoundColor : Colors.red,
                    monsterFound: _monsterFound,
                    callback: callback),
                SingleTile(
                    rowIndex: 3,
                    columnIndex:2,
                    monsterRow: _monsterRowLocation,
                    monsterCol: _monsterColLocation,
                    defaultColor: _monsterFound ? _monsterFoundColor : Colors.blue,
                    pressedColor: _monsterFound ? _monsterFoundColor : Colors.red,
                    monsterFound: _monsterFound,
                    callback: callback),
                SingleTile(
                    rowIndex: 3,
                    columnIndex:3,
                    monsterRow: _monsterRowLocation,
                    monsterCol: _monsterColLocation,
                    defaultColor: _monsterFound ? _monsterFoundColor : Colors.blue,
                    pressedColor: _monsterFound ? _monsterFoundColor : Colors.red,
                    monsterFound: _monsterFound,
                    callback: callback),
              ],
            ),
            Row(
              children: [
                SingleTile(
                    rowIndex: 4,
                    columnIndex:1,
                    monsterRow: _monsterRowLocation,
                    monsterCol: _monsterColLocation,
                    defaultColor: _monsterFound ? _monsterFoundColor : Colors.blue,
                    pressedColor: _monsterFound ? _monsterFoundColor : Colors.red,
                    monsterFound: _monsterFound,
                    callback: callback),
                SingleTile(
                    rowIndex: 4,
                    columnIndex:2,
                    monsterRow: _monsterRowLocation,
                    monsterCol: _monsterColLocation,
                    defaultColor: _monsterFound ? _monsterFoundColor : Colors.blue,
                    pressedColor: _monsterFound ? _monsterFoundColor : Colors.red,
                    monsterFound: _monsterFound,
                    callback: callback),
                SingleTile(
                    rowIndex: 4,
                    columnIndex:3,
                    monsterRow: _monsterRowLocation,
                    monsterCol: _monsterColLocation,
                    defaultColor: _monsterFound ? _monsterFoundColor : Colors.blue,
                    pressedColor: _monsterFound ? _monsterFoundColor : Colors.red,
                    monsterFound: _monsterFound,
                    callback: callback),
              ],
            ),
          ]
      ),
    );
  }

}

