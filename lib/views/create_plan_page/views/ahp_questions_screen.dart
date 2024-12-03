import 'package:flutter/material.dart';
import 'ahp_question_page.dart';
import 'summary_screen.dart';
import '../views/models/recommendation.dart';

class AHPQuestionsScreen extends StatefulWidget {
  const AHPQuestionsScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AHPQuestionsScreenState createState() => _AHPQuestionsScreenState();
}

class _AHPQuestionsScreenState extends State<AHPQuestionsScreen> {
  int _currentQuestionIndex = 0;

  // List of questions with criteria pairs
  final List<Map<String, String>> _questions = [
    {'criterion1': 'Attraction', 'criterion2': 'Tourist Activities'},
    {'criterion1': 'Tourist Activities', 'criterion2': 'Facility'},
    {'criterion1': 'Facility', 'criterion2': 'Accessibility'},
    {'criterion1': 'Attraction', 'criterion2': 'Accessibility'},
  ];

  void _nextQuestion() {
    setState(() {
      if (_currentQuestionIndex < _questions.length - 1) {
        _currentQuestionIndex++;
      } else {
        // Navigate to summary or save results when done
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const SummaryScreen(recommendations: [], responses: [],)),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return AHPQuestionPage(
      questionIndex: _currentQuestionIndex + 1,
      criterion1: _questions[_currentQuestionIndex]['criterion1']!,
      criterion2: _questions[_currentQuestionIndex]['criterion2']!,
      onNext: _nextQuestion,
      onFinished: (List<Recommendation> recommendations) {
        // You can handle the recommendations list here
        // Example: Navigate to the summary page with the recommendations data
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SummaryScreen(recommendations: recommendations, responses: const [],),
          ),
        );
      }, onSave: (selectedCriterion, importance) {  },
    );
  }
}
