import 'package:flutquiz/centered_text.dart';
import 'package:flutquiz/quiz_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(this.setScreen, this.selectedAnswers, this.correctAnswers, {super.key});
  final List<String> selectedAnswers;
  final List<String> correctAnswers; // This should be replaced with actual correct answers
  final int correctCount = 0; // This should be calculated based on selectedAnswers and correctAnswers
  final void Function(QuizScreen) setScreen;

  @override
  Widget build(BuildContext context) {
    final int correctCount = List.generate(selectedAnswers.length, (i) => i)
      .where((i) => i < correctAnswers.length && selectedAnswers[i] == correctAnswers[i])
      .length;

    return Container(
        padding: const EdgeInsets.all(40),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CenteredText(
            'You anaswered $correctCount out of ${correctAnswers.length} questions correctly!',
            style: GoogleFonts.aBeeZee(
              color: Color.fromARGB(255, 233, 147, 187),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30),

          CenteredText(
            'List of questions and answers...',
            style: GoogleFonts.aBeeZee(
              color: Color.fromARGB(255, 233, 147, 187),
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),


          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: () {
              setScreen(QuizScreen.splash);
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
              "Restart Quiz",
              style: TextStyle(
                color: Color.fromARGB(255, 240, 237, 238),
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
