import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
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

  void _saveAndNext() async {
    // Collect data for the current set
    List<Map<String, dynamic>> ahpData = [];
    for (int i = 0; i < 3; i++) {
      String criterion1 = criteriaSets[_currentSetIndex][i]['criterion1']!;
      String criterion2 = criteriaSets[_currentSetIndex][i]['criterion2']!;
      int sliderValue = _sliderValues[_currentSetIndex * 3 + i];

      ahpData.add({
        'criterion1': criterion1,
        'criterion2': criterion2,
        'importance': sliderValue,
      });
    }

    try {
      // Send the data to the API
      final token =
          await _getAuthToken(); // Replace with your method to get the token
      final response = await Dio().post(
        'https://balitripapi.onrender.com/ahp/rate-multiple', // Replace with your AHP API endpoint
        options: Options(
          headers: {
            'Authorization': 'Bearer $token',
          },
        ),
        data: {
          'ahp_data': ahpData,
        },
      );

      if (response.statusCode == 201) {
        // Handle the response, proceed to next screen
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
      } else {
        // Handle error response
        print('Error: ${response.data}');
        _showErrorDialog('Server Error: ${response.data}');
      }
    } catch (e) {
      // Handle any errors (e.g., network issues, etc.)
      print('Error: $e');
      _showErrorDialog(
          'Network Error: Please check your internet connection or try again later.');
    }
  }

  Future<String> _getAuthToken() async {
    // Replace with your logic to retrieve the token (e.g., from shared preferences, etc.)
    return 'your-auth-token'; // Replace this with actual token retrieval logic
  }

  void _goBack() {
    if (_currentSetIndex > 0) {
      setState(() {
        _currentSetIndex--;
      });
    }
  }

  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Error'),
          content: Text(message),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
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
