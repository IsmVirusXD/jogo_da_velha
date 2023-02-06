import 'package:flutter/material.dart';

class GameBoard extends StatelessWidget {
  const GameBoard({super.key});

  final double m = 5;
  final Color color = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Positioned(
          top: 40,
          bottom: 15,
          left: 15,
          right: 15,
          child: Container(width: 360, height: 360, color: Colors.black)),
      SizedBox(
          width: 380,
          height: 380,
          child: GridView.count(
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 3,
              children: [
                Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, m, m),
                    child: Container(color: color)),
                Padding(
                    padding: EdgeInsets.fromLTRB(m, 0, m, m),
                    child: Container(color: color)),
                Padding(
                    padding: EdgeInsets.fromLTRB(m, 0, 0, m),
                    child: Container(color: color)),
                Padding(
                    padding: EdgeInsets.fromLTRB(0, m, m, m),
                    child: Container(color: color)),
                Padding(
                    padding: EdgeInsets.fromLTRB(m, m, m, m),
                    child: Container(color: color)),
                Padding(
                    padding: EdgeInsets.fromLTRB(m, m, 0, m),
                    child: Container(color: color)),
                Padding(
                    padding: EdgeInsets.fromLTRB(0, m, m, 0),
                    child: Container(color: color)),
                Padding(
                    padding: EdgeInsets.fromLTRB(m, m, m, 0),
                    child: Container(color: color)),
                Padding(
                    padding: EdgeInsets.fromLTRB(m, m, 0, 0),
                    child: Container(color: color)),
              ])),
    ]);
  }
}
