import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  // This widget is used to create a gradient background for its child widget.
  // It takes a list of colors to create the gradient and a child widget to display on top of the gradient.
  final Widget child;
  final List<Color> gradientColors;

  const GradientContainer({super.key, required this.child, required this.gradientColors});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradientColors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(child: child), // Use the child property here
    );
  }
}