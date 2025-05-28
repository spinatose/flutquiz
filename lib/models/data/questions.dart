import 'package:flutquiz/models/quizquestion.dart';

const questions = [
  QuizQuestion(
    text: 'What are the main building blocks of Flutter?',
    answers: ['Widgets', 'Components', 'Blocks', 'Functions'],
    correctAnswer: 'Widgets',
  ),
  QuizQuestion(
    text: 'How are Flutter UIs built?',
    answers: [
      'By combining widgets in code',
      'By combining widgets in a visual editor',
      'By defining widgets in config files',
      'By using XCode for iOS and Android Studio for Android',
    ],
    correctAnswer: 'By combining widgets in code',
  ),
  QuizQuestion(
    text: 'What\'s the purpose of a StatefulWidget?',
    answers: [
      'Update UI as data changes',
      'Update data as UI changes',
      'Ignore data changes',
      'Render UI that does not depend on data',
    ],
    correctAnswer: 'Update UI as data changes',
  ),
  QuizQuestion(
    text: 'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
    answers: [
      'StatelessWidget',
      'StatefulWidget',
      'Both are equally good',
      'None of the above',
    ],
    correctAnswer: 'StatelessWidget',
  ),
  QuizQuestion(
    text: 'What happens if you change data in a StatelessWidget?',
    answers: [
      'The UI is not updated',
      'The UI is updated',
      'The closest StatefulWidget is updated',
      'Any nested StatefulWidgets are updated',
    ],
    correctAnswer: 'The UI is not updated',
  ),
  QuizQuestion(
    text: 'How should you update data inside of StatefulWidgets?',
    answers: [
      'By calling setState()',
      'By calling updateData()',
      'By calling updateUI()',
      'By calling updateState()',
    ],
    correctAnswer: 'By calling setState()',
  ),
];
