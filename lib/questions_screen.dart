import 'package:flutquiz/centered_text.dart';
import 'package:flutquiz/quiz_wrapper.dart';
import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CenteredText('Question 1: What is Flutter?'),
        const SizedBox(height: 10),
        OutlinedButton.icon(
          onPressed: () {
                        // Notify the parent (QuizWrapper) to show the QuestionsScreen
            if (context.findAncestorStateOfType<State<QuizWrapper>>() != null) {
              (context.findAncestorStateOfType<State<QuizWrapper>>() as dynamic)
                .setState(() {
              // Assuming QuizWrapper has a variable to track the current screen
              // and a method or logic to switch to QuestionsScreen
              (context.findAncestorStateOfType<State<QuizWrapper>>() as dynamic)
                .setScreen(
                  QuizScreen.splash,
                );
              });
            }
          },
          style: OutlinedButton.styleFrom(
            foregroundColor: const Color.fromARGB(255, 240, 237, 238),
            side: const BorderSide(
              color: Color.fromARGB(255, 41, 4, 100),
              width: 2,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
            ),
          ),
          icon: Icon(Icons.arrow_right_alt, size: 24, color: const Color.fromARGB(255, 240, 237, 238)),
          label: const Text(
            "Answer",
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
