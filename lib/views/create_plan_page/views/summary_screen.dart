import 'package:flutter/material.dart';
import 'package:music_recommender/views/create_plan_page/views/recommendation_page.dart'; // Adjust the import path as needed
import 'package:music_recommender/views/create_plan_page/views/models/recommendation.dart';

class SummaryScreen extends StatelessWidget {
  final List<Recommendation> recommendations;
  final List<Map<String, dynamic>> responses;

  const SummaryScreen({
    Key? key,
    required this.recommendations,
    required this.responses,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F8FB),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(46, 79, 79, 1),
        title: const Text(
          'AHP Summary',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Thank you for completing the questions!',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(46, 79, 79, 1),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              const Text(
                'Your preferences have been successfully saved.',
                style: TextStyle(fontSize: 16, color: Colors.black54),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(46, 79, 79, 1),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  // Navigate to the recommendation page
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RecommendationPage(
                        recommendations: recommendations,
                        responses: responses,
                        remainingBudget: 500,
                        recommendation:
                            null, // Make sure to replace this with actual value
                        // Make sure to replace with actual data if needed
                      ),
                    ),
                  );
                },
                child: const Text(
                  'NEXT',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
