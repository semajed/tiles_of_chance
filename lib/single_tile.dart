import 'package:flutter/material.dart';
import 'package:tiles_of_chance/tiles.dart';

class SingleTile extends StatefulWidget {

  Color defaultColor;
  Color pressedColor;
  int rowIndex;
  int columnIndex;
  int monsterRow;
  int monsterCol;
  bool monsterFound;
  bool tapped;
  Function(bool) callback;

  SingleTile({
    this.rowIndex,
    this.columnIndex,
    this.defaultColor,
    this.pressedColor,
    this.monsterRow,
    this.monsterCol,
    this.monsterFound,
    this.tapped,
    this.callback
  });

  @override
  _SingleTileState createState() => _SingleTileState();
}

bool determineTapped(bool monsterFound){

}

class _SingleTileState extends State<SingleTile> {
  bool _tapped = false;

  double setOpacity(bool monsterFound){
    if(widget.monsterFound && widget.monsterCol == widget.columnIndex && widget.monsterRow == widget.rowIndex){
      return 1.0;
    }else{
      return 0.0;
    }
  }

  Color setColor(bool monsterFound, bool tapped){
    Color tileColor;
    if(monsterFound == false && tapped == false){
      tileColor = Colors.blue;
    }else
    return Colors.green;
  }

  @override
  Widget build(BuildContext context) {

    return Expanded(
        child: InkWell(
          child: Ink(
            decoration: BoxDecoration(
              //color: _tapped ? widget.pressedColor : widget.defaultColor,
              color: setColor(widget.monsterFound, _tapped),
            ),
            height: 150.0,
            child: Opacity(
              //opacity: widget.monsterFound ? 1 : 0,
              opacity: setOpacity(widget.monsterFound),
              child: Icon(
                Icons.adb,
                color: Colors.white,
                size: 100.0
              ),
            )
          ),
          onTap: (){
            setState(() {
              if(widget.rowIndex == widget.monsterRow && widget.columnIndex == widget.monsterCol){
                print("YOU FOUND THE MONSTER!");
                widget.monsterFound = true;
                widget.callback(widget.monsterFound);
              }else{
                print("you did not find the monster...");
              }
              _tapped = !_tapped;
            });
          },
        )
    );
  }
}
