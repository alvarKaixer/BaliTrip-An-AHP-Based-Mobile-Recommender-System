import 'package:flutter/material.dart';
import 'models/recommendation.dart';
import 'widgets/recommendation_list.dart';

class RecommendationPage extends StatelessWidget {
  final List<Recommendation> recommendations;
  final double remainingBudget;

  const RecommendationPage({
    Key? key,
    required this.recommendations,
    required this.remainingBudget,
    required List<Map<String, dynamic>> responses,
    required recommendation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recommended Options'),
        backgroundColor: const Color.fromRGBO(72, 111, 111, 1),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Budget and Preferred Area Information
              _buildInfoText('Your Remaining Budget:',
                  '₱${remainingBudget.toStringAsFixed(2)}'),
              const SizedBox(height: 8),

              // Section Title
              _buildSectionTitle('Pick your recommendation:'),
              const SizedBox(height: 16),

              // Display Top Recommendation
              _buildSectionTitle('Top Recommendation:'),
              RecommendationList(
                recommendations: recommendations.take(1).toList(),
              ),

              const SizedBox(height: 16),

              // Display More Recommendations
              _buildSectionTitle('More Recommendations:'),
              RecommendationList(
                recommendations: recommendations.skip(1).toList(),
              ),

              // Back and Next buttons at the bottom
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildNavigationButton(context, 'Back', '/preferencePage',
                      const Color.fromRGBO(72, 111, 111, 1)),
                  _buildNavigationButton(context, 'Next', '/finishPage',
                      const Color.fromRGBO(72, 111, 111, 1),
                      textColor: Colors.black),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper Method to Build Info Text
  Widget _buildInfoText(String label, String value) {
    return Text(
      '$label $value',
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Color(0xFF2E4F4F),
      ),
    );
  }

  // Helper Method to Build Section Title
  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Color(0xFF2E4F4F),
      ),
    );
  }

  // Helper Method to Build Navigation Button
  Widget _buildNavigationButton(
      BuildContext context, String label, String route, Color backgroundColor,
      {Color textColor = Colors.white}) {
    return ElevatedButton(
      onPressed: () {
        // Navigate to the specified route
        Navigator.pushReplacementNamed(context, route);
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Text(
        label,
        style: TextStyle(color: textColor),
      ),
    );
  }
}
