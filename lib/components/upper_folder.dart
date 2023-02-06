import 'package:flutter/material.dart';

class UpperFolder extends StatelessWidget {
  final String text;
  final Color bgcolor;

  const UpperFolder({super.key, required this.text, required this.bgcolor});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 500,
        height: 140,
        color: bgcolor,
        child: Center(
            child: Text(text,
                style: const TextStyle(
                    color: Colors.white, fontSize: 36, fontFamily: "Itim"))));
  }
}
