import 'package:flutquiz/centered_text.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          key: const Key('quiz-logo'),
          'assets/images/quiz-logo.png',
          width: 300,
        ), // Image.asset
        const SizedBox(height: 60),
        const CenteredText('Learn Flutter the fun way!'),
        const SizedBox(height: 10),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color.fromARGB(255, 73, 30, 190),
              width: 3,
            ),
          ),
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: TextButton(
            onPressed: () => {},
            child: Text(
              "Start Quiz",
              style: TextStyle(
                color: Color.fromARGB(255, 240, 237, 238),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
