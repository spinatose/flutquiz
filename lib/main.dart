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
            const SizedBox(height: 10),
                        Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.orange,
                  width: 3,
                ),
              ),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: TextButton(
                onPressed: () => {}, 
                child: Text(
                  "Start Quiz",
                  style: TextStyle(
                    color:  Color.fromARGB(255, 233, 147, 187),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )

          ]) ,
        ),
      ),
    ),
  );
}