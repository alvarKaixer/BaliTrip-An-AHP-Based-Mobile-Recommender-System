// views/widgets/recommendation_list.dart

import 'package:flutter/material.dart';
import '../models/recommendation.dart';

class RecommendationList extends StatelessWidget {
  final List<Recommendation> recommendations;

  const RecommendationList({Key? key, required this.recommendations}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: recommendations.length,
        itemBuilder: (context, index) {
          final recommendation = recommendations[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
              title: Text(
                recommendation.name,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    recommendation.location,
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          color: Colors.grey[600],
                        ),
                  ),
                  const SizedBox(height: 4.0),
                  Text(
                    'Entrance Fee: ₱${recommendation.entranceFee}',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.green[700],
                        ),
                  ),
                ],
              ),
              trailing: ElevatedButton(
                onPressed: () {
                  // Handle "View" button action, such as navigating to a details page
                  // For example: Navigator.push(context, MaterialPageRoute(builder: (context) => RecommendationDetailPage(recommendation: recommendation)));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(72, 111, 111, 1),
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: const Text('View'),
              ),
            ),
          );
        },
      ),
    );
  }
}
