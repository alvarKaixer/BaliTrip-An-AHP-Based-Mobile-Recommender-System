import 'package:flutter/material.dart';
import 'recommendation_page.dart'; // Import the RecommendationPage

class AHPQuestionsScreen extends StatefulWidget {
  const AHPQuestionsScreen({super.key});

  @override
  _AHPQuestionsScreenState createState() => _AHPQuestionsScreenState();
}

class _AHPQuestionsScreenState extends State<AHPQuestionsScreen> {
  static const Color darkForestGreen = Color.fromRGBO(46, 79, 79, 1);
  static const Color brightGreen = Color.fromRGBO(96, 186, 96, 1);

  final List<List<Map<String, String>>> criteriaSets = [
    [
      {'criterion1': 'Facilities', 'criterion2': 'Tourist Activities'},
      {'criterion1': 'Facilities', 'criterion2': 'Cost'},
      {
        'criterion1': 'Facilities',
        'criterion2': 'Accessibility and Loc. of Destinations'
      },
    ],
    [
      {'criterion1': 'Cost', 'criterion2': 'Tourist Activities'},
      {'criterion1': 'Cost', 'criterion2': 'Facilities'},
      {
        'criterion1': 'Cost',
        'criterion2': 'Accessibility and Loc. of Destinations'
      },
    ],
    [
      {
        'criterion1': 'Accessibility and Loc. of Destinations',
        'criterion2': 'Tourist Activities'
      },
      {
        'criterion1': 'Accessibility and Loc. of Destinations',
        'criterion2': 'Facilities'
      },
      {
        'criterion1': 'Accessibility and Loc. of Destinations',
        'criterion2': 'Cost'
      },
    ],
    [
      {'criterion1': 'Tourist Activities', 'criterion2': 'Facilities'},
      {'criterion1': 'Tourist Activities', 'criterion2': 'Cost'},
      {
        'criterion1': 'Tourist Activities',
        'criterion2': 'Accessibility and Loc. of Destinations'
      },
    ],
  ];

  final List<int> _sliderValues = List.filled(12, 5);
  int _currentSetIndex = 0;

  // Tracks selected button indices
  final Map<int, String?> selectedCriteria = {};

  void _saveAndNext() {
    if (_currentSetIndex < 3) {
      setState(() {
        _currentSetIndex++;
        selectedCriteria[_currentSetIndex] = null;
      });
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => RecommendationPage(
            recommendations: const [],
            remainingBudget: 1000.0,
            responses: const [],
            recommendation: "",
          ),
        ),
      );
    }
  }

  void _goBack() {
    if (_currentSetIndex > 0) {
      setState(() {
        _currentSetIndex--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> currentSet = criteriaSets[_currentSetIndex];

    return Scaffold(
      appBar: AppBar(
        title: Text('AHP Questions - Set ${_currentSetIndex + 1}/4'),
        leading: _currentSetIndex > 0
            ? IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: _goBack,
              )
            : null,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Please rate the following criterion pairs:',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 16),

            // Display criterion pairs and sliders
            for (int i = 0; i < 3; i++)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedCriteria[_currentSetIndex * 3 + i] =
                                currentSet[i]['criterion1'];
                          });
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          width: 140,
                          height: 50,
                          decoration: BoxDecoration(
                            color: selectedCriteria[_currentSetIndex * 3 + i] ==
                                    currentSet[i]['criterion1']
                                ? brightGreen
                                : darkForestGreen,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Text(
                              currentSet[i]['criterion1']!,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                  fontSize: 14, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedCriteria[_currentSetIndex * 3 + i] =
                                currentSet[i]['criterion2'];
                          });
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          width: 140,
                          height: 50,
                          decoration: BoxDecoration(
                            color: selectedCriteria[_currentSetIndex * 3 + i] ==
                                    currentSet[i]['criterion2']
                                ? brightGreen
                                : darkForestGreen,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Text(
                              currentSet[i]['criterion2']!,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                  fontSize: 14, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  const Text('Select the importance level for this pair:'),
                  Slider(
                    value: _sliderValues[_currentSetIndex * 3 + i].toDouble(),
                    min: 1,
                    max: 9,
                    divisions: 8,
                    label: _sliderValues[_currentSetIndex * 3 + i].toString(),
                    activeColor: darkForestGreen,
                    inactiveColor: darkForestGreen.withOpacity(0.3),
                    onChanged: (value) {
                      setState(() {
                        _sliderValues[_currentSetIndex * 3 + i] = value.toInt();
                      });
                    },
                  ),
                  const SizedBox(height: 16),
                ],
              ),

            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _saveAndNext,
              style: ElevatedButton.styleFrom(
                backgroundColor: darkForestGreen,
              ),
              child: const Text('Next Set'),
            ),
          ],
        ),
      ),
    );
  }
}
