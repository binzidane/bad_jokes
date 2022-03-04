import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final Function(String) changeJokeIndex;
  Buttons({required this.changeJokeIndex});
  var colorbutton = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
          child: FloatingActionButton(
            onPressed: () {
              changeJokeIndex('prev');
            },
            child: Icon(
              Icons.arrow_left_rounded,
              size: 60,
            ),
            backgroundColor: colorbutton,
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
          child: FloatingActionButton(
            onPressed: () {
              changeJokeIndex('next');
            },
            child: Icon(
              Icons.arrow_right_rounded,
              size: 60,
            ),
            backgroundColor: colorbutton,
          ),
        ),
      ],
    );
  }
}
