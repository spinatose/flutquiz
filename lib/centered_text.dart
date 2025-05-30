import 'package:flutter/material.dart';

class CenteredText extends StatelessWidget {
  // This widget is used to center text on the screen.
  // It takes a string as input and displays it in the center of the screen.
  final String text;
  final TextStyle? style;

  const CenteredText(this.text, {super.key, this.style});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: style ?? const TextStyle(fontSize: 20, color: Color.fromARGB(255, 233, 147, 187)),
      ),
    );
  }
}