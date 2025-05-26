import 'package:flutquiz/centered_text.dart';
import 'package:flutquiz/gradient_container.dart';
import 'package:flutquiz/splash_screen.dart';
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
          child: SplashScreen(
            key: const Key('splash-screen'), 
        ),
      ),
    ),
  ));
}