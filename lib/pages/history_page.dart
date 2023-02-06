import 'package:flutter/material.dart';
import '../components/history_card.dart';
import '../components/upper_folder.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      const UpperFolder(text: "History", bgcolor: Colors.blue),
      Expanded(
          child: Container(
              color: Colors.white,
              child: Column(children: const <Widget>[
                //Trocar isso para uma Lista automatica
                SizedBox(width: 500, height: 30),
                Historycard.x(day: 03, month: 04, year: 2003, o: 4, x: 5),
                SizedBox(width: 500, height: 5),
                Historycard.o(day: 05, month: 07, year: 2003, o: 2, x: 1),
                SizedBox(width: 500, height: 5),
                Historycard.draw(day: 10, month: 12, year: 2003, o: 2, x: 2),
                SizedBox(width: 500, height: 5),
                Historycard.x(day: 01, month: 01, year: 2004, o: 1, x: 0),
                SizedBox(width: 500, height: 5),
                Historycard.o(day: 10, month: 12, year: 2003, o: 3, x: 2),
                SizedBox(width: 500, height: 5),
              ]))),
    ]);
  }
}
