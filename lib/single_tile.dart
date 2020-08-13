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
  Function(bool) callback;

  SingleTile({
    this.rowIndex,
    this.columnIndex,
    this.defaultColor,
    this.pressedColor,
    this.monsterRow,
    this.monsterCol,
    this.monsterFound,
    this.callback
  });

  @override
  _SingleTileState createState() => _SingleTileState();
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

  @override
  Widget build(BuildContext context) {

    return Expanded(
        child: InkWell(
          child: Ink(
            decoration: BoxDecoration(
              color: _tapped ? widget.pressedColor : widget.defaultColor,
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
