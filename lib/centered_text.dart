import 'package:flutter/material.dart';

class CenteredText extends StatelessWidget {
  // This widget is used to center text on the screen.
  // It takes a string as input and displays it in the center of the screen.
  final String text;

  const CenteredText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: const TextStyle(fontSize: 20, color: Colors.white),
      ),
    );
  }
}