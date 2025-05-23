import 'package:flutquiz/centered_text.dart';
import 'package:flutquiz/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
runApp(
    MaterialApp(
      home: Scaffold(
        // appBar: AppBar(title: const Text('¡Yahtzee!')),
        body: GradientContainer(
          gradientColors: [
            Color.fromARGB(255, 38, 16, 97),
            Color.fromARGB(255, 92, 40, 189),
          ],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Image.asset(key: const Key('quiz-logo'),
            'assets/images/quiz-logo.png',
            width: 300,
            ), // Image.asset
            const SizedBox(height: 60),
            const CenteredText('Learn Flutter the fun way!'),
          ]) ,
        ),
      ),
    ),
  );
}