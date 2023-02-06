import 'package:flutter/material.dart';

class Scoreboard extends StatelessWidget {
  const Scoreboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 300,
        height: 100,
        decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(30.0),
              bottomLeft: Radius.circular(30.0),
            )),
        child: Column(children: <Widget>[
          const Center(
              child: Text("Score",
                  style: TextStyle(
                      color: Colors.white, fontSize: 30, fontFamily: "Itim"))),
          Row(children: const <Widget>[
            Expanded(
              flex: 1,
              child: Center(
                  child: Text("X - 0",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontFamily: "Itim"))),
            ),
            Expanded(
                flex: 1,
                child: Center(
                    child: Text("Vs",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontFamily: "Itim")))),
            Expanded(
              flex: 1,
              child: Center(
                  child: Text("O - 0",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontFamily: "Itim"))),
            ),
          ]),
        ]));
  }
}
