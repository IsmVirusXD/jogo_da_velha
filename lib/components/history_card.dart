import 'package:flutter/material.dart';

class Historycard extends StatelessWidget {
  final Color color;
  final int day, month, year;
  final int x;
  final int o;

  const Historycard.draw(
      {super.key,
      this.color = Colors.blue,
      required this.day,
      required this.month,
      required this.year,
      required this.x,
      required this.o});

  const Historycard.o(
      {super.key,
      this.color = Colors.orange,
      required this.day,
      required this.month,
      required this.year,
      required this.x,
      required this.o});

  const Historycard.x({
    super.key,
    this.color = Colors.pink,
    required this.day,
    required this.month,
    required this.year,
    required this.x,
    required this.o,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 100,
      child: Center(
          child: Card(
              color: color,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Text("$day/$month/$year"),
                    Row(children: <Widget>[
                      Expanded(
                          flex: 1,
                          child: Center(
                              child: Text("X - $x",
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 36,
                                      fontFamily: "Itim")))),
                      const Expanded(
                          flex: 1,
                          child: Center(
                              child: Text("Vs",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 36,
                                      fontFamily: "Itim")))),
                      Expanded(
                          flex: 1,
                          child: Center(
                              child: Text("O - $o",
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 36,
                                      fontFamily: "Itim"))))
                    ]),
                  ],
                ),
              ))),
    );
  }
}
