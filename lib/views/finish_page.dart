import 'package:flutter/material.dart';

// TripDetailsPage
class TripDetailsPage extends StatelessWidget {
  final String title;
  final String address;
  final String tripSummary;
  final List<String> paymentMethods;
  final String contactInfo;

  // Constructor to pass the details from the previous page
  const TripDetailsPage({super.key, 
    required this.title,
    required this.address,
    required this.tripSummary,
    required this.paymentMethods,
    required this.contactInfo,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trip Details'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title of the recommended place
            Text(
              title,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
            ),
            SizedBox(height: 10),
            
            // Address of the place
            Text(
              'Address: $address',
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
            ),
            SizedBox(height: 20),

            // Trip Summary
            Text(
              'Trip Summary:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(
              tripSummary,
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
            ),
            SizedBox(height: 20),

            // Payment Methods
            Text(
              'Payment Methods:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: paymentMethods.map((method) {
                return Row(
                  children: [
                    Icon(Icons.payment, color: Colors.teal),
                    SizedBox(width: 10),
                    Text(method, style: TextStyle(fontSize: 16)),
                  ],
                );
              }).toList(),
            ),
            SizedBox(height: 20),

            // Contact Information
            Text(
              'Contact Information:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(
              contactInfo,
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
            ),
            SizedBox(height: 40),

            // Finished button
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Navigate back to bali_trip_screen.dart
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'Finished',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
