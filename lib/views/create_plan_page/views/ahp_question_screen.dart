import 'package:flutter/material.dart';

class AHPQuestionPage extends StatefulWidget {
  final int questionIndex;
  final String criterion1;
  final String criterion2;
  final VoidCallback onNext;

  const AHPQuestionPage({
    Key? key,
    required this.questionIndex,
    required this.criterion1,
    required this.criterion2,
    required this.onNext,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _AHPQuestionPageState createState() => _AHPQuestionPageState();
}

class _AHPQuestionPageState extends State<AHPQuestionPage> {
  int _selectedImportance = 5; // Default importance level

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AHP Question ${widget.questionIndex}/4'),
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
                    child: Text(widget.criterion1),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(widget.criterion2),
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
              onPressed: widget.onNext,
              child: const Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}
