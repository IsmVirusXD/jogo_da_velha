import 'package:flutter/material.dart';

class ButtonsIniciais extends StatelessWidget {
  final Color bgcolor;
  final Color colortext;
  final String text;

  const ButtonsIniciais({
    super.key,
    required this.bgcolor,
    this.colortext = Colors.white,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      height: 80.0,
      decoration: BoxDecoration(
          color: bgcolor,
          borderRadius: const BorderRadius.all(Radius.circular(100.0))),
      child: Center(
          child: Text(
        text,
        style: TextStyle(color: colortext, fontSize: 36, fontFamily: "Itim"),
      )),
    );
  }
}
