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
  Widget? activeScreen;
  QuestionsScreen? questionsScreen;
  SplashScreen? splashScreen;

  @override
  void initState() {
    super.initState();
    questionsScreen = QuestionsScreen(setScreen, key: Key('questions-screen'));
    splashScreen = SplashScreen(setScreen, key: Key('splash-screen'));
    activeScreen = splashScreen;
  }

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
      child: Center(child: activeScreen),
    );
  }

  void setScreen(QuizScreen whichScreen) {
    if (whichScreen == QuizScreen.questions) {
      _setChild(questionsScreen);
    } else if (whichScreen == QuizScreen.splash) {
      _setChild(splashScreen);
    }
  }

  void _setChild(Widget? childScreen) {
    setState(() {
      activeScreen = childScreen;
    });
  }
}
