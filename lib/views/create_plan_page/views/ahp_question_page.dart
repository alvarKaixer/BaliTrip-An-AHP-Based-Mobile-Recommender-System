import 'package:flutter/material.dart';
import 'package:music_recommender/views/create_plan_page/views/models/recommendation.dart';
// ignore: unused_import
import 'recommendation_page.dart'; // Import your RecommendationPage

class AHPQuestionPage extends StatefulWidget {
  final int questionIndex;
  final String criterion1;
  final String criterion2;
  final VoidCallback onNext;
  final Function(List<Recommendation>) onFinished;

  const AHPQuestionPage({
    Key? key,
    required this.questionIndex,
    required this.criterion1,
    required this.criterion2,
    required this.onNext,
    required this.onFinished,
    required Null Function(dynamic selectedCriterion, dynamic importance)
        onSave,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _AHPQuestionPageState createState() => _AHPQuestionPageState();
}

class _AHPQuestionPageState extends State<AHPQuestionPage> {
  String? _selectedCriterion;
  int _selectedImportance = 5; // Default importance level

  // Function to handle the "Next" button press
  void _handleNext() {
    if (_selectedCriterion != null) {
      // If it's the last question (question 4 or beyond)
      if (widget.questionIndex >= 4) {
        // Create recommendations based on user input (these should come from actual logic based on user preferences)
        final recommendations = [
          Recommendation(
            name: 'Isla Verde',
            location: 'Man-Iso, Balingasag, Misamis Oriental',
            entranceFee: 10,
          ),
          Recommendation(
            name: 'The Spot',
            location: 'Mandangao, Balingasag, Misamis Oriental',
            entranceFee: 0,
          ),
          // More dynamic recommendations can be added here
        ];

        // Save the recommendations when finished
        widget.onFinished(recommendations);

        // Pass the recommendations to the RecommendationPage
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RecommendationPage(
              recommendations: recommendations,
              remainingBudget: 500.0, // Example budget value
              preferredArea: "", // Example area preference
              recommendation: null,
              responses: const [], // You can pass actual responses if needed
            ),
          ),
        );
      } else {
        widget.onNext(); // Go to the next question
      }

      // Reset after progressing
      setState(() {
        _selectedCriterion = null;
        _selectedImportance = 5;
      });
    } else {
      // Show a snack bar if no criterion is selected
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please select a criterion first.'),
          duration: Duration(seconds: 2),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AHP Question ${widget.questionIndex}/4'),
        backgroundColor: const Color.fromRGBO(72, 111, 111, 1),
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
            // Criterion buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _selectedCriterion = widget.criterion1;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: _selectedCriterion == widget.criterion1
                          ? const Color.fromRGBO(72, 111, 111, 1)
                          : Colors.grey[300],
                    ),
                    child: Text(
                      widget.criterion1,
                      style: TextStyle(
                        color: _selectedCriterion == widget.criterion1
                            ? Colors.white
                            : Colors.black,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _selectedCriterion = widget.criterion2;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: _selectedCriterion == widget.criterion2
                          ? const Color.fromRGBO(72, 111, 111, 1)
                          : Colors.grey[300],
                    ),
                    child: Text(
                      widget.criterion2,
                      style: TextStyle(
                        color: _selectedCriterion == widget.criterion2
                            ? Colors.white
                            : Colors.black,
                      ),
                    ),
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
            // Slider for importance level
            Slider(
              value: _selectedImportance.toDouble(),
              min: 1,
              max: 9,
              divisions: 8,
              label: _selectedImportance.toString(),
              activeColor: const Color.fromRGBO(72, 111, 111, 1),
              onChanged: (value) {
                setState(() {
                  _selectedImportance = value.toInt();
                });
              },
            ),
            const SizedBox(height: 16),
            // "Next" button
            ElevatedButton(
              onPressed: _handleNext,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(72, 111, 111, 1),
              ),
              child: const Text(
                'Next',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RecommendationPage extends StatelessWidget {
  final List<Recommendation> recommendations;
  final double remainingBudget;
  final String preferredArea;
  final Recommendation? recommendation;
  final List responses;

  const RecommendationPage({
    Key? key,
    required this.recommendations,
    required this.remainingBudget,
    required this.preferredArea,
    required this.recommendation,
    required this.responses,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recommendations'),
        backgroundColor: const Color.fromRGBO(72, 111, 111, 1),
      ),
      body: ListView.builder(
        itemCount: recommendations.length,
        itemBuilder: (context, index) {
          final rec = recommendations[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: ListTile(
              title: Text(rec.name),
              subtitle:
                  Text('${rec.location} - Entrance Fee: \$${rec.entranceFee}'),
              trailing: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RecommendationDetailPage(
                        recommendation: rec,
                      ),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(72, 111, 111, 1),
                ),
                child: const Text('View Details'),
              ),
            ),
          );
        },
      ),
    );
  }
}

class RecommendationDetailPage extends StatelessWidget {
  final Recommendation recommendation;

  const RecommendationDetailPage({Key? key, required this.recommendation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recommendation.name),
        backgroundColor: const Color.fromRGBO(72, 111, 111, 1),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              recommendation.name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('Location: ${recommendation.location}'),
            Text('Entrance Fee: \$${recommendation.entranceFee}'),
            // More details here
          ],
        ),
      ),
    );
  }
}
