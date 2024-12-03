import 'package:flutter/material.dart';

class PlannedTripPage extends StatelessWidget {
  const PlannedTripPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pending Plans'),
        backgroundColor: Colors.teal,  // You can choose any color that fits your theme
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: 3, // You can adjust this if you have more plans to display
          itemBuilder: (context, index) {
            return Card(
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.all(16.0),
                title: Text(
                  _getTripTitle(index),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                ),
                subtitle: Text(
                  'Date: ${_getTripDate(index)}',
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked, // Position the button at the bottom center
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 20.0), // Add some space from the bottom
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, '/create_plan'); // Navigate to CreatePlanPage
          },
          backgroundColor: Colors.teal,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }

  // Function to get the title of the trip based on index
  String _getTripTitle(int index) {
    switch (index) {
      case 0:
        return 'Beach';
      case 1:
        return 'Cultural Tour';
      case 2:
        return 'Mountain Trip';
      default:
        return 'Trip';
    }
  }

  // Function to get the date of the trip based on index
  String _getTripDate(int index) {
    switch (index) {
      case 0:
        return '2024-12-01';
      case 1:
        return '2024-12-05';
      case 2:
        return '2024-12-10';
      default:
        return 'TBD';
    }
  }
}
