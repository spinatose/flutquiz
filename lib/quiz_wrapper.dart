import 'package:flutquiz/models/data/questions.dart';
import 'package:flutquiz/questions_screen.dart';
import 'package:flutquiz/results_screen.dart';
import 'package:flutquiz/splash_screen.dart';
import 'package:flutter/material.dart';

enum QuizScreen { splash, questions, results }

class QuizWrapper extends StatefulWidget {
  final List<Color> gradientColors;

  const QuizWrapper({super.key, required this.gradientColors});

  @override
  State<QuizWrapper> createState() => _QuizWrapperState();
}

class _QuizWrapperState extends State<QuizWrapper> {
  final List<String> selectedAnswers = [];
  QuizScreen activeScreen = QuizScreen.splash;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: widget.gradientColors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(child: getActiveScreen()),
    );
  }

  Widget getActiveScreen() {
    switch (activeScreen) {
      case QuizScreen.splash:
        selectedAnswers.clear(); // Reset selected answers when starting a new quiz
        return SplashScreen(setScreen);
      case QuizScreen.questions:
        return QuestionsScreen(setScreen, chooseAnswer);
      case QuizScreen.results:
        final List<String> correctAnswers = questions.map((q) => q.correctAnswer).toList();
        return ResultsScreen(setScreen, selectedAnswers, correctAnswers);
    }
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      
      // All questions answered, reset for next round
      setState(() {
        activeScreen = QuizScreen.results;
      });
    }
  }

  void setScreen(QuizScreen whichScreen) {
    setState(() {
      if (whichScreen == QuizScreen.questions) {
        activeScreen = QuizScreen.questions;
      } else if (whichScreen == QuizScreen.splash) {
        activeScreen = QuizScreen.splash;
      } else if (whichScreen == QuizScreen.results) {
        activeScreen = QuizScreen.results;
      }
    });
  }
}
