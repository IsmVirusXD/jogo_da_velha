import 'package:flutter/material.dart';
import '../components/buttons.dart';
import 'game_page.dart';
import 'history_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
          child: SizedBox(
              width: 300.0,
              height: 600.0,
              child: Column(children: <Widget>[
                const SizedBox(width: 300.0, height: 20.0),
                SizedBox(
                    width: 300.0,
                    height: 300.0,
                    child: FittedBox(
                      fit: BoxFit.fill,
                      child: Image.asset('assets/logo.png'),
                    )),
                const SizedBox(width: 300.0, height: 40.0),
                SizedBox(
                  width: 300.0,
                  height: 100.0,
                  child: GestureDetector(
                      child: const ButtonsIniciais(
                          bgcolor: Color.fromRGBO(206, 43, 133, 1),
                          text: "New Game"),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const GamePage()));
                      }),
                ),
                const SizedBox(width: 300.0, height: 20.0),
                SizedBox(
                  width: 300.0,
                  height: 100.0,
                  child: GestureDetector(
                      child: const ButtonsIniciais(
                          bgcolor: Color.fromRGBO(206, 43, 133, 1),
                          text: "History"),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const HistoryPage()));
                      }),
                )
              ]))),
    );
  }
}
