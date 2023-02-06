import 'package:flutter/material.dart';
import '../components/upper_folder.dart';
import '../components/score.dart';
import '../components/gameboard.dart';

class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      const Expanded(
          flex: 1,
          child: UpperFolder(text: "Tic Tac Toe", bgcolor: Colors.pink)),
      Expanded(
        flex: 6,
        child: Container(
            width: 400,
            color: Colors.white,
            child: Column(children: const <Widget>[
              Scoreboard(),
              Padding(padding: EdgeInsets.all(15.0), child: GameBoard()),
              Text("Turn: X",
                  style: TextStyle(
                      color: Colors.black, fontSize: 50, fontFamily: "Itim"))
            ])),
      ),
      const Expanded(
          flex: 1, child: UpperFolder(text: "", bgcolor: Colors.pink)),
    ]);
  }
}
