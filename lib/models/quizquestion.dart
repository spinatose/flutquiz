class QuizQuestion {
  final String text;
  final List<String> answers;
  final String correctAnswer;

  const QuizQuestion({
    required this.text,
    required this.answers,
    required this.correctAnswer,
  });

  List<String> get shuffledAnswers {
    final shuffledAnswers = List.of(answers)..shuffle();
    return shuffledAnswers;
  }
}
