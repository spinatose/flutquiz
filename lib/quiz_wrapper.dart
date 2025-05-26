import 'package:flutquiz/questions_screen.dart';
import 'package:flutquiz/splash_screen.dart';
import 'package:flutter/material.dart';

enum QuizScreen {
  splash,
  questions,
}

class QuizWrapper extends StatefulWidget {
  final Widget child;
  final List<Color> gradientColors;

  const QuizWrapper({super.key, this.child = const SplashScreen(key: Key('splash-screen')), required this.gradientColors});

  @override
  State<QuizWrapper> createState() => _QuizWrapperState();
}

class _QuizWrapperState extends State<QuizWrapper> {
  late Widget _child;
  final QuestionsScreen questionsScreen = QuestionsScreen(key: Key('questions-screen'));
  SplashScreen splashScreen = SplashScreen(key: Key('splash-screen'));  

  @override
  void initState() {
    super.initState();
    _child = widget.child;
    splashScreen = widget.child is SplashScreen
        ? widget.child as SplashScreen
        : SplashScreen(key: Key('splash-screen'));
  }

  @override
  void didUpdateWidget(covariant QuizWrapper oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.child != oldWidget.child) {
      _child = widget.child;
    }
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
      child: Center(child: _child),
    );
  }

  void setScreen(QuizScreen whichScreen) {
    if (whichScreen == QuizScreen.questions) {
      _setChild(questionsScreen);
    } else if (whichScreen == QuizScreen.splash) {
      _setChild(splashScreen);
    }
  }
  
  void _setChild(Widget childScreen) {
        setState(() {
      _child = childScreen;
    });
  }
}