// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class AHPQuestionPage extends StatefulWidget {
  final int questionIndex;
  final List<Map<String, String>>
      criteriaPairs; // List of multiple criterion pairs for the current question
  final VoidCallback onNext;
  final Function(String, String, int) onSave;

  const AHPQuestionPage({
    Key? key,
    required this.questionIndex,
    required this.criteriaPairs,
    required this.onNext,
    required this.onSave,
  }) : super(key: key);

  @override
  _AHPQuestionPageState createState() => _AHPQuestionPageState();
}

class _AHPQuestionPageState extends State<AHPQuestionPage> {
  int _selectedImportance = 1; // Default importance level
  int _currentPairIndex = 0; // Track which pair of criteria we are showing

  void _saveAndNext() {
    // Save the current importance value for the current pair of criteria
    widget.onSave(
      widget.criteriaPairs[_currentPairIndex]['criterion1']!,
      widget.criteriaPairs[_currentPairIndex]['criterion2']!,
      _selectedImportance,
    );

    // Move to the next pair or finish if we've reached the last pair
    if (_currentPairIndex < widget.criteriaPairs.length - 1) {
      setState(() {
        _currentPairIndex++;
        _selectedImportance = 5; // Reset the slider for the next pair
      });
    } else {
      // All pairs are done, move to the next screen
      widget.onNext();
    }
  }

  @override
  Widget build(BuildContext context) {
    final pair = widget.criteriaPairs[_currentPairIndex];

    return Scaffold(
      appBar: AppBar(
        title: Text(
            'AHP Question ${widget.questionIndex}/12'), // Update here to reflect 12 questions
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Click the criterion which is more important to you to input your score:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(pair['criterion1']!),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(pair['criterion2']!),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Text(
              'Select the importance level:',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            Slider(
              value: _selectedImportance.toDouble(),
              min: 1,
              max: 9,
              divisions: 8,
              label: _selectedImportance.toString(),
              onChanged: (value) {
                setState(() {
                  _selectedImportance = value.toInt();
                });
              },
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _saveAndNext,
              child: const Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}
