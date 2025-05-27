import 'package:flutquiz/questions_screen.dart';
import 'package:flutquiz/splash_screen.dart';
import 'package:flutter/material.dart';

enum QuizScreen { splash, questions }

class QuizWrapper extends StatefulWidget {
  final List<Color> gradientColors;

  QuizWrapper({super.key, required this.gradientColors});

  @override
  State<QuizWrapper> createState() => _QuizWrapperState();
}

class _QuizWrapperState extends State<QuizWrapper> {
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
      child: Center(child: (activeScreen == QuizScreen.questions)
          ? QuestionsScreen(setScreen)
          : SplashScreen(setScreen)),
    );
  }

  void setScreen(QuizScreen whichScreen) {
    setState(() {
      if (whichScreen == QuizScreen.questions) {
        activeScreen = QuizScreen.questions;
      } else if (whichScreen == QuizScreen.splash) {
        activeScreen = QuizScreen.splash;
      }
    });
  }
}
