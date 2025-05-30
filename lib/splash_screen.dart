import 'package:flutquiz/centered_text.dart';
import 'package:flutquiz/quiz_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen(this.setScreen, {super.key});

  final void Function(QuizScreen) setScreen;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          key: const Key('quiz-logo'),
          'assets/images/quiz-logo.png',
          width: 300,
          color: const Color.fromARGB(125, 255, 255, 255),
        ),
        const SizedBox(height: 60),
        CenteredText('Learn Flutter the fun way!', style: GoogleFonts.aBeeZee(
              color: Color.fromARGB(255, 233, 147, 187),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),),
        const SizedBox(height: 10),
        OutlinedButton.icon(
          onPressed: () {
            setScreen(QuizScreen.questions);
          },
          style: OutlinedButton.styleFrom(
            foregroundColor: const Color.fromARGB(255, 240, 237, 238),
            side: const BorderSide(
              color: Color.fromARGB(255, 41, 4, 100),
              width: 2,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
            ),
          ),
          icon: Icon(
            Icons.arrow_right_alt,
            size: 24,
            color: const Color.fromARGB(255, 240, 237, 238),
          ),
          label: const Text(
            "Start Quiz",
            style: TextStyle(
              color: Color.fromARGB(255, 240, 237, 238),
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
