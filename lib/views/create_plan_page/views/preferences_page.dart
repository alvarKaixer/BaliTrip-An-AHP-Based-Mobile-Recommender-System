import 'package:flutter/material.dart';
import 'package:music_recommender/views/create_plan_page/views/ahp_questions_screen.dart'; // Import AHPQuestionsScreen
// ignore: unused_import
import 'package:music_recommender/views/bali_trip_screen/bali_trip_screen.dart';

class PreferencesPage extends StatefulWidget {
  const PreferencesPage({super.key});

  @override
  _PreferencesPageState createState() => _PreferencesPageState();
}

class _PreferencesPageState extends State<PreferencesPage> {
  final TextEditingController _budgetController = TextEditingController();
  String? _selectedOption = 'tourist'; // Default selected option

  void _handleNext() {
    if (_budgetController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please enter your budget.'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    // Proceed to AHP Questions Screen
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const AHPQuestionsScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 241, 247, 247),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: const Row(
          children: [
            Expanded(child: SizedBox()),
            Text(
              'BaliTrip',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(46, 79, 79, 1),
              ),
            ),
            Expanded(child: SizedBox()),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Preferences',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            // Budget Text Field
            TextField(
              controller: _budgetController,
              decoration: InputDecoration(
                labelText: 'Budget',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),

            // Radio buttons for Local Tourist Attraction or Local Dining
            const Text('Please choose one:'),
            const SizedBox(height: 10),
            RadioListTile<String>(
              title: const Text('Local Tourist Attraction'),
              value: 'tourist',
              groupValue: _selectedOption,
              onChanged: (value) {
                setState(() {
                  _selectedOption = value;
                });
              },
              activeColor: const Color.fromRGBO(
                  46, 79, 79, 1), // Green color for the radio button circle
            ),
            RadioListTile<String>(
              title: const Text('Local Dining'),
              value: 'dining',
              groupValue: _selectedOption,
              onChanged: (value) {
                setState(() {
                  _selectedOption = value;
                });
              },
              activeColor: const Color.fromRGBO(
                  46, 79, 79, 1), // Green color for the radio button circle
            ),
            const SizedBox(
                height: 20), // Adjusted space between radio options and buttons

            // Back and Next Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(46, 79, 79, 1),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 32, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context, {
                      'budget': _budgetController.text,
                      'selectedOption': _selectedOption,
                    });
                  },
                  child: const Text(
                    'BACK',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(46, 79, 79, 1),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 32, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: _handleNext,
                  child: const Text(
                    'NEXT',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
